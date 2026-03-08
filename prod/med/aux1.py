import pyodbc
import json

DRIVER_NAME = 'ODBC Driver 17 for SQL Server'
SERVER_NAME = '.'
DATABASE_NAME = 'ic'

CONNECTION_STRING = (
    f'DRIVER={{{DRIVER_NAME}}};'
    f'SERVER={SERVER_NAME};'
    f'DATABASE={DATABASE_NAME};'
    'Trusted_Connection=yes;'
)

def extract_top_level_keys(json_text):
    try:
        obj = json.loads(json_text)
    except json.JSONDecodeError:
        return tuple()

    # Caso esteja duplamente serializado
    if isinstance(obj, str):
        try:
            obj = json.loads(obj)
        except json.JSONDecodeError:
            return tuple()

    if isinstance(obj, dict):
        return tuple(obj.keys())

    if isinstance(obj, list):
        keys = set()
        for item in obj:
            if isinstance(item, dict):
                keys.update(item.keys())
        return tuple(keys)

    return tuple()


def carregar_apis_maps():
    conn = pyodbc.connect(CONNECTION_STRING)
    cursor = conn.cursor()

    # Agora também buscamos E.Id (o id do endpoint)
    sql = """
        SELECT 
            A.Id AS ApiId,
            A.Name AS ApiName,
            E.Id AS EndpointId,
            R.ResponseExample
        FROM [Respostas da API] R
        INNER JOIN [Endpoints da API] E
            ON R.Id = E.ApiResponseId
        INNER JOIN APIs A
            ON A.Id = E.ApiId
        ORDER BY A.Id;
    """

    cursor.execute(sql)
    rows = cursor.fetchall()

    if not rows:
        conn.close()
        return []

    max_api_id = max(r[0] for r in rows)

    # Cada API terá:
    # nome: string
    # tuplas: { tuple: count }
    # endpoints: [ {id, tupla} ]
    api_list = [
        {"nome": None, "tuplas": {}, "endpoints": []}
        for _ in range(max_api_id)
    ]

    for api_id, api_name, endpoint_id, response_json in rows:

        idx = api_id - 1

        if api_list[idx]["nome"] is None:
            api_list[idx]["nome"] = api_name

        tuple_keys = extract_top_level_keys(response_json)

        # Incrementar contagem da tupla
        if tuple_keys not in api_list[idx]["tuplas"]:
            api_list[idx]["tuplas"][tuple_keys] = 0

        api_list[idx]["tuplas"][tuple_keys] += 1

        # Registrar o endpoint individual
        api_list[idx]["endpoints"].append({
            "id": endpoint_id,
            "tupla": tuple_keys
        })

    conn.close()
    return api_list


# =======================================================
# 🔥 SALVAR NO TXT
# =======================================================

def salvar_endpoints_txt(api_list, filename="endpoints_tuplas.txt"):
    with open(filename, "w", encoding="utf-8") as f:
        for api in api_list:
            f.write("============================================\n")
            f.write(f"API: {api['nome']}\n")
            f.write("============================================\n")

            for ep in api["endpoints"]:
                ep_id = ep["id"]
                tupla = ep["tupla"]
                f.write(f"{ep_id} - {tupla}\n")

            f.write("\n")

    print(f"Arquivo salvo com sucesso em: {filename}")

# =======================================================
# 🔥 SALVAR LISTA ORDENADA DAS TUPLAS + CONTAGEM
# =======================================================

def salvar_tuplas_ordenadas(api_list, filename="tuplas_ordenadas.txt"):
    """
    Gera um arquivo TXT com TODAS as tuplas de TODAS as APIs,
    ordenadas por número de ocorrências (maior → menor)
    """
    # junta todas as tuplas em um único mapa global
    global_count = {}

    for api in api_list:
        for tupla, count in api["tuplas"].items():
            if tupla not in global_count:
                global_count[tupla] = 0
            global_count[tupla] += count

    # ordenar por quantidade (decrescente)
    ordenado = sorted(global_count.items(), key=lambda x: x[1], reverse=True)

    with open(filename, "w", encoding="utf-8") as f:
        for idx, (tupla, qtd) in enumerate(ordenado, start=1):
            f.write(f"{idx} - {tupla} - {qtd}\n")

    print(f"Arquivo de tuplas ordenadas salvo em: {filename}")

# =======================================================
# GERAR MAPA endpoint → tupla
# =======================================================

def gerar_map_endpoint_para_tupla(api_list):
    """Gera um dicionário: EndpointId → tupla de chaves do JSON."""
    mapping = {}
    for api in api_list:
        for ep in api["endpoints"]:
            mapping[ep["id"]] = ep["tupla"]
    return mapping


# =======================================================
# SALVAR EM JSON
# =======================================================

def salvar_map_json(mapping, filename="endpoint_map.json"):
    # JSON não aceita tuplas como valor → converter para lista
    m2 = {str(k): list(v) for k, v in mapping.items()}

    with open(filename, "w", encoding="utf-8") as f:
        json.dump(m2, f, indent=4, ensure_ascii=False)

    print(f"Mapa salvo com sucesso em: {filename}")

# =======================================================
# EXECUÇÃO
# =======================================================

result = carregar_apis_maps()

# mapa EndpointId → tupla
endpoint_map = gerar_map_endpoint_para_tupla(result)

# salvar em JSON
salvar_map_json(endpoint_map)

salvar_tuplas_ordenadas(result)

for idx, api_info in enumerate(result, start=1):
    print(f"API {idx} - {api_info['nome']}:")
    print(api_info['tuplas'])
    print("============================================")

salvar_endpoints_txt(result)

def salvar_funcoes_py(api_list, filename="handlers_gerados.py"):
    with open(filename, "w", encoding="utf-8") as f:
        f.write("# Arquivo AUTO-GERADO\n")
        f.write("# Contém funções para tratar JSON de cada endpoint\n\n")
        f.write("import json\n\n")

        for api in api_list:
            for ep in api["endpoints"]:
                ep_id = ep["id"]
                tupla = ep["tupla"]

                nome_func = f"handler_{ep_id}"

                f.write(f"def {nome_func}(json_obj):\n")
                f.write(f"    \"\"\"Handler para endpoint {ep_id}.\n")
                f.write(f"    Tupla detectada: {tupla}\n")
                f.write(f"    \"\"\"\n")
                f.write(f"    # TODO: navegar no json conforme necessário\n")
                f.write(f"    return json_obj\n\n")

        # Também gera um dicionário central para import fácil
        f.write("handlers = {\n")
        for api in api_list:
            for ep in api["endpoints"]:
                ep_id = ep["id"]
                f.write(f"    {ep_id}: handler_{ep_id},\n")
        f.write("}\n")

    print(f"Arquivo Python gerado: {filename}")

salvar_funcoes_py(result)