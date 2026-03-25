import pyodbc
import os

DRIVER_NAME = 'ODBC Driver 17 for SQL Server'
SERVER_NAME = '.'

CONNECTION_STRING = (
    f'DRIVER={{{DRIVER_NAME}}};'
    f'SERVER={SERVER_NAME};'
    'DATABASE=master;'
    'Trusted_Connection=yes;'
)

# Converte para caminho absoluto — necessário porque o SQL Server
# interpreta o caminho no contexto do servidor, não do Python
backup_path = os.path.abspath('sql_atualizado/ic.bak')
print(f'Caminho do backup: {backup_path}')

# Descobre os caminhos padrão de dados e logs do SQL Server
def get_sql_server_default_paths(cursor):
    cursor.execute("SELECT SERVERPROPERTY('InstanceDefaultDataPath')")
    data_path = cursor.fetchone()[0]
    cursor.execute("SELECT SERVERPROPERTY('InstanceDefaultLogPath')")
    log_path = cursor.fetchone()[0]
    return data_path, log_path

# Descobre os nomes lógicos dos arquivos dentro do .bak
def get_logical_names(cursor, backup_path):
    cursor.execute(f"RESTORE FILELISTONLY FROM DISK = '{backup_path}'")
    rows = cursor.fetchall()
    logical = {}
    for row in rows:
        logical_name = row[0]   # LogicalName
        file_type = row[2]      # Type: 'D' = data, 'L' = log
        logical[file_type] = logical_name
    return logical

try:
    conexao = pyodbc.connect(CONNECTION_STRING, autocommit=True)
    cursor = conexao.cursor()

    data_path, log_path = get_sql_server_default_paths(cursor)
    print(f'Data path: {data_path}')
    print(f'Log path:  {log_path}')

    logical = get_logical_names(cursor, backup_path)
    data_logical = logical.get('D', 'ic')
    log_logical  = logical.get('L', 'ic_log')
    print(f'Arquivo lógico de dados: {data_logical}')
    print(f'Arquivo lógico de log:   {log_logical}')

    restore_query = f"""
    RESTORE DATABASE ic 
    FROM DISK = '{backup_path}'
    WITH REPLACE,
         MOVE '{data_logical}' TO '{data_path}ic.mdf',
         MOVE '{log_logical}'  TO '{log_path}ic_log.ldf'
    """

    print('Restaurando banco de dados...')
    cursor.execute(restore_query)
    print('Banco de dados restaurado com sucesso!')

except pyodbc.Error as e:
    print(f'Erro ao restaurar o banco: {e}')

finally:
    cursor.close()
    conexao.close()