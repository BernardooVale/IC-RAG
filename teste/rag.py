import os
from langchain_community.document_loaders import TextLoader, DirectoryLoader
from langchain.text_splitter import RecursiveCharacterTextSplitter
from langchain_community.vectorstores import Chroma
from langchain_ollama import OllamaEmbeddings, OllamaLLM
from langchain.chains import RetrievalQA

# Caminhos ajustados com base na nova estrutura
BASE_DIR = os.path.abspath(os.path.dirname(__file__))  # aponta para /teste
BRUTO_DIR = os.path.join(BASE_DIR, "bruto")
CHROMA_DIR = os.path.join(BASE_DIR, "dados_chroma")

# Carrega documentos .txt da pasta bruto/
loader = DirectoryLoader(
    path=BRUTO_DIR,
    glob="**/*.txt",
    loader_cls=TextLoader
)
doc = loader.load()

# Divide os documentos em pedaços (chunks)
divisor = RecursiveCharacterTextSplitter(chunk_size=500, chunk_overlap=50)
docs = divisor.split_documents(doc)

# Cria embeddings com modelo Ollama
embedding = OllamaEmbeddings(model="nomic-embed-text")

# Cria (ou recarrega) vetorstore Chroma na pasta dados_chroma
vetor = Chroma.from_documents(docs, embedding=embedding, persist_directory=CHROMA_DIR)
retriever = vetor.as_retriever(search_kwargs={"k": 4})

# Inicializa o modelo LLM
llm = OllamaLLM(model="llama3.2:latest")

# Pipeline RAG com retorno dos documentos fonte
rag = RetrievalQA.from_chain_type(llm=llm, retriever=retriever, return_source_documents=True)

# Consulta exemplo
consulta = "Quem foi Albert Einstein?"
resultado = rag.invoke({"query": consulta})

# Exibe resultado completo
print(resultado)

# Se nada for encontrado nos documentos, usa apenas o modelo LLM
if not resultado.get("source_documents"):
    resposta = llm.invoke(consulta)
else:
    resposta = resultado["result"]

print(resposta)