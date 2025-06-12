import os
from langchain_community.vectorstores import FAISS
from langchain_ollama import OllamaEmbeddings, OllamaLLM
from langchain.chains import RetrievalQA

FAISS_DIR = os.path.join(os.getcwd(), "dados", "dados_faiss")

embedding_model = OllamaEmbeddings(model="nomic-embed-text")

vectorstore = FAISS.load_local(
    FAISS_DIR,
    embeddings=embedding_model,
    allow_dangerous_deserialization=True
)

retriever = vectorstore.as_retriever(search_kwargs={"k": 4})
llm = OllamaLLM(model="llama3.2:latest")

rag = RetrievalQA.from_chain_type(
    llm=llm,
    retriever=retriever,
    return_source_documents=True
)

consulta = (
    "Quero saber o CNPJ, Nome, Segmento, Codigo de Competencia, Nome da agencia, "
    "Bairro, Endereço, Codigo do municipio do IBGE, Municipio, UF, Data de fundacao, "
    "DDD, Telefone e Posição da agencia siteada no CEP 65930-000, me retorne todos os dados que for possivel recuperar"
)

resultado = rag.invoke({"query": consulta})

if not resultado.get("source_documents"):
    resposta = llm.invoke(consulta)
else:
    resposta = resultado["result"]

print(resposta)