from agente_chat import agenteChat
from bd import integracaoBD

from langchain_ollama import ChatOllama
import re
import time

# config inicial ================================================================================

modeloChat = ChatOllama(model="qwen2:7b", base_url="http://localhost:11434")        # LLM de conversa
modeloClass = "phi3:3.8b"                                                           # LLM para classificacao da conversa
modeloEmbedding = "embeddinggemma:latest"                                           # LLM para gerar embeddings

integracaoBd = integracaoBD()
agente_chat = agenteChat(modeloChat, modeloClass, modeloEmbedding, integracaoBd)

# sistema ============================================================================

entrada = input("Escreva sua pergunta: ")

while not entrada.strip().lower().startswith("sair"):
    
    entrada = re.sub(r"[^a-zA-Z0-9\s]", "", entrada)
    
    t1 = time.time()
    agente_chat.controleResposta(entrada)
    print(f"Tempo total: {time.time()  - t1}")
    
    entrada = input("Escreva sua pergunta: ")
    
print("Fim")
# finalizacao do sistema ==========================================================================================

integracaoBd.fecharConexao()