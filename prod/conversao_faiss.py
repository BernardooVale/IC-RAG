from classe_faiss import Faiss
from bd import integracaoBD

faiss = Faiss()
bd = integracaoBD()

def apis(faiss, bd):

    idMin = faiss.ret_checkpoint()

    query = f"select id, embedding from embeddings_api where id>{idMin};"

    resultado = bd.executaQuery(query=query)

    faiss.cria_documento_apis(resultado)

def endpoints(faiss, bd):

    query = f"select id, idApi, embedding from embeddings;"

    resultado = bd.executaQuery(query=query)

    faiss.cria_documento_endpoint(resultado)
    
apis(faiss=faiss, bd=bd)
endpoints(faiss=faiss, bd=bd)