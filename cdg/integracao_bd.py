from psycopg2.extensions import cursor, connection
import os
import json
from datetime import datetime
import re

class integracaoBD:
    
    def __init__(self, conexao: connection):
        self.conexao: connection = conexao
        self.cur:cursor = conexao.cursor()
        
    def criaTabelasEmbeddings(self):
        
        self.cur.execute("CREATE EXTENSION IF NOT EXISTS vector;")
        self.cur.execute("""
            CREATE TABLE IF NOT EXISTS schema_embeddings (
                id SERIAL PRIMARY KEY,
                table_name VARCHAR(255) NOT NULL,
                description TEXT,
                api TEXT,
                embedding VECTOR(768)  -- embeddinggemma
            );
        """)
        
        self.conexao.commit()
        
    def addTabelaEmbedding(self, tabela, embedding):
        
        self.cur.execute("""
            INSERT INTO schema_embeddings (table_name, description, api, embedding)
            VALUES (%s, %s, %s, %s)
            """, (tabela["nome"], tabela["desc"], tabela["api"], embedding)
        )
        
        self.conexao.commit()
        
    def retTabelasEmbedding(self, max_tabelas: int, embed):
        
        self.cur.execute("""
            SELECT api, description
            FROM schema_embeddings
            ORDER BY embedding <-> %s::vector
            LIMIT %s;
        """, (embed, max_tabelas))
        
        return self.cur.fetchall()
    
    def criaTabelaTemp(self, query: str):
        
        self.cur.execute(query)
        self.conexao.commit()
    
    def retPK(self, nomeTabela:str):
            query = """
                SELECT a.attname
                FROM pg_index i
                JOIN pg_attribute a ON a.attrelid = i.indrelid
                                AND a.attnum = ANY(i.indkey)
                WHERE i.indrelid = %s::regclass
                AND i.indisprimary;
            """
            self.cur.execute(query, (nomeTabela,))
            result = self.cur.fetchall()
            
            if not result:
                raise ValueError(f"Tabela {nomeTabela} não possui chave primária.")
            
            return [row[0] for row in result]  # pode ter mais de uma PK
    
    def populaTabelaTemp(self, nome_tabela: str, dados: dict):
        
        if not dados:
            raise ValueError("O dicionário de dados está vazio.")

        colunas = ", ".join(dados.keys())                  # col1, col2, col3
        placeholders = ", ".join(["%s"] * len(dados))      # %s, %s, %s
        valores = tuple(dados.values())                    # (valor1, valor2, valor3)

        pks = self.retPK(nome_tabela)
        pk_clause = ", ".join(pks)
        updates = ", ".join([f"{col} = EXCLUDED.{col}" for col in dados.keys() if col not in pks])

        query = f"INSERT INTO {nome_tabela} ({colunas}) VALUES ({placeholders}) ON CONFLICT ({pk_clause}) DO UPDATE SET {updates}"

        self.cur.execute(query, valores)
        self.conexao.commit()
    
    def executaQuery(self, query:str):
        
        self.cur.execute(query)
        colunas = [desc[0] for desc in self.cur.description]
        linhas = self.cur.fetchall()
        # transforma tuplas em dicts
        return [dict(zip(colunas, linha)) for linha in linhas]
    
    def fecharCursor(self):
        self.cur.close()
        
    def apagaTabelas(self, nomeTabela):
        self.cur.execute(f"drop table {nomeTabela}")
        self.conexao.commit()

# ===================================================
#
#   Desculpe o transtorno, estamos em obras
#
# ====================================================

cur = None # debug

def criaTabela_agenciasBacen():
    cur.execute("""
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
    """)

def add_agencia(agencia: dict):
    
    # Inserir no banco
    cur.execute("""
        INSERT INTO agencias_bancarias (
            nomeIf, segmento, codigoCompe, nomeAgencia, endereco,
            bairro, cep, municipioIbge, municipio, uf,
            dataInicio, telefone, posicao, cnpj
        ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
        ON CONFLICT (cnpj) DO NOTHING
    """, (
        agencia.get("NomeIf"),
        agencia.get("Segmento"),
        agencia.get("CodigoCompe"),
        agencia.get("NomeAgencia"),
        agencia.get("Endereco"),
        agencia.get("Bairro"),
        agencia.get("Cep"),
        agencia.get("MunicipioIbge"),
        agencia.get("Municipio"),
        agencia.get("UF"),
        agencia.get("DataInicio"),
        agencia.get("Telefone"),
        agencia.get("Posicao"),
        agencia.get("CNPJ")
    ))
    
