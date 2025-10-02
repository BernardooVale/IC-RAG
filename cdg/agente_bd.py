from datetime import datetime
import json
import psycopg2
from dotenv import load_dotenv
import os
import re
import requests

from integracao_bd import integracaoBD

class agenteBD:
    
    def __init__(self, modelo, integracaoBd: integracaoBD):
        
        self.integracaoBd = integracaoBd
        
        # dados para exeucao da classe
        self.modelo = modelo
        self.mapFuncoesApis = {
            1: self.agencias_bacen
        }
        self.queriesCriacao = {
            1: """
                CREATE TABLE IF NOT EXISTS agencias_bancarias (
                    nomeIf TEXT,
                    segmento TEXT,
                    codigoCompe TEXT,
                    nomeAgencia TEXT,
                    endereco TEXT,
                    bairro TEXT,
                    cep TEXT,
                    municipioIbge TEXT,
                    municipio TEXT,
                    estado TEXT,
                    dataInicio DATE,
                    telefone TEXT,
                    posicao DATE,
                    cnpj TEXT PRIMARY KEY
                );
            """,
        }
        self.tabelasCriadas = []
    
    def controleConsulta(self, msgUsuario, ids):
        
        for id in ids:
            self.criaTabela(id)
            self.mapFuncoesApis.get(id)()
            
        return self.resposta(msgUsuario, ids)
        
    def criaTabela(self, id):
        self.integracaoBd.criaTabelaTemp(self.queriesCriacao.get(id))
    
    def resposta(self, msgUsuario: str, ids: list):
        
        msg = f"""
        
            Gere um comando em SQL que visa resolver essa questao: {msgUsuario}
            O comando ira rodar em uma base de dados representada abaixo:
        """
        
        for id in ids:
            msg += f"\n {self.queriesCriacao.get(id)}"
        
        msg += """
            \n 
            Retorne apenas o comando em SQL, sem aspas ou identificação, ou seja apenas o que estiver entre "select" e ";"
            Sempre use operadores ILIKE '%valor%' em vez de igualdade.
        """
        
        retorno = self.modelo.invoke(msg)
        resposta = retorno.content
        
        resposta_limpa = re.sub(r"```.*?```", "", resposta, flags=re.DOTALL).strip()
        match = re.search(r"(select.*?)(;|$)", resposta_limpa, flags=re.IGNORECASE | re.DOTALL)

        query = None
        if match:
            query = match.group(1) + ";"   # pega o texto da captura
            query = re.sub(r"=\s*'([^']+)'", r"ILIKE '%\1%'", query)
            query = re.sub(r"\bLIKE\b", "ILIKE", query, flags=re.IGNORECASE)
            print("Query extraída:", query)

        print("===========================")
        print(retorno)
        print(resposta)
        print(query)
        print("===========================")

        if query and query.strip().lower().startswith("select"):  # só permite consultas

            return self.integracaoBd.executaQuery(query)
            
        return "Escrita nao permitida"
    
    def agencias_bacen(self):
        
        self.tabelasCriadas.append("agencias_bancarias")
        
        link = "https://olinda.bcb.gov.br/olinda/servico/Informes_Agencias/versao/v1/odata/Agencias/"
        params = {
            "$format": "json",              # Retorno em JSON
            #"$top": 1000,                  # Quantas agências trazer por requisição (máximo permitido)
            # "$skip": 0,                   # Para paginação (se quiser trazer mais de 1000)
            # "$select": "CnpjBase,CnpjSequencial,CnpjDv,NomeIf,Segmento,CodigoCompe,NomeAgencia,Endereco,Numero,Complemento,Bairro,Cep,MunicipioIbge,Municipio,UF,DataInicio,DDD,Telefone,Posicao,CNPJ"
        }
        
        response = requests.get(link, params=params)
        data = response.json()

        # Normalmente os registros estão em data['value']
        agencias = data.get('value', [])
        # Pega apenas as 10 primeiras agências como dicionários
        agenciasLTDA = agencias[:10]  
        colunasRemover = ['DDD', 'Numero', 'Complemento', 'CnpjBase', 'CnpjSequencial', 'CnpjDv', 'UF']

        for agencia in agenciasLTDA:
            
            # trata os dados
            agencia['Telefone'] = agencia['DDD'].strip() + ' ' + agencia['Telefone'].strip()
            agencia['CNPJ'] = agencia['CnpjBase'] + agencia['CnpjSequencial'] + agencia['CnpjDv']
            agencia["DataInicio"] = self.format_data_escrita(agencia["DataInicio"])
            agencia["Posicao"] = self.format_data_escrita(agencia["Posicao"])
            agencia['Endereco'] = self.padroniza_endereco(agencia['Endereco']) + ' ' + agencia['Numero'] + ' ' + agencia['Complemento']
            agencia['estado'] = self.padronizaUF(agencia['UF'])
            agencia['Cep'] = self.padronizaCEP(agencia['Cep'])

            # remove colunas indesejadas
            for coluna in colunasRemover:
                agencia.pop(coluna, None)  # None evita erro se a chave não existir

            # popula no banco
            self.integracaoBd.populaTabelaTemp("agencias_bancarias", agencia)

    
    def format_data_escrita(self, data_str):
        return datetime.strptime(data_str, "%d/%m/%Y").date() if data_str else None


    def padroniza_endereco(self, endereco: str) -> str:
        if not endereco:
            return endereco

        endereco = endereco.strip()

        # Caminho 1: abreviação sem espaço
        endereco = re.sub(
            r'^av\.(?=\w)',  # av. seguido de letra
            'AVENIDA ',
            endereco,
            flags=re.IGNORECASE
        )
        endereco = re.sub(
            r'^r\.(?=\w)',  # r. seguido de letra
            'RUA ',
            endereco,
            flags=re.IGNORECASE
        )

        # Caminho 2: abreviação ou palavra normal seguida de espaço
        endereco = re.sub(
            r'^(av\.?|avenida)\s+',  # av., avenida seguidos de espaço
            'AVENIDA ',
            endereco,
            flags=re.IGNORECASE
        )
        endereco = re.sub(
            r'^(r\.?|rua)\s+',  # r., rua seguidos de espaço
            'RUA ',
            endereco,
            flags=re.IGNORECASE
        )

        # Caixa alta para todo o endereço
        return endereco.upper()

    def padronizaUF(self, uf):
        
        nomeEstados = {
            "AC": "Acre AC",
            "AL": "Alagoas AL",
            "AP": "Amapa AP",
            "AM": "Amazonas AM",
            "BA": "Bahia BA",
            "CE": "Ceara CE",
            "DF": "Distrito Federal DF",
            "ES": "Espirito Santo ES",
            "GO": "Goias GO",
            "MA": "Maranhao MA",
            "MT": "Mato Grosso MT",
            "MS": "Mato Grosso do Sul",
            "MG": "Minas Gerais MG",
            "PA": "Para PA",
            "PB": "Paraiba PB",
            "PR": "Parana PR",
            "PE": "Pernambuco PB",
            "PI": "Piaui PI",
            "RJ": "Rio de Janeiro RJ",
            "RN": "Rio Grande do Norte RN",
            "RS": "Rio Grande do Sul RS",
            "RO": "Rondonia RO",
            "RR": "Roraima RR",
            "SC": "Santa Catarina SC",
            "SP": "Sao Paulo SP",
            "SE": "Sergipe SE",
            "TO": "Tocantins TO"
        }
        
        return nomeEstados[uf].upper()

    def padronizaCEP(self, cep: str):
        return cep.replace("-", "")
    
    def apagaBD(self):
        for tabela in self.tabelasCriadas:
            self.integracaoBd.apagaTabelas(tabela)
    
    def bancosBacen(self, msgUsuario):
        
        msg = f"""
        
            ###Input
            Gere um comando em SQL que visa resolver essa questao: {msgUsuario}
            O comando ira rodar em uma base de dados representada abaixo:
            
            CREATE OR REPLACE VIEW agencias_view AS
            SELECT
                CnpjBase || CnpjSequencial || CnpjDv AS cnpj,
                NomeIf,
                Segmento,
                CodigoCompe,
                NomeAgencia,
                Endereco || ' ' || Numero || ' ' || Complemento AS endereco,
                Bairro,
                Cep,
                MunicipioIbge,
                Municipio,
                UF,
                DataInicio,
                DDD || ' ' || Telefone AS telefone,
                Posicao
            FROM agenciasBancariasBacen;
            
            Retorne apenas o comando em SQL, sem aspas ou identificação, ou seja apenas o que estiver entre "select" e ";"
            Sempre use operadores LIKE '%valor%' em vez de igualdade.
        """
        
        retorno = self.modelo.invoke(msg)
        resposta = retorno.content
        
        resposta_limpa = re.sub(r"```.*?```", "", resposta, flags=re.DOTALL).strip()
        match = re.search(r"(select.*?);", resposta_limpa, flags=re.IGNORECASE | re.DOTALL)

        query = None
        if match:
            query = match.group(1) + ";"   # pega o texto da captura
            query = re.sub(r"=\s*'([^']+)'", r"LIKE '%\1%'", query)
            print("Query extraída:", query)

        print("===========================")
        print(retorno)
        print(resposta)
        print(query)
        print("===========================")

        if query and query.strip().lower().startswith("select"):  # só permite consultas
            try:
                conexao = psycopg2.connect(
                    host=self.host,
                    dbname=self.dbName,
                    user=self.user,
                    password=self.senha,
                    port=self.port
                )
                cur = conexao.cursor()

                cur.execute(query)
                colunas = [desc[0] for desc in cur.description]
                linhas = cur.fetchall()
                # transforma tuplas em dicts
                resultado = [dict(zip(colunas, linha)) for linha in linhas]

                cur.close()
                conexao.close()
                return resultado

            except Exception as e:
                print(f"Erro ao executar consulta: {e}")
                return None
            
        return "Escrita nao permitida"