from integracao_bd import integracaoBD
from agente_bd import agenteBD

import ast
import ollama
from langchain_ollama import ChatOllama

class agenteChat:
    
    def __init__(self, modelo: ChatOllama, agenteBd: agenteBD, modeloEmbedding: str, integracaoBd: integracaoBD):
        self.modelo: ChatOllama = modelo
        self.modeloEmbedding = modeloEmbedding
        self.integracaoBd = integracaoBd
        self.agenteBd = agenteBd
        self.ollamaClient = ollama.Client()
        self.mapRespostas = {
            "0": self.respostaNatural,
            "1": self.consultaSql
        }
        
    def controleResposta (self, msg): # Verifica que tipo de resposta deve ser feita
        
        resposta = self.ollamaClient.embed(
            model=self.modeloEmbedding,
            input=msg
        )
        
        embedMsg = resposta["embeddings"][0]
        resultados = self.integracaoBd.retTabelasEmbedding(5, embedMsg)

        print(resultados)

        # Prompt inicial
        entradaTratada = """
        Você agira como um agente de decisao.
        Sua tarefa é retornar os numeros referentes as descricoes que estao listadas abaixo (no formato numero_a_ser_retornado -> descricao) e no mesmo contexto da Mensagem do usuario.

        0 -> Conversa normal
        """

        # Adiciona as descrições numeradas
        entradaTratada += "\n".join(
            f"{i+1} -> {resultado[1]}" for i, resultado in enumerate(resultados)
        )
        # Adiciona a mensagem do usuário
        entradaTratada += f"\n\nMensagem do usuario: {msg}"
        # Instrução final para forçar formato
        entradaTratada += "\nIMPORTANTE: Retorne apenas uma lista com os numeros (exemplo: [0, 2, 4]), sem explicar"

        # Chama o modelo
        resposta = self.modelo.invoke(entradaTratada)
        
        lista = ast.literal_eval(resposta.content)
        self.respostaNatural(msg) if lista[0] == 0 else self.consultaSql(msg, lista)


    def respostaNatural (self, msgUsuario):
        print(self.modelo.invoke(msgUsuario).content)
        
    def consultaSql (self, msgUsuario, ids):
        
        resposta = self.agenteBd.controleConsulta(msgUsuario, ids)
        
        if resposta == []:
            print("Desculpa, nao foi possivel recuperar os dados pedidos, ou eles nao existem no nosso banco de dados.")
            return
        
        if resposta == "Escrita nao permitida":
            print("Foi detectada uma tentativa de modificar o banco de dados, o que nao e permitido")
            return
        
        msg = f"""
            O usuario fez essa requisicao: {msgUsuario}.
            O nosso banco de dados retornou esses dados: {resposta[0]}
            
            Responda o usuario em linguagem natural baseando-se nos dados recuperados pelo banco de dados
        """
        
        print(resposta)
        
        print(self.modelo.invoke(msg))
        
    def apagaTabelas(self):
        self.agenteBd.apagaBD()