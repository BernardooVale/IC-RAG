import time
import pandas as pd
from agente_chat import agenteChat
from bd import integracaoBD
from modoTeste import modoTeste
from langchain_ollama import ChatOllama
from init_embeddings import embeddingsParametros, embeddingColunas, atualizaTabelaEmbeddings
from conversao_faiss import apis, endpoints
from classe_faiss import Faiss

def execucaoTeste(
    conjuntoModelos: dict,
    teste: modoTeste,
    bd: integracaoBD,
    df: pd.DataFrame,
    base_url: str = "http://localhost:11434"
) -> pd.DataFrame:

    modeloChat      = ChatOllama(model=conjuntoModelos["chat"], base_url=base_url)
    modeloClass     = conjuntoModelos["classificador"]
    modeloEmbedding = "embeddinggemma:latest"

    agente = agenteChat(modeloChat, modeloClass, modeloEmbedding, bd)

    t0 = time.time()
    df = agente.testeExecucao(963, df, teste)
    tempo = time.time() - t0

    # Preenche tempo e modelos na linha recém-adicionada
    df.loc[df.index[-1], "tempo_execucao"]     = tempo
    df.loc[df.index[-1], "modeloChat"]         = conjuntoModelos["chat"]
    df.loc[df.index[-1], "modeloClassificador"] = conjuntoModelos["classificador"]

    return df

# Colunas definidas fora — tempo_execucao exclusivo daqui
COLUNAS = [
    "rerank",
    "filtroApi",
    "listaFiltroApis",
    "acertosCompletos",
    "acertosTop5",
    "erros",
    "totalTestado",
    "acertosNatural",
    "errosNatural",
    "tempo_execucao",      # preenchido aqui, não em testeExecucao
    "modeloChat",
    "modeloClassificador",
    "embedding",           # "parametros" ou "colunas"
]

MODELOS = [
    {"chat": "qwen2:7b",    "classificador": "phi3:3.8b"},
    {"chat": "gemma4:e4b",  "classificador": "gemma4:e4b"},
    {"chat": "gemma4:e2b",  "classificador": "gemma4:e2b"},
]

RERANK          = [True, False]
FILTRO_API      = [False, True]
LISTA_FILTROS   = [False, True]

EMBEDDINGS = [
    {"fn": embeddingsParametros,      "nome": "parametros"},
    {"fn": atualizaTabelaEmbeddings,  "nome": "colunas"},
]

bd  = integracaoBD()
df  = pd.DataFrame(columns=COLUNAS)
faiss = Faiss()

apis(faiss, bd)

for embedding in EMBEDDINGS:
    embedding["fn"]()  # inicializa/atualiza tabela com o modelo de embedding
    
    endpoints(faiss, bd)

    for conjuntoModelos in MODELOS:
        for rank in RERANK:
            for filtro in FILTRO_API:
                for itemLista in LISTA_FILTROS:
                    teste = modoTeste(rank, filtro, [itemLista])
                    df = execucaoTeste(conjuntoModelos, teste, bd, df)
                    df.loc[df.index[-1], "embedding"] = embedding["nome"]

bd.fecharConexao()

df.to_csv("resultados_teste.csv", index=False)