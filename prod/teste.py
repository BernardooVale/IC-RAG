from agente_chat import agenteChat
from bd import integracaoBD

from langchain_ollama import ChatOllama

# config inicial ================================================================================

modeloChat = ChatOllama(model="qwen2:7b", base_url="http://localhost:11434")        # LLM de conversa
modeloClass = "phi3:3.8b"                                                           # LLM para classificacao da conversa
modeloEmbedding = "embeddinggemma:latest"                                           # LLM para gerar embeddings

bd = integracaoBD()
agente_chat = agenteChat(modeloChat, modeloClass, modeloEmbedding, bd)

# teste ============================================================================

agente_chat.testeExecucao(10)
bd.fecharConexao()