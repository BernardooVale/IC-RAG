from bd import integracaoBD
from classe_faiss import Faiss

import random
import json
import ollama
from langchain_ollama import ChatOllama
from sentence_transformers import CrossEncoder

class agenteChat:
    
    def __init__(self, modelo: ChatOllama, modeloClass: str, modeloEmbedding: str, integracaoBd: integracaoBD):
        self.modeloClass: str = modeloClass
        self.modelo: ChatOllama = modelo
        self.modeloEmbedding = modeloEmbedding
        self.integracaoBd = integracaoBd
        self.ollamaClient = ollama.Client()
        self.cross_encoder = CrossEncoder('cross-encoder/ms-marco-MiniLM-L-6-v2')
        self.faiss = Faiss()
    
    def defTipoResposta(self, msg:str): # Verifica que tipo de resposta deve ser feita
        
        #t1 = time.time()
        
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
        
        #print(f"Tempo funcao defTipoResposta: {time.time() - t1}")
        
        return id
        
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
        
    def controleResposta (self, msg:str, modoTeste:bool = False): # Centro de controle de execucao, gerencia todas as funcoes e dados nescessarios
        
        id = self.defTipoResposta(msg)

        if id == "0":
            self.respostaNatural(msg)
            return 0, [], [] # formato para teste (id, top5, finais)
        
        embedMsg = self.retEmbedMsg(msg) # gera o embedding da msg
        idsApis = None
        filtrarApis = False
        
        if not modoTeste:
            
            filtroAPI = input("Gostaria de filtrar por instituição? S/n")
            filtroAPI = filtroAPI.strip().lower()
            
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
                
        print(resposta)
        
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
        
        for num in numerosSorteados:
            
            chave = str(num)
            pergunta = perguntas.get(chave)
        
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
            
            if chave in lista:
                endpointsCompletos.append(chave)
                acertosCompletos+=1
                continue
             
            # dentro do top 5
            lista = []
            
            for endpoint in top5:
                lista.append(endpoint["id"]) 
            
            if chave in lista:
                endpointsTop5.append(chave)
                acertosTop5+=1
                continue
                
            # fora do top 5
            erros+=1
            endpointsErrados.append(chave)
                    
        print("Relatorio", ("="*10))
        
        print(f"Erros na classificação do tipo resposta: {erros}")
        for endpoint in endpointsErrados:
            print(f"├───{endpoint}")
        print("")
        
        print(f"Endpoints encontrados apenas no top5: {acertosTop5}")
        for endpoint in endpointsTop5:
            print(f"├───{endpoint}")
        print("")
        
        print(f"Acertos completos: {acertosCompletos}")
        for endpoint in endpointsCompletos:
            print(f"├───{endpoint}")
        print("")