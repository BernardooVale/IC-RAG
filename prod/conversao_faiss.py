from classe_faiss import Faiss
from bd import integracaoBD

def apis(faiss, bd):

    idMin = faiss.ret_checkpoint()

    query = f"select id, embedding from embeddings_api where id>{idMin};"

    resultado = bd.executaQuery(query=query)

    faiss.cria_documento_apis(resultado)

def endpoints(faiss, bd):

    query = f"select id, idApi, embedding from embeddings;"

    resultado = bd.executaQuery(query=query)

    faiss.cria_documento_endpoint(resultado)

if __name__ == "__main__":
    
    faiss = Faiss()
    bd = integracaoBD()
    
    apis(faiss=faiss, bd=bd)
    endpoints(faiss=faiss, bd=bd)