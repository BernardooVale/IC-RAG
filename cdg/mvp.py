from agente_bd import agenteBd
from agente_chat import agenteChat
from langchain_ollama import ChatOllama

# config inicial ================================================================================
def cofre():
    msgMestra = """
        Você agirá como um agente de decisão.
        Sua tarefa é escolher **apenas um número** de acordo com a mensagem do usuário.
        Números válidos:
        0 → Conversa normal
        1 → Consulta sobre agências bancárias

        IMPORTANTE: Responda **apenas com o número**, sem explicações.
    """

    modeloBd = ChatOllama(model="llama3.2:latest", base_url="http://localhost:11434")       # LLM proprio para escrita de consultas SQL
    modeloChat = ChatOllama(model="qwen2:7b", base_url="http://localhost:11434") # LLM de conversa

    agente_bd = agenteBd(modeloBd)
    agente_chat = agenteChat(modeloChat, agente_bd, msgMestra)

    entrada = "Boa tarde, tudo bem?"

    while not entrada.strip().lower().startswith("sair"):
        
        #
        # Talvez tenha que traduzir a entrada, mas teoricamente a LLM faz isso com maestria
        #
        
        agente_chat.controleResposta(entrada)
        
        entrada = input("Escreva sua pergunta: ") # proxima pergunta
        
    print("debug")
    
def testeBd():
    
    modeloBd = ChatOllama(model="llama3.2:latest", base_url="http://localhost:11434")
    agente_bd = agenteBd(modeloBd)

    agente_bd.controleConsulta("Please get me the data of the bank with this CNPJ 00000000/7686-42", "1")
    
cofre()