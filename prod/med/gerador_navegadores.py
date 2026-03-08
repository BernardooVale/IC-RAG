def gerar_navegadores_json(nome_arquivo_entrada, nome_arquivo_saida="navegadores_json.py"):
    print(f"Lendo IDs do arquivo: {nome_arquivo_entrada}")

    try:
        with open(nome_arquivo_entrada, 'r', encoding='utf-8') as arquivo_in:
            linhas = arquivo_in.readlines()
    except FileNotFoundError:
        print(f"Erro: O arquivo de entrada '{nome_arquivo_entrada}' não foi encontrado.")
        return

    conteudo_py = ""
    ids_processados = []

    for linha in linhas:
        try:
            partes = linha.strip().split(" - ")

            # Espera exatamente 3 partes: id | tupla | qtd
            if len(partes) != 3:
                continue

            parte_id = partes[0].strip()
            tupla_str = partes[1].strip()  # <-- Aqui pegamos o conteúdo entre ()

            if parte_id.isdigit():
                id_linha = int(parte_id)

                if id_linha in ids_processados:
                    continue  # evita duplicação

                ids_processados.append(id_linha)

                funcao_str = (
                    f"def navegador_id{id_linha}(jsonStr, idEndpoint):\n"
                    f"    # {tupla_str}\n"
                    f"    \n"
                    f"    obj = json.loads(jsonStr)\n"
                    f"    obj = obj\n"
                    f"    \n"
                    f"    if isinstance(obj, dict):\n"
                    f"      return list(obj.keys())\n"
                    f"    \n"
                    f"    if isinstance(obj, list):\n"
                    f"      item = obj[0]\n"
                    f"      if isinstance(item, dict):\n"
                    f"          return list(item.keys())\n"
                    f"      if isinstance(item,list):\n"
                    f"          return list(item[0].keys())\n"
                    f"    \n\n"
                )

                conteudo_py += funcao_str

        except Exception:
            continue

    conteudo_py = conteudo_py.strip()

    try:
        with open(nome_arquivo_saida, 'w', encoding='utf-8') as arquivo_out:
            arquivo_out.write(conteudo_py)

        print(f"Arquivo '{nome_arquivo_saida}' criado com sucesso!")
        print(f"Total de funções geradas: {len(ids_processados)}")

    except Exception as e:
        print(f"Erro ao escrever no arquivo de saída: {e}")

# Nome do seu arquivo de entrada (se estiver diferente, altere aqui)
nome_do_arquivo_txt = "tuplas_ordenadas.txt" 

# Chamada da função para executar o processo
gerar_navegadores_json(nome_arquivo_entrada=nome_do_arquivo_txt)