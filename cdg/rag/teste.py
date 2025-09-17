import os
import json

parametros = ['CNPJ']
valores = ['00000000/7687-23']

resultados = []
    
BASE_DIR = os.path.abspath(os.path.join(os.path.dirname("cdg"), ".."))
JSON_DIR = os.path.join(BASE_DIR, "IC", "IC-RAG", "dados", "bruto", "agencias.jsonl")

with open(JSON_DIR, "r", encoding="utf-8") as f:
    print("Abriu json")
    for line in f:
        try:
            item = json.loads(line)
        except json.JSONDecodeError:
            print("linha invalida")
            continue  # ignora linhas inválidas
        
        """
        for param, valor in zip(parametros, valores):
            print(valor)
            
            if item.get(param) == valor:
                print(valor)
            else:
                print(param, item.get(param))
        """     
        
        # Verifica se todos os parâmetros batem com os valores
        if all(str(item.get(param)).replace(" ", "") == valor.replace(" ", "") for param, valor in zip(parametros, valores)):
            print("comparando")
            resultados.append(item)

print(resultados)

# Printar todos os casos encontrados
for r in resultados:
    print(json.dumps(r, ensure_ascii=False, indent=2))