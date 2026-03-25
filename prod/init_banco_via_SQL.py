import pyodbc

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
    con.execute("IF NOT EXISTS (SELECT name FROM sys.databases WHERE name = 'ic') CREATE DATABASE ic")

with pyodbc.connect(CONNECTION_STRING, autocommit=True) as conexao:
    cursor = conexao.cursor()
    for sql_file in sql_files:
        print(f'Executando {sql_file}...')
        with open('sql_original/' + sql_file, 'r', encoding='utf-8') as file:
            sql_script = file.read()

        blocos = [b.strip() for b in sql_script.split('GO') if b.strip()]
        for bloco in blocos:
            cursor.execute(bloco)

        print(f'{sql_file} executado com sucesso!')

print('Todos os scripts foram executados!')