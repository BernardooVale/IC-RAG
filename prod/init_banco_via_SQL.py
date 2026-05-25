import pyodbc
import re

DRIVER_NAME = 'ODBC Driver 17 for SQL Server'
SERVER_NAME = '.'

CONNECTION_STRING_MASTER = (
    f'DRIVER={{{DRIVER_NAME}}};'
    f'SERVER={SERVER_NAME};'
    'DATABASE=master;'
    'Trusted_Connection=yes;'
)

CONNECTION_STRING = (
    f'DRIVER={{{DRIVER_NAME}}};'
    f'SERVER={SERVER_NAME};'
    'DATABASE=ic;'
    'Trusted_Connection=yes;'
)

sql_files = [
    'Institutions.sql',
    'Tags.sql',
    'Parameters.sql',
    'Apis.sql',
    'ApiResponses.sql',
    'ApiEndpoints.sql',
    'EndpointParameters.sql',
    'EndpointTags.sql'
]

with pyodbc.connect(CONNECTION_STRING_MASTER, autocommit=True) as con:
    con.execute("""
        IF EXISTS (SELECT name FROM sys.databases WHERE name = 'ic')
        BEGIN
            ALTER DATABASE ic SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
            DROP DATABASE ic;
        END
        CREATE DATABASE ic;
    """)

with pyodbc.connect(CONNECTION_STRING, autocommit=True) as conexao:
    cursor = conexao.cursor()
    for sql_file in sql_files:
        print(f'\n>>> Processando: {sql_file}')
        
        caminho_arquivo = 'sql_original/' + sql_file
        comando_acumulado = "" # Agora usamos uma string simples para acumular
        linha_inicio_comando = 1

        with open(caminho_arquivo, 'r', encoding='utf-8') as file:
            for num_linha, linha in enumerate(file, 1):
                # Mantemos a linha original (com quebras) para o SQL, 
                # mas usamos uma versão limpa para checagem de controle
                linha_clean = linha.strip()
                
                # Ignora comentários e linhas vazias fora de um comando
                if not comando_acumulado and (not linha_clean or linha_clean.startswith('--')):
                    continue
                
                if not comando_acumulado:
                    linha_inicio_comando = num_linha

                # Se encontrar o "GO" isolado, executa o que tem (caso haja algo)
                if linha_clean.upper() == 'GO':
                    if comando_acumulado.strip():
                        try:
                            cursor.execute(comando_acumulado)
                        except Exception as e:
                            print(f"[ERRO] Bloco na linha {linha_inicio_comando}: {e}")
                        comando_acumulado = ""
                    continue

                # Acumula a linha atual à string principal
                comando_acumulado += linha
                
                # O PONTO CHAVE: Só executa se a linha terminar com );
                if linha_clean.endswith(');'):
                    # Tenta capturar o ID para o log antes de executar
                    match = re.search(r"VALUES\s*\(\s*(\d+)", comando_acumulado, re.IGNORECASE | re.DOTALL)
                    current_id = match.group(1) if match else "N/A"

                    try:
                        # O SQL Server lida bem com as quebras de linha dentro da string
                        cursor.execute(comando_acumulado)
                        comando_acumulado = "" # Reseta para o próximo comando
                    except Exception as e:
                        print(f"\n[!!! ERRO !!!] Arquivo: {sql_file} | Linha: {num_linha} | Id: {current_id}")
                        print(f"Detalhe: {e}")
                        comando_acumulado = "" # Reseta para não travar o loop

            # Caso o arquivo termine e ainda haja algo no acumulador
            if comando_acumulado.strip():
                try:
                    cursor.execute(comando_acumulado)
                except Exception as e:
                    print(f"[ERRO FINAL] {sql_file}: {e}")

        print(f'--- {sql_file} concluído ---')

print('Todos os scripts foram executados!')