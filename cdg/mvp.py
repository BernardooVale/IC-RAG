from agente_bd import agenteBD
from agente_chat import agenteChat
from integracao_bd import integracaoBD

from langchain_ollama import ChatOllama
import re
from dotenv import load_dotenv
import os
import psycopg2

# conexao BD ====================================================================================

load_dotenv()
senha = os.getenv("SENHA_DB")

conexao = psycopg2.connect(
    host = "localhost",
    dbname = "postgres",
    user = "postgres",
    password=senha, # senha do banco de dados que vc criar
    port = 5433
)

# config inicial ================================================================================

modeloBd = ChatOllama(model="llama3.2:latest", base_url="http://localhost:11434")   # LLM proprio para escrita de consultas SQL
modeloChat = ChatOllama(model="qwen2:7b", base_url="http://localhost:11434")        # LLM de conversa
modeloEmbedding = "embeddinggemma:latest"                                           # LLM para gerar embeddings

integracaoBd = integracaoBD(conexao)
agente_bd = agenteBD(modeloBd, integracaoBd)
agente_chat = agenteChat(modeloChat, agente_bd, modeloEmbedding, integracaoBd)

# sistema ============================================================================

entrada = "Quantas agencias existem no estado de Sao Paulo?"

while not entrada.strip().lower().startswith("sair"):
    
    entrada = re.sub(r"[^a-zA-Z0-9\s]", "", entrada)
    
    agente_chat.controleResposta(entrada)
    
    entrada = input("Escreva sua pergunta: ") # proxima pergunta
    
print("debug")

# finalizacao do sistema ==========================================================================================
conexao.commit()

agente_chat.apagaTabelas()
integracaoBd.fecharCursor()
conexao.close()