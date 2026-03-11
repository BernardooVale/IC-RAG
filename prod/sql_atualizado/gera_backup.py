import pyodbc

DRIVER_NAME = 'ODBC Driver 17 for SQL Server'
SERVER_NAME = '.'
DATABASE_NAME = 'ic'
BACKUP_PATH = r"C:/backup/ic.bak"
NOME_BACKUP = "ic_11_03"

CONNECTION_STRING = (
    f'DRIVER={{{DRIVER_NAME}}};'
    f'SERVER={SERVER_NAME};'
    f'DATABASE={DATABASE_NAME};'
    'Trusted_Connection=yes;'
)

conn = pyodbc.connect(CONNECTION_STRING, autocommit=True)
cursor = conn.cursor()

sql = f"""
BACKUP DATABASE [{DATABASE_NAME}]
TO DISK = '{BACKUP_PATH}'
WITH FORMAT, INIT,
NAME = '{NOME_BACKUP}';
"""

cursor.execute(sql)
print(cursor.messages)

cursor.close()
conn.close()

print("Backup concluído.")