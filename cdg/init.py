from integracao_bd import integracaoBD
from dotenv import load_dotenv
import os
import psycopg2
import ollama

# Config ini ================================================

load_dotenv()
senha = os.getenv("SENHA_DB")

conexao = psycopg2.connect(
    host = "localhost",
    dbname = "postgres",
    user = "postgres",
    password=senha, # senha do banco de dados que vc criar
    port = 5433
)

ollama_client = ollama.Client()
modelo = "embeddinggemma:latest"

# sis =====================================================

conBd = integracaoBD(conexao)

conBd.criaTabelasEmbeddings()

#exemplo basico, em producao seria um json
tabela = {
    "nome": "agencias_bacen",
    "desc": "Apresentam as informações mais atuais das agências de instituições supervisionadas pelo Bacen. Inclui CNPJ, nome, segmento, codigo de competencia, nome da agencia, endereco, bairro, cep, nome do municipio, codigo do ibge, estado, data de inicio, telefone e posicao",
    "api":  "https://olinda.bcb.gov.br/olinda/servico/Informes_Agencias/versao/v1/odata/Agencias"
}

resposta = ollama_client.embed(
    model=modelo,
    input=tabela["desc"]
)

embed = resposta["embeddings"][0]

conBd.addTabelaEmbedding(tabela, embed)

# fecha con ===============================================

conBd.fecharCursor()
conexao.close()