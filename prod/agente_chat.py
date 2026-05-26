from bd import integracaoBD
from classe_faiss import Faiss
from modoTeste import modoTeste

import random
import json
import ollama
from langchain_ollama import ChatOllama
from sentence_transformers import CrossEncoder
import pandas as pd

class agenteChat:
    
    def __init__(self, modelo: ChatOllama, modeloClass: str, modeloEmbedding: str, integracaoBd: integracaoBD):
        self.modeloClass: str = modeloClass
        self.modelo: ChatOllama = modelo
        self.modeloEmbedding = modeloEmbedding
        self.integracaoBd = integracaoBd
        self.ollamaClient = ollama.Client()
        self.faiss = Faiss()
    
    def defTipoResposta(self, msg:str): # Verifica que tipo de resposta deve ser feita
        
        promptClass = f"0=conversa normal 1=consulta sobre dados de endpoints e APIs\n\n{msg}\n\nResposta:"
        
        classificacao = ollama.generate(
            model=self.modeloClass,
            prompt=promptClass,
            options={
                'num_predict': 5, 
                'temperature': 0,
                'num_ctx': 512
            }
        )['response'].strip()
        
        id = "0" if "0" in classificacao else "1"
        
        return id
        
    def selecionaEndpoints(self, msg, embedMsg, listaFiltroApis:list, filtrarApis:bool, modoTeste:modoTeste = None):
                
        idsEndpoints = None
        
        # pega os ids mais similares de acordo com o FAISS
        if modoTeste is not None:
            idsEndpoints = self.faiss.ret_top_endpoints(embedMsg, modoTeste.listaFiltroApis, modoTeste.filtroApi)
        else:
            idsEndpoints = self.faiss.ret_top_endpoints(embedMsg, listaFiltroApis, filtrarApis)
        
        if not idsEndpoints:
            return []
        
        # formata o resultado para poder consultar no banco de dados
        ids_apenas = [id for id, _ in idsEndpoints]
        
        # retorna os dados completos do banco de dados para cada id do FAISS
        resultadosFaiss = self.integracaoBd.retEndpoints(ids_apenas)
        
        score_por_id = {id: score for id, score in idsEndpoints}
        resultadosFaiss_ordenados = sorted(
            resultadosFaiss,
            key=lambda e: score_por_id.get(e["id"], 0.0),
            reverse=True
        )
        return [(endpoint, score_por_id.get(endpoint["id"], 0.0)) for endpoint in resultadosFaiss_ordenados]
        
    def filtraEndpoints(self, endpoints_ranqueados):
        
        THRESHOLD = 0.3
        
        indices_selecionados = [
            endpoint
            for endpoint, score in endpoints_ranqueados
            if score > THRESHOLD
        ][:3]
        
        # Se todos são menores que o Threshold
        if not indices_selecionados and endpoints_ranqueados:
            melhor_endpoint = endpoints_ranqueados[0][0]
            indices_selecionados = [melhor_endpoint]

        return indices_selecionados
        
    def painelControleFiltrarApis(self):
        
        filtroAPI = input("Gostaria de filtrar por instituição? S/n")
        filtroAPI = filtroAPI.strip().lower()
        
        filtrarApis = False
        idsApis = None
        
        if filtroAPI in ["sim", "s"]:
            
            filtrarApis = True
            selecaoManual = input("Gostaria de seleciona-las manualmente? S/n")
            selecaoManual = selecaoManual.strip().lower()
            
            if selecaoManual in ["sim", "s"]:
                apis = self.integracaoBd.retApis()
                for api in apis:
                    print(f"{api.Id} - {api.Name}, {api.Description}")
                strNums = input("Digite os números das apis que você quer pesquisar, separados por vírgula (1,3,6)")
                
                idsApis = strNums.split(',')
            else:
                idsApis = [] # busca dinamica
                
        return filtrarApis, idsApis        
        
    def controleResposta (self, msg: str, modoTeste: modoTeste = None): # Centro de controle de execucao, gerencia todas as funcoes e dados nescessarios
        
        id = self.defTipoResposta(msg)

        if id == "0":
            self.respostaNatural(msg, modoTeste)
            return 0, [], [] # formato para teste (id, top5, finais)
        
        embedMsg = self.retEmbedMsg(msg) # gera o embedding da msg
        filtrarApis = False
        idsApis = None
        
        if modoTeste is None:
            filtrarApis, idsApis = self.painelControleFiltrarApis()
        
        top5Endpoints = self.selecionaEndpoints(msg, embedMsg, idsApis, filtrarApis, modoTeste)
        endpointsFinais = self.filtraEndpoints(top5Endpoints)
        
        if modoTeste is not None:
            return id, top5Endpoints, endpointsFinais
            
        self.explicacaoConsulta(endpointsFinais)
        
    def retEmbedMsg(self, msg:str): # Gera o embedding da msg do usuario
        
        msgUsuario = self.ollamaClient.embed(
            model=self.modeloEmbedding,
            input=msg
        )
        
        embedMsg = msgUsuario["embeddings"][0]
        
        return embedMsg
    
    def respostaNatural(self, msg:str, modoTeste:modoTeste = None): # resposta de um chatbot normal, sem RAG
        
        if modoTeste is None:
            resposta = self.modelo.invoke(msg).content
            print(f"Resposta Natural gerada: {resposta}")
    
    def explicacaoConsulta(self, resultados:list): #resposta que consulta os endpoints relevantes para a mensagem do usuario
        
        resposta = f"""Voce pode encontrar os dados desejados nessas fontes:"""
        
        for resultado in resultados:
            
            parametros = self.integracaoBd.retParametros(resultado["id"]) # passa o id do endpoint
            
            # Adiciona nome, link da api, link da documentacao e formato da resposta, respectivamente
            resposta += f"\n{resultado["nome"]}\nAPI: {resultado["url"]}\nDocumentacao: {resultado["documentacao"]}\nFormato da resposta: {resultado["tipo_resposta"]}\n"
            
            if parametros: # adiciona os parametros
                resposta += "Parametros: \n"
                
                for parametro in parametros:
                    resposta += f" - {parametro["Name"]}: {parametro["Description"]}\n"
                    
                resposta += "\n"
                
        print(resposta)
        
    def printRelatorio(self, erros, endpointsErrados, mapPerguntas, mapErrados, acertosTop5, endpointsTop5, mapTop5, acertosCompletos, endpointsCompletos):
        print("Relatorio", ("="*10))
        
        print(f"Erros na classificação do tipo resposta: {erros}")
        for endpoint in endpointsErrados:
            pergunta = mapPerguntas.get(endpoint, '')
            print(f"├───{endpoint}, {pergunta}")
            top5 = mapErrados.get(endpoint, 0)
            if top5 != 0:
               for id in top5:
                   print(f"    ├───{id}")
        print("")
        
        print(f"Endpoints encontrados apenas no top5: {acertosTop5}")
        for endpoint in endpointsTop5:
            pergunta = mapPerguntas.get(endpoint, '')
            print(f"├───{endpoint}, {pergunta}")
            top5 = mapTop5.get(endpoint, 0)
            if top5 != 0:
               for id in top5:
                   print(f"    ├───{id}")
        print("")
        
        print(f"Acertos completos: {acertosCompletos}")
        for endpoint in endpointsCompletos:
            print(f"├───{endpoint}")
        print("")
        
    def testeExecucao(self, quantidade:int, df: pd.DataFrame, modoTeste: modoTeste = modoTeste(True, False, [False])):
        
        with open("med/output.json", mode="r", encoding="utf-8") as f:
            perguntas = json.load(f)
        
        inicio = 1
        fim = 963

        numerosSorteados = random.sample(range(inicio, fim + 1), quantidade) if quantidade != fim else [int(k) for k in perguntas.keys()]
        
        filtroManual = modoTeste.listaFiltroApis[0]
        
        erros = 0
        acertosTop5 = 0
        acertosCompletos = 0
        
        errosNatural = 0
        acertosNatural = 0
        
        endpointsErrados = []
        endpointsTop5 = []
        endpointsCompletos = []
        
        mapTop5 = {}
        mapErrados = {}
        mapPerguntas = {}
        
        for num in numerosSorteados:
            
            chave = num
            pergunta = str(perguntas.get(str(chave), ""))
            
            if pergunta == "":
                continue
            
            mapPerguntas[chave] = pergunta
        
            if filtroManual:
                modoTeste.listaFiltroApis = self.integracaoBd.retApiEndpoint(num)
            else:
                modoTeste.listaFiltroApis = []
        
            id, top5, finais = self.controleResposta(pergunta, modoTeste=modoTeste)
            
            if chave > 913: # conversa normal
                if not id:
                    acertosNatural+=1
                    continue
                
                errosNatural+=1
                continue
            
            # consulta
            # considerado conversa normal
            if not id:
                erros+=1
                endpointsErrados.append(chave)
                continue
            
            # dentro da resposta final
            lista = []
            
            for endpoint in finais:
                lista.append(endpoint["id"])
            
            print(chave)
            print(lista)
            
            if chave in lista:
                endpointsCompletos.append(chave)
                acertosCompletos+=1
                continue
             
            # dentro do top 5
            lista = []
            
            for endpoint in top5:
                lista.append(endpoint[0]["id"]) 
            
            print(lista)
            
            if chave in lista:
                endpointsTop5.append(chave)
                mapTop5[chave] = top5
                acertosTop5+=1
                continue
            
            
            # fora do top 5
            erros+=1
            endpointsErrados.append(chave)
            mapErrados[chave] = top5
                    
        nova_linha = {
            "rerank": modoTeste.rerank,
            "filtroApi": modoTeste.filtroApi,
            "listaFiltroApis": filtroManual,
            "acertosCompletos": acertosCompletos,
            "acertosTop5": acertosTop5,
            "erros": erros,
            "totalTestado": quantidade,
            "acertosNatural": acertosNatural,
            "errosNatural": errosNatural
        }
        
        df = pd.concat([df, pd.DataFrame([nova_linha])], ignore_index=True)
        # self.printRelatorio(endpointsErrados, mapPerguntas, mapErrados, acertosTop5, endpointsTop5, mapTop5, acertosCompletos, endpointsCompletos)
        
        return df