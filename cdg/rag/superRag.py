import os
from langchain_community.vectorstores import Qdrant
from langchain_ollama import OllamaEmbeddings, OllamaLLM
from langchain.chains import RetrievalQA
from langchain.retrievers import ContextualCompressionRetriever
from langchain.retrievers.document_compressors import EmbeddingsFilter
from qdrant_client import QdrantClient
from qdrant_client.models import VectorParams, Distance

# --- Configuração básica de diretórios ---
BASE_DIR = os.path.abspath(os.path.join(os.path.dirname(__file__), ".."))
QDRANT_DIR = os.path.join(BASE_DIR, "dados", "qdrant_dir")

# --- Embeddings e modelo LLM (Ollama) ---
embedding_model = OllamaEmbeddings(model="nomic-embed-text")
llm = OllamaLLM(model="llama3.2:latest")

# --- Inicialização do Qdrant em modo local (persistente em disco) ---
client = QdrantClient(path=QDRANT_DIR)

collection_name = "agencias_bacen"

# Cria a coleção se ainda não existir
collections = client.get_collections().collections
if not any(c.name == collection_name for c in collections):
    client.create_collection(
        collection_name=collection_name,
        vectors_config=VectorParams(size=embedding_model.embedding_dim, distance=Distance.COSINE),
    )

# --- Criação do vector store usando LangChain + Qdrant ---
vectorstore = Qdrant(
    client=client,
    collection_name=collection_name,
    embeddings=embedding_model,
)

# --- Pipeline Retrieval-QA com LangChain ---
base_retriever = vectorstore.as_retriever(search_kwargs={"k": 3})
compressor = EmbeddingsFilter(
    embeddings=embedding_model,
    similarity_threshold=0.6,
    k=1
)
retriever = ContextualCompressionRetriever(
    base_retriever=base_retriever,
    base_compressor=compressor
)

rag = RetrievalQA.from_chain_type(
    llm=llm,
    retriever=retriever,
    return_source_documents=True
)

# --- Consulta de exemplo ---
consulta = "Me retorne todos os dados que voce sabe sobre a agencia localizada no endereco R.CORONEL SOUZA FRANCO,1185, 1.ANDAR"
resultado = rag.invoke({"query": consulta})

if not resultado.get("source_documents"):
    resposta = llm.invoke(consulta)
else:
    resposta = resultado["result"]

print(resposta)