import psycopg2
from dotenv import load_dotenv
import os
import re

class agenteBd:
    
    def __init__(self, modelo, host="localhost", dbName="ic", user="postgres",port=5432):
        
        #dados para conexao do bd
        load_dotenv()
        self.senha = os.getenv("SENHA_DB")
        self.host = host
        self.dbName = dbName
        self.user = user
        self.port = port
        
        # dados para exeucao da classe
        self.modelo = modelo
        self.mapConsultas = {
            "1": self.bancosBacen
        }
    
    def controleConsulta(self, msgUsuario, id):
        return self.mapConsultas.get(id)(msgUsuario) # chama a funcao que esta no mapConsultas na posicao id
        
    def bancosBacen(self, msgUsuario):
        
        msg = f"""
        
            ###Input
            Gere um comando em SQL que visa resolver essa questao: {msgUsuario}
            O comando ira rodar em uma base de dados representada abaixo:
            
            CREATE TABLE agencias_bancarias (
                nomeIf VARCHAR(255),
                segmento VARCHAR(100),
                codigoCompe VARCHAR(5),
                nomeAgencia VARCHAR(255),
                endereco VARCHAR(255),
                bairro VARCHAR(100),
                cep VARCHAR(9),
                municipioIbge VARCHAR(7),
                municipio VARCHAR(100),
                uf CHAR(2),
                dataInicio DATE,
                telefone VARCHAR(11),
                posicao DATE,
                cnpj VARCHAR(16) PRIMARY KEY
            );
            
            Retorne apenas o comando em SQL, sem aspas ou identificação, ou seja apenas o que estiver entre "select" e ";"
        """
        
        retorno = self.modelo.invoke(msg)
        resposta = retorno.content
        
        resposta_limpa = re.sub(r"```.*?```", "", resposta, flags=re.DOTALL).strip()
        match = re.search(r"(select.*?);", resposta_limpa, flags=re.IGNORECASE | re.DOTALL)

        query = None
        if match:
            query = match.group(1) + ";"   # pega o texto da captura
            print("Query extraída:", query)

        print("===========================")
        print(retorno)
        print(resposta)
        print(query)
        print("===========================")

        if query and query.strip().lower().startswith("select"):  # só permite consultas
            try:
                conexao = psycopg2.connect(
                    host=self.host,
                    dbname=self.dbName,
                    user=self.user,
                    password=self.senha,
                    port=self.port
                )
                cur = conexao.cursor()

                cur.execute(query)
                colunas = [desc[0] for desc in cur.description]
                linhas = cur.fetchall()
                # transforma tuplas em dicts
                resultado = [dict(zip(colunas, linha)) for linha in linhas]

                cur.close()
                conexao.close()
                return resultado

            except Exception as e:
                print(f"Erro ao executar consulta: {e}")
                return None
            
        return "Escrita nao permitida"