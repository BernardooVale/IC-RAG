from bd import integracaoBD
from typing import List, Dict, Any
import ollama

from atualiza_embeddings_endpoint import AtualizadorEmbeddings, execucaoModular

# Configuração e Conexão ================================================

def embeddingsParametros():

    bd = integracaoBD()

    ollama_client = ollama.Client()
    modelo = "embeddinggemma:latest"

    # 1. Queries SQL =======================================================

    # Query 1: Busca informações principais dos Endpoints e da API (E, A)
    query_endpoints = """
        SELECT 
            E.Id, 
            E.Name, 
            E.Url, 
            E.ShortName,
            A.Documentation,
            A.ResponseType,
            A.Id as idApi
        FROM [Endpoints da API] AS E
        INNER JOIN APIs AS A
            ON E.ApiId = A.Id;
        """
        
    # Query 2: Busca os Parâmetros ligados aos Endpoints (PE, P)
    query_parametros = """
    SELECT 
        E.Id AS EndpointId, -- Chave de ligação
        P.Name AS ParameterName, 
        P.Description AS ParameterDescription,
        PE.Required AS ParameterRequired
    FROM [Endpoints da API] AS E
    INNER JOIN [Parametros dos endpoints] AS PE
        ON E.Id = PE.ApiEndpointId 
    INNER JOIN Parameters AS P
        ON PE.ParameterId = P.Id;
    """

    # 2. Execução das Queries ===============================================

    endpoints = bd.executaQuery(query_endpoints)
    parametros = bd.executaQuery(query_parametros)

    # 3. CRIAÇÃO DO HASH MAP (DICIONÁRIO DE LOOKUP) =========================

    # Agrupa os parâmetros por Id do Endpoint para consulta O(1)
    parametros_por_endpoint: Dict[int, List[Dict[str, Any]]] = {}

    for p in parametros:
        endpoint_id = p["EndpointId"]
        
        param_info = {
            "name": p["ParameterName"],
            "description": p["ParameterDescription"],
            "required": p["ParameterRequired"]
        }
        
        if endpoint_id not in parametros_por_endpoint:
            parametros_por_endpoint[endpoint_id] = []
            
        parametros_por_endpoint[endpoint_id].append(param_info)

    # 4. JUNÇÃO E FORMATAÇÃO FINAL =========================================

    dados_finais_embeddings = []

    for endpoint in endpoints:
        endpoint_id = endpoint["Id"]
        
        lista_de_parametros = parametros_por_endpoint.get(endpoint_id, [])
        
        parametros_formatados = []
        
        for param in lista_de_parametros:
            
            param_str = f'"{param["name"]}": {param["description"]}'
            parametros_formatados.append(param_str)
            
        string_parametros_final = ", ".join(parametros_formatados)
        short_name = endpoint["ShortName"] if endpoint["ShortName"] is not None else endpoint["Name"]
        
        descricao_final = (
            f"{short_name}. "
            f"Contém esses parâmetros: "
            f"{string_parametros_final}"
        )
        
        dicionario_final = {
            "Id": endpoint["Id"],
            "Name": endpoint["Name"],
            "Url": endpoint["Url"],
            "Documentation": endpoint["Documentation"],
            "ResponseType": endpoint["ResponseType"],
            "idApi": endpoint["idApi"],
            "Embedding_Text": descricao_final,
            "embedding": ""
        }
        
        dados_finais_embeddings.append(dicionario_final)

    bd.criaTabelasEmbeddings()

    for dado in dados_finais_embeddings:
        
        resposta = ollama_client.embed(
            model=modelo,
            input=dado["Embedding_Text"]
        )

        dado["embedding"] = resposta["embeddings"][0]

        bd.addTabelaEmbedding(dado)

    # Fechamento da Conexão =====================================
    bd.fecharConexao()

def atualizaTabelaEmbeddings():
    execucaoModular()

def embeddingColunas():
    bd = integracaoBD()
    modelo = "embeddinggemma:latest"

    # 1. Criar tabela do zero
    bd.criaTabelasEmbeddings()

    # 2. Carregar arquivos de mapeamento (mesma lógica do AtualizadorEmbeddings)
    atualizador = AtualizadorEmbeddings(bd=bd, modelo_embedding=modelo)
    endpoint_map = atualizador.carregar_endpoint_map()
    tuplas_dict = atualizador.carregar_tuplas_ordenadas()
    navegadores = atualizador.carregar_navegadores()

    if not endpoint_map or not tuplas_dict or not navegadores:
        bd.fecharConexao()
        return

    # 3. Buscar endpoints com Description
    query_endpoints = """
        SELECT 
            E.Id, 
            E.Name, 
            E.Url, 
            E.ShortName,
            E.Description,
            E.ApiResponseId,
            A.Documentation,
            A.ResponseType,
            A.Id as idApi
        FROM [Endpoints da API] AS E
        INNER JOIN APIs AS A
            ON E.ApiId = A.Id;
        """
    endpoints = bd.executaQuery(query_endpoints)

    # 4. Processar cada endpoint e inserir
    total = len(endpoints)
    falhas = 0

    for i, endpoint in enumerate(endpoints, 1):
        try:
            dados = atualizador.processar_endpoint(
                endpoint,
                endpoint_map,
                tuplas_dict,
                navegadores
            )

            if dados:
                bd.addTabelaEmbedding(dados)
                print(dados)
            else:
                falhas += 1

        except Exception as e:
            falhas += 1

    if falhas > 0:
        print(f"Erros: {falhas} | {falhas/total:.2%}")

    bd.fecharConexao()

if __name__ == "__main__":
    embeddingColunas()