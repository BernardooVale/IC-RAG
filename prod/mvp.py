from agente_chat import agenteChat
from bd import integracaoBD

from langchain_ollama import ChatOllama
import re
import time

# config inicial ================================================================================

modeloChat = ChatOllama(model="gemma4:e4b", base_url="http://localhost:11434")        # LLM de conversa
modeloClass = "gemma4:e2b"                                                           # LLM para classificacao da conversa
modeloEmbedding = "embeddinggemma:latest"                                           # LLM para gerar embeddings

integracaoBd = integracaoBD()
agente_chat = agenteChat(modeloChat, modeloClass, modeloEmbedding, integracaoBd)

# sistema ============================================================================

entrada = input("Escreva sua pergunta: ")

while not entrada.strip().lower().startswith("sair"):
    
    entrada = re.sub(r"[^a-zA-Z0-9\s]", "", entrada)
    agente_chat.controleResposta(entrada)
    
    entrada = input("Escreva sua pergunta: ")
    
print("Fim")
# finalizacao do sistema ==========================================================================================

integracaoBd.fecharConexao()