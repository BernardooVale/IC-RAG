import pyodbc
from pyodbc import Cursor, Connection, Error
from typing import List, Dict, Any, ClassVar
import json

class integracaoBD:
    
    DRIVER_NAME = 'ODBC Driver 17 for SQL Server'
    SERVER_NAME = '.'
    DATABASE_NAME = 'ic'

    CONNECTION_STRING = (
        f'DRIVER={{{DRIVER_NAME}}};'
        f'SERVER={SERVER_NAME};'
        f'DATABASE={DATABASE_NAME};'
        'Trusted_Connection=yes;' 
        'CharSet=utf8;'
    )
    
    CONNECTION_STRING: ClassVar[str] = CONNECTION_STRING
    
    def __init__(self):
        self.conexao: Connection = pyodbc.connect(self.CONNECTION_STRING, autocommit=True)
        self.cur: Cursor = self.conexao.cursor()
        
    def criaTabelaEmbeddingsApis(self): # Cria a Tabela que armazena o embedding da descricao de cada API
        
        sqlDrop = "IF OBJECT_ID('embeddings_api', 'U') IS NOT NULL DROP TABLE embeddings_api;"
        
        sqlCreate = """
            CREATE TABLE embeddings_api (
            id INT NOT NULL PRIMARY KEY, 
            nome VARCHAR(100) NOT NULL,
            descricao VARCHAR(300) NOT NULL,
            
            -- Coluna de Embedding (JSON string para uso com OPENJSON)
            embedding NVARCHAR(MAX) NOT NULL 
        );
        """
        
        try:
            
            self.cur.execute(sqlDrop)
            self.cur.execute(sqlCreate)
            
        except pyodbc.Error as e:
            self.conexao.rollback()
            raise
         
    def addTabelaEmbeddingApi(self, linha: Dict): # adiciona o embedding da respectiva API
        
        try:
           
            embedding_json_string = json.dumps(linha.get("embedding", ""))
            
            
            id = linha.get("Id", "")
            nome = linha.get("Name", "N/A")
            descricao = linha.get("Description", "")
            
            sql_insert = """
            INSERT INTO embeddings_api
                (id, nome, descricao, embedding)
            VALUES 
                (?, ?, ?, ?);
            """

            self.cur.execute(
                sql_insert, 
                (id, nome, descricao, embedding_json_string)
            )
                        
        except pyodbc.Error as e:
            self.conexao.rollback()
            raise
        
    def criaTabelasEmbeddings(self): # Cria a Tabela que armazena o embedding da descricao de cada endpoint
                
        sql_drop = "IF OBJECT_ID('embeddings', 'U') IS NOT NULL DROP TABLE embeddings;"
        
        sql_create = """
        CREATE TABLE embeddings (
            id INT NOT NULL PRIMARY KEY, 
            
            -- Colunas solicitadas (ajustadas para SQL Server)
            nome VARCHAR(200) NOT NULL,
            url VARCHAR(MAX) NULL,
            documentacao VARCHAR(MAX) NULL,
            tipo_resposta VARCHAR(20) NULL,
            idApi INT,
            texto VARCHAR(MAX) NULL,
            
            -- Coluna de Embedding (JSON string para uso com OPENJSON)
            embedding NVARCHAR(MAX) NOT NULL 
        );
        """
        
        try:
            
            self.cur.execute(sql_drop)
            self.cur.execute(sql_create)
                        
        except pyodbc.Error as e:
            self.conexao.rollback()
            raise
        
    def addTabelaEmbedding(self, linha: Dict): # adiciona o embedding da respectiva API
                
        try:
            
            embedding_json_string = json.dumps(linha.get("embedding", ""))
            
            id = linha.get("Id", "")
            nome = linha.get("Name", "N/A")
            url = linha.get("Url", "")
            documentacao = linha.get("Documentation", "")
            tipo_resposta = linha.get("ResponseType", "")
            idApi = linha.get("idApi", "")
            texto_embedding = linha.get("Embedding_Text", "")
            
            sql_insert = """
            INSERT INTO embeddings 
                (id, nome, url, documentacao, tipo_resposta, idApi, texto, embedding)
            VALUES 
                (?, ?, ?, ?, ?, ?, ?, ?);
            """
            
            self.cur.execute(
                sql_insert, 
                (id, nome, url, documentacao, tipo_resposta, idApi, texto_embedding, embedding_json_string)
            )
                        
        except pyodbc.Error as e:
            self.conexao.rollback()
            raise
        
    def retEndpoints(self, ids):
        
        query = f"select id, nome, url, documentacao, tipo_resposta, texto from embeddings where id in {ids}"
        return self.executaQuery(query)
    
    def executaQuery(self, query: str) -> List[Dict[str, Any]]: # Executa uma query qlqr
        
        try:
            
            self.cur.execute(query)
            
            if self.cur.description is None:
                
                self.conexao.commit()
                
                return []
                
            colunas = [desc[0] for desc in self.cur.description]
            linhas = self.cur.fetchall()
            resultados = []
            
            for linha in linhas:
                resultado_linha = {}
                for i, valor in enumerate(linha):
                    coluna_nome = colunas[i]
                    
                    if isinstance(valor, str):
                        if 'Ã' in valor or '§' in valor or '£' in valor:
                            
                            try:
                                valor_corrigido = valor.encode('latin-1').decode('utf-8')
                                valor = valor_corrigido
                                
                            except UnicodeEncodeError:
                                pass
                            except UnicodeDecodeError:
                                pass
                            
                    resultado_linha[coluna_nome] = valor
                
                resultados.append(resultado_linha)
            
            return resultados
        
        except pyodbc.Error as e:
            self.conexao.rollback()
            
            return []
    
    def retParametros(self, id):  # retornar os parametros de um determinado endpoint

        query = """
            SELECT 
                p.Name,
                p.Description
            FROM [Parametros dos endpoints] AS pe
            INNER JOIN Parameters AS p
                ON pe.ParameterId = p.Id
            INNER JOIN [Endpoints da API] AS e
                ON pe.ApiEndpointId = e.Id
            WHERE e.Id = ?
        """

        try:
            self.cur.execute(query, (id,))
            colunas = [desc[0] for desc in self.cur.description]
            linhas = self.cur.fetchall()

            resultados = []

            for linha in linhas:
                registro = {}

                for coluna, valor in zip(colunas, linha):
                    if isinstance(valor, str):
                        try:
                            valor = valor.encode("latin1").decode("utf-8")
                        except UnicodeError:
                            pass

                    registro[coluna] = valor
                resultados.append(registro)
            return resultados

        except Error as e:
            return []
    
    def atualizaEmbeddingEndpoint(self, dados: dict):
        """
        Atualiza embedding de um endpoint existente na tabela embeddings.
        
        Args:
            dados: Dicionário com os campos:
                - Id: ID do endpoint (obrigatório)
                - Name: Nome do endpoint
                - Url: URL do endpoint
                - Documentation: Link da documentação
                - ResponseType: Tipo de resposta (JSON, XML, etc)
                - idApi: ID da API pai
                - Embedding_Text: Texto usado para gerar o embedding
                - embedding: Vetor de embedding (lista de floats)
        
        Raises:
            pyodbc.Error: Em caso de erro no SQL
        """
        try:
            # Converter embedding (lista) para JSON string
            embedding_json = json.dumps(dados.get("embedding", []))
            
            # Extrair dados
            endpoint_id = dados.get("Id")
            nome = dados.get("Name", "N/A")
            url = dados.get("Url", "")
            documentacao = dados.get("Documentation", "")
            tipo_resposta = dados.get("ResponseType", "")
            id_api = dados.get("idApi")
            texto_embedding = dados.get("Embedding_Text", "")
            
            # SQL de UPDATE
            sql_update = """
            UPDATE embeddings
            SET 
                nome = ?,
                url = ?,
                documentacao = ?,
                tipo_resposta = ?,
                idApi = ?,
                texto = ?,
                embedding = ?
            WHERE 
                id = ?;
            """
            
            # Executar update
            self.cur.execute(
                sql_update,
                (
                    nome,
                    url,
                    documentacao,
                    tipo_resposta,
                    id_api,
                    texto_embedding,
                    embedding_json,
                    endpoint_id
                )
            )
            
            # Commit (se autocommit=False)
            if not self.conexao.autocommit:
                self.conexao.commit()
            
            print(f"✅ Embedding atualizado para endpoint {endpoint_id}: {nome}")
            
        except Exception as e:
            self.conexao.rollback()
            print(f"❌ Erro ao atualizar embedding do endpoint {dados.get('Id')}: {e}")
            raise
    
    def retApis(self):
        
        query = """
        
        select Id, Name, Description
        from APIs
        
        """
        
        return self.cur.execute(query).fetchall()
    
    def fecharConexao(self): # fecha a conexao
        self.cur.close()
        self.conexao.close()