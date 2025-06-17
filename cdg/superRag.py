import os
from langchain_community.vectorstores import FAISS
from langchain_ollama import OllamaEmbeddings, OllamaLLM
from langchain.chains import RetrievalQA
from langchain.retrievers import ContextualCompressionRetriever
from langchain.retrievers.document_compressors import EmbeddingsFilter

BASE_DIR = os.path.dirname(os.path.abspath(__file__))
FAISS_DIR = os.path.join(BASE_DIR, "..", "dados", "dados_faiss")

embedding_model = OllamaEmbeddings(model="nomic-embed-text")

vectorstore = FAISS.load_local(
    FAISS_DIR,
    embeddings=embedding_model,
    allow_dangerous_deserialization=True
)

base_retriever = vectorstore.as_retriever(search_kwargs={"k": 3})
compressor = EmbeddingsFilter(embeddings=embedding_model, similarity_threshold=0.5, k=1)
retriever = ContextualCompressionRetriever(
    base_compressor=compressor,
    base_retriever=base_retriever
)

llm = OllamaLLM(model="llama3.2:latest")

rag = RetrievalQA.from_chain_type(
    llm=llm,
    retriever=retriever,
    return_source_documents=True
)

consulta = (
    "Quero saber o nome da agencia situada no CEP 65930-000"
)

resultado = rag.invoke({"query": consulta})

if not resultado.get("source_documents"):
    resposta = llm.invoke(consulta)
else:
    resposta = resultado["result"]

print(resposta)