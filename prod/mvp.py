from agente_chat import agenteChat
from bd import integracaoBD

from langchain_ollama import ChatOllama
import re
import time

# config inicial ================================================================================

modeloChat = ChatOllama(model="gemma4:e2b", base_url="http://localhost:11434")        # LLM de conversa
modeloEmbedding = "embeddinggemma:latest"                                           # LLM para gerar embeddings

integracaoBd = integracaoBD()
agente_chat = agenteChat(modeloChat, modeloEmbedding, integracaoBd)

agente_chat.initExecucao()

# finalizacao do sistema ==========================================================================================

integracaoBd.fecharConexao()