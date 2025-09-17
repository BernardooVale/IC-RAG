import os
import json
import requests

# --- Funções de API ---
def pesquisa_bancos_bacen(parametros, valores):
    """
    Busca no dataset local do Bacen pelas combinações de parametros/valores.
    """
    print(f"[DEBUG] Chamando pesquisa_bancos_bacen({parametros}, {valores})")

    resultados = []
    BASE_DIR = os.path.abspath(os.path.join(os.path.dirname("cdg"), ".."))
    JSON_DIR = os.path.join(BASE_DIR, "IC", "IC-RAG", "dados", "bruto", "agencias.jsonl")

    with open(JSON_DIR, "r", encoding="utf-8") as f:
        for line in f:
            if not line.strip():
                continue
            try:
                item = json.loads(line)
            except json.JSONDecodeError:
                continue

            if all(str(item.get(param)).replace(" ", "") == valor.replace(" ", "")
                   for param, valor in zip(parametros, valores)):
                resultados.append(item)

    return resultados


# --- Modelo (Ollama local, sem smolagents) ---
def call_llm(prompt):
    url = "http://localhost:11434/api/chat"
    payload = {
        "model": "qwen2:7b",  # ou outro modelo
        "messages": [{"role": "user", "content": prompt}],
        "stream": False
    }
    resp = requests.post(url, json=payload)
    resp.raise_for_status()
    return resp.json()["message"]["content"]


# --- Loop principal ---
def main():
    print("Assistente iniciado. Digite 'sair' para encerrar.\n")

    while True:
        user_query = input("Usuário: ")
        if user_query.lower() == "sair":
            break

        # Prompt que pede identificação do "tipo" da pergunta
        tarefa = f"""
        Você é um sistema que deve analisar perguntas de usuários.
        Retorne SEMPRE em JSON válido uma das opções:

        - Para conversa normal:
        {{
            "id": "00",
            "resposta": "texto de resposta ao usuário"
        }}

        - Para chamada de função:
        {{
            "id": "01",
            "name": "pesquisa_bancos_bacen",
            "descricao": Dados de todas agencias bancarias vistoriadas pelo bacen
            "arguments": {{
                "parametros": "lista de parametros",
                "valores": "lista de valores dos parametros, respectivamente"
            }}
        }}

        Pergunta do usuário: "{user_query}"
        """

        resposta_llm = call_llm(tarefa)

        # tenta carregar JSON
        try:
            data = json.loads(resposta_llm)
        except json.JSONDecodeError:
            print("[ERRO] A LLM não retornou JSON válido.")
            print(resposta_llm)
            continue

        # --- Decisão ---
        if data["id"] == "00":
            print("Assistente:", data["resposta"])

        else:
            if data["id"] == "01":
                args = data["arguments"]
                resultados = pesquisa_bancos_bacen(args["parametros"], args["valores"])
                print("Assistente (resultados):", json.dumps(resultados, indent=2, ensure_ascii=False))


if __name__ == "__main__":
    main()