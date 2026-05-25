import json

with open("teste_claude.json", mode="r", encoding="utf-8") as f:
    perguntas = json.load(f)

count = 0

# mapa_perguntas = {i: "" for i in range (1,914)}
mapa_perguntas = {}

for i in range(1,914):
    
    pergunta = perguntas.get(f"{i}", "")
    if pergunta == "":
        count +=1
    mapa_perguntas[i] = pergunta

print(count)

with open("output.json", "w", encoding="utf-8") as file:
    json.dump(mapa_perguntas, file, indent=4, ensure_ascii=False)