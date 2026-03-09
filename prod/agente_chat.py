from bd import integracaoBD
from classe_faiss import Faiss

import ast
import ollama
from langchain_ollama import ChatOllama
import re
from sentence_transformers import CrossEncoder

class agenteChat:
    
    def __init__(self, modelo: ChatOllama, modeloClass: str, modeloEmbedding: str, integracaoBd: integracaoBD):
        self.modeloClass: str = modeloClass
        self.modelo: ChatOllama = modelo
        self.modeloEmbedding = modeloEmbedding
        self.integracaoBd = integracaoBd
        self.ollamaClient = ollama.Client()
        self.cross_encoder = CrossEncoder('cross-encoder/ms-marco-MiniLM-L-6-v2')
        self.mapRespostas = {
            "0": self.respostaNatural,
            "1": self.explicacaoConsulta
        }
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
        
    def filtraEndpoints(self, msg, embedMsg):
        
        idsEndpoints = self.faiss.ret_top_endpoints(embedMsg)
        
        if not idsEndpoints:
            return []
        
        ids_formatados = (
            tuple(idsEndpoints) 
            if len(idsEndpoints) > 1 
            else f"({idsEndpoints[0]})"
        )
            
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
        
        # Threshold
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
        
    def controleResposta (self, msg:str): # Centro de controle de execucao, gerencia todas as funcoes e dados nescessarios
        
        id = self.defTipoResposta(msg)

        if id == "0":
            self.respostaNatural(msg)
            return
        
        embedMsg = self.retEmbedMsg(msg) # gera o embedding da msg
        endpointsFinais = self.filtraEndpoints(msg, embedMsg)
            
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