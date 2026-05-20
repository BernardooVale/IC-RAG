from bd import integracaoBD
from classe_faiss import Faiss

import random
import json
import ollama
from langchain_ollama import ChatOllama
from sentence_transformers import CrossEncoder
import re

class agenteChat:
    
    def __init__(self, modelo: ChatOllama, modeloEmbedding: str, integracaoBd: integracaoBD):
        self.modelo: ChatOllama = modelo
        self.modeloEmbedding = modeloEmbedding
        self.integracaoBd = integracaoBd
        self.ollamaClient = ollama.Client()
        self.cross_encoder = CrossEncoder('cross-encoder/ms-marco-MiniLM-L-6-v2')
        self.faiss = Faiss()
        self.historicoMsgs = []
        
    def rerank(self, msg, resultadosFaiss):
        
        pares = [
            (msg, endpoint['texto'])
            for endpoint in resultadosFaiss
        ]
            
        # Calcular scores
        scores = self.cross_encoder.predict(pares)
        
        # Ranqueamento
        endpoints_com_score = list(zip(resultadosFaiss, scores))
        endpoints_ranqueados = sorted(
            endpoints_com_score,
            key=lambda x: x[1],
            reverse=True
        )
        
        return endpoints_ranqueados
        
    def selecionaEndpoints(self, msg, embedMsg, filtroApis:list, filtrarApis:bool):
        
        # pega os ids mais similares de acordo com o FAISS
        idsEndpoints = self.faiss.ret_top_endpoints(embedMsg, filtroApis, filtrarApis)
        
        if not idsEndpoints:
            return []
        
        # formata o resultado para poder consultar no banco de dados
        ids_formatados = (
            tuple(idsEndpoints) 
            if len(idsEndpoints) > 1 
            else f"({idsEndpoints[0]})"
        )
        
        # retorna os dados completos do banco de dados para cada id do FAISS
        resultadosFaiss = self.integracaoBd.retEndpoints(ids_formatados)
        
        return self.rerank(msg, resultadosFaiss)
        
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
        
    def controleResposta (self, msg:str, modoTeste:bool = False): # Centro de controle de execucao, gerencia todas as funcoes e dados nescessarios
        
        embedMsg = self.retEmbedMsg(msg) # gera o embedding da msg
        filtrarApis = False
        idsApis = None
        
        if not modoTeste:
            filtrarApis, idsApis = self.painelControleFiltrarApis()
        
        top5Endpoints = self.selecionaEndpoints(msg, embedMsg, idsApis, filtrarApis)
        endpointsFinais = self.filtraEndpoints(top5Endpoints)
        
        if modoTeste:
            return id, top5Endpoints, endpointsFinais
            
        self.explicacaoConsulta(endpointsFinais)
        
    def retEmbedMsg(self, msg:str): # Gera o embedding da msg do usuario
        
        #t1 = time.time()
        
        msgUsuario = self.ollamaClient.embed(
            model=self.modeloEmbedding,
            input=msg
        )
        
        embedMsg = msgUsuario["embeddings"][0]
        
        #print(f"Tempo funcao retEmbedMsg: {time.time() - t1}")
        
        return embedMsg
    
    def respostaNatural(self, msg:str): # resposta de um chatbot normal, sem RAG
        
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
                
        msgAtual = len(self.historicoMsgs) - 1
        self.historicoMsgs[msgAtual]["resposta"] = resposta
        
        print(resposta)
        
    def esclarecimento(self, msg):
        
        print("Qual dessas respostas você quer um esclarecimento")
        
        for i, msg in enumerate(self.historicoMsgs):
            print(f"({i}) - {msg["resposta"]}")
    
        resposta = input("\n")
        duvida = input("Qual a sua dúvida sobre essa resposta?\n")
        info = self.retInformaceosEndpoint()
        
        msg = f"""
        
        O usuário possuí essa dúvida: {duvida}
        
        Para essa informação: {resposta}
        """
        
        resposta = self.modelo.invoke(msg).content
        
        print(resposta)
        print("\n")
        
    def loopPerguntas(self, entrada):
        
        while entrada != 0:
            
            if entrada == 1:
                msg = input("Qual dado você esta procurando\n")
                msg = re.sub(r"[^a-zA-Z0-9\s]", "", msg)
                self.controleResposta(msg)
            else:
                self.esclarecimento(msg)
            
            entrada = input("O que você quer fazer: \n (1) Nova consulta \n (2) Esclarecimento de uma resposta \n (0) Sair \n")
        
    def initExecucao(self):
        
        entrada = input("O que você quer fazer: \n (1) Nova consulta \n (0) Sair \n")

        if entrada == 0:
            print("Fim")
            return
        
        entrada = re.sub(r"[^a-zA-Z0-9\s]", "", entrada)
        self.controleResposta(entrada)
        self.historicoMsgs.append({"entrada": entrada, "saida": ""})
        
        entrada = input("O que você quer fazer: \n (1) Nova consulta \n (2) Esclarecimento de uma resposta \n (0) Sair \n")
        self.loopPerguntas(entrada)
                
    def testeExecucao(self, quantidade:int):
        
        with open("med/teste_claude.json", mode="r", encoding="utf-8") as f:
            perguntas = json.load(f)
        
        inicio = 1
        fim = 912

        numerosSorteados = random.sample(range(inicio, fim + 1), quantidade)
        
        erros = 0
        acertosTop5 = 0
        acertosCompletos = 0
        
        endpointsErrados = []
        endpointsTop5 = []
        endpointsCompletos = []
        
        mapTop5 = {}
        mapErrados = {}
        mapPerguntas = {}
        
        for num in numerosSorteados:
            
            chave = num
            pergunta = str(perguntas.get(str(chave)))
            mapPerguntas[chave] = pergunta
        
            id, top5, finais = self.controleResposta(pergunta, modoTeste=True)
             
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