def inclui_10_primeiras_agencias():
    BASE_DIR = os.path.abspath(os.path.join(os.path.dirname("cdg"), ".."))
    JSON_DIR = os.path.join(BASE_DIR, "IC", "IC-RAG", "dados", "bruto", "agencias.jsonl")
    
    with open(JSON_DIR, "r", encoding="utf-8") as f:
        for i, linha in enumerate(f):
            if i >= 10:
                break
            try:
                agencia = json.loads(linha.strip())
                
                agencia['Telefone'] = agencia['DDD'].strip() + ' ' + agencia['Telefone'].strip()
                agencia['CNPJ'] = agencia['CNPJ'].replace(" ", "")
                agencia["DataInicio"] = format_data_escrita(agencia["DataInicio"])
                agencia["Posicao"] = format_data_escrita(agencia["Posicao"])
                agencia['Endereco'] = padroniza_endereco(agencia['Endereco'])
                
                add_agencia(agencia)
            except json.JSONDecodeError as e:
                print(f"Erro ao decodificar JSON na linha {i+1}: {e}")
    
    pass

def teste():
    cur.execute("""
        SELECT COUNT(*) 
        FROM agencias_bancarias
        WHERE uf = 'SP';
    """)
    
    rows = cur.fetchall()  # pega todos os resultados da última execução
    for row in rows:
        print(row)

def criaTabelaInicial():
    cur.execute("""
        CREATE TABLE IF NOT EXISTS agenciasBancariasBacen (
            CnpjBase VARCHAR(20),
            CnpjSequencial VARCHAR(20),
            CnpjDv VARCHAR(5),
            NomeIf TEXT,
            Segmento TEXT,
            CodigoCompe VARCHAR(10),
            NomeAgencia TEXT,
            Endereco TEXT,
            Numero TEXT,
            Complemento TEXT,
            Bairro TEXT,
            Cep VARCHAR(20),
            MunicipioIbge VARCHAR(20),
            Municipio TEXT,
            UF TEXT,
            DataInicio DATE,
            DDD VARCHAR(5),
            Telefone VARCHAR(20),
            Posicao DATE
        );
    """)
    
def addAgenciasOriginais():
    BASE_DIR = os.path.abspath(os.path.join(os.path.dirname("cdg"), ".."))
    JSON_DIR = os.path.join(BASE_DIR, "IC", "IC-RAG", "dados", "bruto", "agencias.jsonl")
    
    json_data = []
    with open(JSON_DIR, "r", encoding="utf-8") as f:
        for i, line in enumerate(f):
            json_data.append(json.loads(line))
            
    for item in json_data:
        cur.execute("""
        INSERT INTO agenciasBancariasBacen (
            CnpjBase, CnpjSequencial, CnpjDv, NomeIf, Segmento, CodigoCompe,
            NomeAgencia, Endereco, Numero, Complemento, Bairro, Cep,
            MunicipioIbge, Municipio, UF, DataInicio, DDD, Telefone,
            Posicao
        ) VALUES (%s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, %s)
        """, (
            item.get("CnpjBase"),
            item.get("CnpjSequencial"),
            item.get("CnpjDv"),
            item.get("NomeIf"),
            item.get("Segmento"),
            item.get("CodigoCompe"),
            item.get("NomeAgencia"),
            padroniza_endereco(item.get("Endereco")),
            item.get("Numero"),
            item.get("Complemento"),
            item.get("Bairro"),
            padronizaCEP(item.get("Cep")),
            item.get("MunicipioIbge"),
            item.get("Municipio"),
            padronizaUF(item.get("UF")),
            format_data_escrita(item.get("DataInicio")),
            item.get("DDD"),
            item.get("Telefone"),
            format_data_escrita(item.get("Posicao")),
        ))

def criaViewAgenciasBacen():
    cur.execute("""
        CREATE OR REPLACE VIEW agencias_view AS
        SELECT
            CnpjBase || CnpjSequencial || CnpjDv AS cnpj,
            NomeIf,
            Segmento,
            CodigoCompe,
            NomeAgencia,
            Endereco || ' ' || Numero || ' ' || Complemento AS endereco,
            Bairro,
            Cep,
            MunicipioIbge,
            Municipio,
            UF,
            DataInicio,
            DDD || ' ' || Telefone AS telefone,
            Posicao
        FROM agenciasBancariasBacen;
    """)