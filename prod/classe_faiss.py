import os
import faiss
import numpy as np
import json

class Faiss:
    def __init__(self):
        self.nomeDiretorio = "faiss"
        self.arquivoCheckpoint = "checkpoint.txt"
        self.arquivoMapa = "mapa_api_endpoints.json" # Novo: Mapa de FKs
        
        self.caminhoPasta = os.path.join(os.getcwd(), self.nomeDiretorio)
        self.caminhoArquivo = os.path.join(self.caminhoPasta, self.arquivoCheckpoint)
        self.caminhoMapa = os.path.join(self.caminhoPasta, self.arquivoMapa)
        
        self.verificar_e_criar()

    def verificar_e_criar(self):
        if not os.path.exists(self.caminhoPasta):
            os.makedirs(self.caminhoPasta)
        if not os.path.exists(self.caminhoArquivo):
            with open(self.caminhoArquivo, "w") as f:
                f.write("0")
            
    def ret_checkpoint(self):
        try:
            with open(self.caminhoArquivo, "r") as f:
                return f.read().strip()
        except FileNotFoundError:
            return None
            
    def def_checkpoint(self, val):
        with open(self.caminhoArquivo, "w") as f:
            f.write(str(val))
        print(f"Checkpoint atualizado para: {val}")

    def criar_documentos_faiss(self, resultados_banco):
        ids = []
        vetores = []
        
        for linha in resultados_banco:
            ids.append(linha["id"])
            
            emb = linha["embedding"]
            
            # Verifica se o que veio do banco é uma string (texto)
            if isinstance(emb, str):
                try:
                    # Converte a string "[-0.01, ...]" em uma lista [0.01, ...]
                    emb = json.loads(emb)
                except Exception as e:
                    print(f"Erro ao converter string para lista no ID {linha['id']}: {e}")
                    continue
            # -------------------

            vetor = np.array(emb).astype('float32')
            vetores.append(vetor)

        if not vetores:
            print("Nenhum dado para indexar.")
            return None

        matriz_vetores = np.vstack(vetores).astype('float32')
        ids_np = np.array(ids).astype('int64')

        # Normalizar para garantir que a busca por Cosseno funcione
        faiss.normalize_L2(matriz_vetores)

        dimensao = matriz_vetores.shape[1]
        index_base = faiss.IndexFlatIP(dimensao)
        index_com_ids = faiss.IndexIDMap(index_base)
        index_com_ids.add_with_ids(matriz_vetores, ids_np)

        return index_com_ids
    
    def cria_documento_apis(self, resultados):
        dados = self.criar_documentos_faiss(resultados)
        if dados:
            caminho = os.path.join(self.caminhoPasta, "apis.index")
            faiss.write_index(dados, caminho)
    
    def cria_documento_endpoint(self, resultados):
        # Aqui salvamos o índice FAISS
        dados = self.criar_documentos_faiss(resultados)
        if dados:
            caminho = os.path.join(self.caminhoPasta, "endpoints.index")
            faiss.write_index(dados, caminho)
            
            # Novo: Criar e salvar o mapa de FK (api_id -> [lista de ids_endpoints])
            mapa = {}
            for linha in resultados:
                api_id = str(linha["idApi"]) # FK da API
                if api_id not in mapa:
                    mapa[api_id] = []
                mapa[api_id].append(int(linha["id"]))
            
            with open(self.caminhoMapa, "w") as f:
                json.dump(mapa, f)

    def ret_api_mais_similar(self, vetor_query):
        
        caminho_api = os.path.join(self.caminhoPasta, "apis.index")

        if not os.path.exists(caminho_api):
            print("Índice de APIs não encontrado.")
            return None


        # 1. Carregar o índice de APIs
        index = faiss.read_index(caminho_api)
        
        # 2. Preparar o vetor de busca (Normalizar é essencial para Cosseno)
        query_np = np.array([vetor_query]).astype('float32')
        faiss.normalize_L2(query_np)
        
        # 3. Buscar a top 1 API mais próxima
        distancias, indices = index.search(query_np, 1)
        
        id_resultado = indices[0][0]
        
        # Se retornar -1, significa que não encontrou nada
        return int(id_resultado) if id_resultado != -1 else None

    def ret_top_endpoints(self, vetor_query, listaFiltroApis: list, filtrarApis: bool, k=5):

        index = faiss.read_index(os.path.join(self.caminhoPasta, "endpoints.index"))

        query_np = np.array([vetor_query]).astype('float32')
        faiss.normalize_L2(query_np)

        params = faiss.SearchParameters()

        if filtrarApis:
            with open(self.caminhoMapa, "r") as f:
                mapa = json.load(f)

            if listaFiltroApis == []:
                idApi = self.ret_api_mais_similar(vetor_query)
                print(idApi)
                listaFiltroApis = [idApi] if idApi else []

            ids_permitidos = []
            for id_api in listaFiltroApis:
                ids_permitidos.extend(mapa.get(str(id_api), []))

            if ids_permitidos:
                params.sel = faiss.IDSelectorArray(ids_permitidos)

        distancias, indices = index.search(query_np, k, params=params)

        return [
            (int(i), float(d))
            for i, d in zip(indices[0], distancias[0])
            if i != -1
        ]