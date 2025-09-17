import psycopg2
from dotenv import load_dotenv
import os
import json
from datetime import datetime
import re

load_dotenv()
senha = os.getenv("SENHA_DB")

conexao = psycopg2.connect(
    host = "localhost",
    dbname = "ic",
    user = "postgres",
    password=senha, # senha do banco de dados que vc criar
    port = 5432
)

cur = conexao.cursor()

# config inicial acima
# ===========================================================================

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

def format_data_escrita(data_str):
    return datetime.strptime(data_str, "%d/%m/%Y").date() if data_str else None


def padroniza_endereco(endereco: str) -> str:
    if not endereco:
        return endereco

    endereco = endereco.strip()

    # Caminho 1: abreviação sem espaço
    endereco = re.sub(
        r'^av\.(?=\w)',  # av. seguido de letra
        'AVENIDA ',
        endereco,
        flags=re.IGNORECASE
    )
    endereco = re.sub(
        r'^r\.(?=\w)',  # r. seguido de letra
        'RUA ',
        endereco,
        flags=re.IGNORECASE
    )

    # Caminho 2: abreviação ou palavra normal seguida de espaço
    endereco = re.sub(
        r'^(av\.?|avenida)\s+',  # av., avenida seguidos de espaço
        'AVENIDA ',
        endereco,
        flags=re.IGNORECASE
    )
    endereco = re.sub(
        r'^(r\.?|rua)\s+',  # r., rua seguidos de espaço
        'RUA ',
        endereco,
        flags=re.IGNORECASE
    )

    # Caixa alta para todo o endereço
    return endereco.upper()

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

def funcoes():
    inclui_10_primeiras_agencias()

funcoes() # adicione as chamadas de funcao na funcao funcoes

# ===========================================================================
# finaliza operacoes
conexao.commit()

cur.close()
conexao.close()