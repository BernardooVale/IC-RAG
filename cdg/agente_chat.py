

class agenteChat:
    
    def __init__(self, modelo, agenteBd, msgMestra):
        self.modelo = modelo
        self.agenteBd = agenteBd
        self.msgMestra = msgMestra
        self.mapRespostas = {
            "0": self.respostaNatural,
            "1": self.consultaSql
        }
        
    def controleResposta (self, msg): # Verifica que tipo de resposta deve ser feita
        
        
        entrada = f"""
            {self.msgMestra}
            Qual id dos contextos listados acima se caracteriza essa entrada:
            {msg}
        """     
        resposta = self.modelo.invoke(entrada)
        
        print(resposta.content)
        
        self.mapRespostas.get(resposta.content)(msg, resposta.content) # recupera a funcao no map e chama ela passando msgUsuario como parametro
            
    def respostaNatural (self, msgUsuario, _):
        print(self.modelo.invoke(msgUsuario).content)
        
    def consultaSql (self, msgUsuario, id):
        
        resposta = self.agenteBd.controleConsulta(msgUsuario, id)
        
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
        
        print(self.modelo.invoke(msg))