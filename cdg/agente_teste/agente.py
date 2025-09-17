from typing import List, Any
from smolagents import LiteLLMModel, tool, ToolCallingAgent
import os
import json

@tool
def pesquisa_bancos_bacen(parametros: List[str], valores: List[str]) -> Any:
    """
    Chamada genérica à API do Bacen.
    `parametros`: nomes dos campos presentes no JSON ->
        - "CNPJ" cnpj da empresa,
        - "NomeIf" nome do banco,
        - "NomeAgencia" nome da agnecia,
        - "Endereco" endereco da agencia,
        - "Bairro" bairro da agencia,
        - "Cep" cep da agencia,
        - "Municipio" municipio da agencia,
        - "UF" estado da agencia,
        - "DDD" ddd de contato da agencia,
        - "Telefone" telefone de contato da agencia
    `valores`: valores correspondentes (ex: ["12345678000195", "Banco X"])
    Ou seja, a sua chamada deve ter esse tipo de configuracao: pesquisa_bancos_bacen([parametro1, parametro2], [valor1, valor2])
    
    Args:
        parametros (List[str]): Lista de parametros requisitados pelo usuario
        valores (List[str]): Lista dos valores dos respectivos parametros

    Returns:
        Any
    """
    
    print(parametros, valores)
    
    resultados = []
    
    BASE_DIR = os.path.abspath(os.path.join(os.path.dirname("cdg"), ".."))
    JSON_DIR = os.path.join(BASE_DIR, "IC", "IC-RAG", "dados", "bruto", "agencias.jsonl")
    
    with open(JSON_DIR, "r", encoding="utf-8") as f:
        for line in f:
            if not line.strip():
                continue  # ignora linhas vazias
            try:
                item = json.loads(line)
            except json.JSONDecodeError:
                continue  # ignora linhas inválidas

            # Verifica se todos os parâmetros batem com os valores
            if all(str(item.get(param)).replace(" ", "") == valor.replace(" ", "") for param, valor in zip(parametros, valores)):
                resultados.append(item)
    
    return resultados

modelo = LiteLLMModel(
        model_id="ollama_chat/qwen2:7b",
        api_base="http://localhost:11434",
        num_ctx=8192
)

agente = ToolCallingAgent(
        tools=[pesquisa_bancos_bacen],
        model=modelo,
        add_base_tools=False,
)

user_query = "Por favor, me informe os dados do banco com CNPJ 00000000/7687-23"

tarefa = f"""
    Sua funcao e auxiliar um usuario que esta buscando por informacoes em um portal de dados abertos do governo. Ele te fara uma pergunta e voce devera chamar a tool exatam para o servico de acordo com o pedido do usuario.
    Voce devera identificar o parametro e o valor desa requisicao, de acordo com a funcao que esta sendo chamada, ou seja, na descricao das funcoes estara listado todos os possiveis parametros, escolha de acordo com a maior proximidade logica
    Caso nao haja valor referente ao parametro, o parametro nao deve ser adicionado a listas de parametro.
    
    Exemplo de como chamar a função pesquisa_bancos_bacen corretamente:

    {{
        "name": "pesquisa_bancos_bacen",
        "arguments": {{
            "parametros": "Lista de parametros extraidos",
            "valores": "Lista de valores dos respectivos parametros"
        }}
    }}
    
    A mensagem do usuario foi: {user_query}
"""

agente.run(tarefa)