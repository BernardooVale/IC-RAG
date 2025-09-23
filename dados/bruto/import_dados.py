import requests
import json

# URL do endpoint
url = "https://olinda.bcb.gov.br/olinda/servico/Informes_Agencias/versao/v1/odata/Agencias"

# Parâmetros da API
params = {
    "$format": "json",          # Retorno em JSON
    #"$top": 1000,               # Quantas agências trazer por requisição (máximo permitido)
    # "$skip": 0,               # Para paginação (se quiser trazer mais de 1000)
    # "$select": "CnpjBase,CnpjSequencial,CnpjDv,NomeIf,Segmento,CodigoCompe,NomeAgencia,Endereco,Numero,Complemento,Bairro,Cep,MunicipioIbge,Municipio,UF,DataInicio,DDD,Telefone,Posicao,CNPJ"
}

# Requisição GET
response = requests.get(url, params=params)
data = response.json()

# Normalmente os registros estão em data['value']
agencias = data.get('value', [])

# Salvar em JSONL
jsonl_file = "agencias.jsonl"
with open(jsonl_file, "w", encoding="utf-8") as f:
    for agencia in agencias:
        f.write(json.dumps(agencia, ensure_ascii=False) + "\n")

print(f"{len(agencias)} registros salvos em {jsonl_file}")