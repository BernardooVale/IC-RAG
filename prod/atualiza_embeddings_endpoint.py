# -*- coding: utf-8 -*-
"""
Script para atualizar embeddings dos endpoints com nova estrutura.

Nova estrutura de embedding:
- Nome do endpoint (ShortName ou Name)
- Descrição (campo Description)
- Colunas retornadas pelo endpoint (extraídas via navegadores)

Autor: Sistema de Atualização de Embeddings
Data: 2025
"""

from bd import integracaoBD
from typing import List, Dict, Any, Optional, Tuple
import ollama
import json
import ast
import os
import navegadores_json

class AtualizadorEmbeddings:
    """
    Classe responsável por atualizar embeddings dos endpoints.
    
    Fluxo:
    1. Buscar endpoints do banco
    2. Para cada endpoint:
       a. Obter nome e descrição
       b. Extrair colunas retornadas (via navegadores)
       c. Concatenar informações
       d. Gerar embedding
       e. Atualizar no banco
    """
    
    def __init__(
        self,
        bd: integracaoBD,
        modelo_embedding: str = "embeddinggemma:latest",
        caminho_med: str = "med"
    ):
        """
        Inicializa o atualizador.
        
        Args:
            bd: Instância da integração com banco de dados
            modelo_embedding: Nome do modelo Ollama para embeddings
            caminho_med: Caminho para pasta com arquivos de mapeamento
        """
        self.bd = bd
        self.modelo_embedding = modelo_embedding
        self.caminho_med = caminho_med
        self.ollama_client = ollama.Client()
        
        # Caminhos dos arquivos
        self.caminho_endpoint_map = os.path.join(caminho_med, "endpoint_map.json")
        self.caminho_tuplas = os.path.join(caminho_med, "tuplas_ordenadas.txt")
        self.caminho_navegadores = "map_navegadores.json"
        
        # Cache para otimização
        self.cache_tuplas: Optional[Dict[Tuple, int]] = None
        self.cache_navegadores: Optional[Dict[int, str]] = None
    
    def carregar_endpoint_map(self) -> Dict[str, List[str]]:
        """
        Carrega mapeamento endpoint_id -> lista de strings (tuplas).
        
        Returns:
            Dicionário {endpoint_id: [lista_de_strings]}
        """
        try:
            with open(self.caminho_endpoint_map, 'r', encoding='utf-8') as f:
                endpoint_map = json.load(f)
        
            return endpoint_map
        except FileNotFoundError:
        
            return {}
        except json.JSONDecodeError as e:
        
            return {}
    
    def carregar_tuplas_ordenadas(self) -> Dict[Tuple, int]:
        """
        Carrega arquivo tuplas_ordenadas.txt e cria dicionário.
        
        Formato do arquivo:
        1 - ('@odata.context', 'value') - 158
        2 - () - 90
        
        Returns:
            Dicionário {tupla: numero1}
        """
        if self.cache_tuplas is not None:
            return self.cache_tuplas
        
        tuplas_dict = {}
        
        try:
            with open(self.caminho_tuplas, 'r', encoding='utf-8') as f:
                for linha in f:
                    linha = linha.strip()
                    if not linha:
                        continue
                    
                    # Parse: numero1 - tupla - numero2
                    partes = linha.split(' - ')
                    if len(partes) != 3:
                    
                        continue
                    
                    numero1 = int(partes[0].strip())
                    tupla_str = partes[1].strip()
                    
                    # Converter string para tupla real
                    try:
                        tupla = ast.literal_eval(tupla_str)
                        tuplas_dict[tupla] = numero1
                    except (ValueError, SyntaxError) as e:
                    
                        continue
            
        
            self.cache_tuplas = tuplas_dict
            return tuplas_dict
            
        except FileNotFoundError:
        
            return {}
    
    def carregar_navegadores(self) -> Dict[int, str]:
        """
        Carrega map_navegadores.json.
        
        Returns:
            Dicionário {numero1: nome_funcao}
        """
        if self.cache_navegadores is not None:
            return self.cache_navegadores
        
        try:
            with open(self.caminho_navegadores, 'r', encoding='utf-8') as f:
                navegadores = json.load(f)
            
            # Converter chaves de string para int se necessário
            navegadores_int = {
                int(k): v for k, v in navegadores.items()
            }
            
            self.cache_navegadores = navegadores_int
            return navegadores_int
            
        except FileNotFoundError:
            return {}
        except json.JSONDecodeError as e:
            return {}
    
    def encontrar_numero_tupla(
        self,
        lista_strings: List[str],
        tuplas_dict: Dict[Tuple, int]
    ) -> Optional[int]:
        """
        Converte lista de strings em tupla e busca numero1 correspondente.
        
        Args:
            lista_strings: Lista de strings do endpoint_map.json
            tuplas_dict: Dicionário de tuplas carregado
        
        Returns:
            numero1 correspondente ou None se não encontrado
        """
        # Converter lista de strings em tupla
        tupla = tuple(lista_strings)
        
        # Buscar no dicionário
        numero1 = tuplas_dict.get(tupla)
        
        if numero1 is None:
            pass
        
        return numero1
    
    def obter_response_example(self, endpoint_id: int) -> Optional[str]:
        """
        Busca ResponseExample da tabela [Respostas da API].
        
        Args:
            endpoint_id: ID do ApiResponseId
        
        Returns:
            String JSON do exemplo de resposta ou None
        """
        query = f"""
        SELECT ResponseExample 
        FROM [Respostas da API] 
        WHERE Id = {endpoint_id}
        """
        
        try:
            resultados = self.bd.executaQuery(query)
            
            if resultados and len(resultados) > 0:
                return resultados[0].get('ResponseExample')
            else:
                return None
                
        except Exception as e:
            return None
    
    def extrair_colunas_endpoint(
        self,
        endpoint_id: int,
        endpointResponseId: int,
        endpoint_map: Dict[str, List[str]],
        tuplas_dict: Dict[Tuple, int],
        navegadores: Dict[int, str]
    ) -> List[str]:
        """
        Extrai nomes das colunas retornadas por um endpoint.
        
        Fluxo:
        1. Buscar lista de strings no endpoint_map.json
        2. Converter para tupla e encontrar numero1
        3. Buscar função navegadora correspondente
        4. Buscar ResponseExample do banco
        5. Executar função navegadora
        6. Retornar lista de colunas
        
        Args:
            endpoint_id: ID do endpoint
            endpoint_map: Dicionário de endpoint_map.json
            tuplas_dict: Dicionário de tuplas
            navegadores: Dicionário de funções navegadoras
        
        Returns:
            Lista de nomes das colunas
        """
        
        # 1. Buscar lista de strings no endpoint_map
        lista_strings = endpoint_map.get(str(endpoint_id))
        
        if lista_strings is None:
            return []
        
        # 2. Encontrar numero1 correspondente à tupla
        numero1 = self.encontrar_numero_tupla(lista_strings, tuplas_dict)
        
        if numero1 is None:
            return []
        
        # 3. Buscar função navegadora
        nome_funcao = navegadores.get(numero1)
        
        if nome_funcao is None:
            return []
        
        # 4. Buscar ResponseExample
        json_str = self.obter_response_example(endpointResponseId)
        
        if json_str is None:
            return []
        
        # 5. Executar função navegadora
        try:
            colunas = self.executar_navegador(nome_funcao, json_str, endpoint_id)
            return colunas
            
        except Exception as e:
            return []
    
    def executar_navegador(
        self,
        nome_funcao: str,
        json_str: str,
        endpoint_id: int
    ) -> List[str]:
        """
        Executa função navegadora para extrair colunas.
        
        NOTA: Esta implementação assume que as funções navegadoras
        estão em um módulo chamado 'navegadores'.
        Ajuste conforme sua estrutura real.
        
        Args:
            nome_funcao: Nome da função a executar
            json_str: JSON string do ResponseExample
            endpoint_id: ID do endpoint
        
        Returns:
            Lista de nomes das colunas
        """
        try:
            
            # Obter função pelo nome
            funcao = getattr(navegadores_json, nome_funcao, None)
            
            if funcao is None:
                return []
            
            # Executar função
            colunas = funcao(json_str, endpoint_id)
            
            return colunas
            
        except ImportError:
            return []
        except Exception as e:
            return []
    
    def construir_texto_embedding(
        self,
        nome: str,
        descricao: Optional[str],
        colunas: List[str]
    ) -> str:
        """
        Constrói texto final para gerar embedding.
        
        Formato:
        "{Nome}. {Descrição}. Retorna as seguintes colunas: {col1, col2, ...}"
        
        Args:
            nome: Nome do endpoint
            descricao: Descrição do endpoint
            colunas: Lista de colunas retornadas
        
        Returns:
            Texto concatenado
        """
        partes = []
        
        # Nome
        if nome:
            partes.append(nome)
        
        # Descrição
        if descricao and descricao.strip():
            partes.append(descricao.strip())
        
        # Colunas
        if colunas:
            colunas_str = ", ".join(colunas)
            partes.append(f"Retorna as seguintes colunas: {colunas_str}")
        
        # Juntar tudo
        texto_final = ". ".join(partes)
        
        return texto_final
    
    def gerar_embedding(self, texto: str) -> List[float]:
        """
        Gera embedding usando Ollama.
        
        Args:
            texto: Texto para gerar embedding
        
        Returns:
            Lista de floats (vetor de embedding)
        """
        try:
            resposta = self.ollama_client.embed(
                model=self.modelo_embedding,
                input=texto
            )
            return resposta["embeddings"][0]
            
        except Exception as e:
            return []
    
    def processar_endpoint(
        self,
        endpoint: Dict[str, Any],
        endpoint_map: Dict[str, List[str]],
        tuplas_dict: Dict[Tuple, int],
        navegadores: Dict[int, str]
    ) -> Optional[Dict[str, Any]]:
        """
        Processa um único endpoint: extrai informações e gera embedding.
        
        Args:
            endpoint: Dados do endpoint do banco
            endpoint_map: Mapeamento de endpoints
            tuplas_dict: Dicionário de tuplas
            navegadores: Dicionário de navegadores
        
        Returns:
            Dicionário com dados para atualizar banco ou None em caso de erro
        """
        endpoint_id = endpoint["Id"]
        endpointResponseId = endpoint["ApiResponseId"]
        
        # 1. Obter nome (prioriza ShortName)
        nome = endpoint.get("ShortName") or endpoint.get("Name")
        
        if not nome:
            nome = f"Endpoint {endpoint_id}"
        
        # 2. Obter descrição
        descricao = endpoint.get("Description", "")
        
        # 3. Extrair colunas retornadas
        colunas = self.extrair_colunas_endpoint(
            endpoint_id,
            endpointResponseId,
            endpoint_map,
            tuplas_dict,
            navegadores
        )
        
        # 4. Construir texto para embedding
        texto_embedding = self.construir_texto_embedding(nome, descricao, colunas)
        
        # 5. Gerar embedding
        embedding = None
        embedding = self.gerar_embedding(texto_embedding)
        
        if not embedding:
            return None
        
        # 6. Preparar dicionário para atualização
        dados_atualizacao = {
            "Id": endpoint_id,
            "Name": endpoint.get("Name"),
            "Url": endpoint.get("Url"),
            "Documentation": endpoint.get("Documentation"),
            "ResponseType": endpoint.get("ResponseType"),
            "idApi": endpoint.get("idApi"),
            "Embedding_Text": texto_embedding,
            "embedding": embedding
        }
        
        return dados_atualizacao
    
    def atualizar_todos_embeddings(self):
        """
        Método principal: atualiza embeddings de todos os endpoints.
        
        Fluxo completo:
        1. Carregar arquivos de mapeamento
        2. Buscar endpoints do banco
        3. Processar cada endpoint
        4. Atualizar embeddings no banco
        """
        
        # 1. Carregar arquivos de mapeamento
        endpoint_map = self.carregar_endpoint_map()
        tuplas_dict = self.carregar_tuplas_ordenadas()
        navegadores = self.carregar_navegadores()
        
        if not endpoint_map or not tuplas_dict or not navegadores:
            return
        
        # 2. Buscar endpoints do banco
        query_endpoints = """
        SELECT 
            E.Id, 
            E.Name, 
            E.Url, 
            E.ShortName,
            E.Description,
            E.ApiResponseId,
            A.Documentation,
            A.ResponseType,
            A.Id as idApi
        FROM [Endpoints da API] AS E
        INNER JOIN APIs AS A
            ON E.ApiId = A.Id;
        """
        
        endpoints = self.bd.executaQuery(query_endpoints)
        
        # 3. Processar cada endpoint
        total = len(endpoints)
        falhas = 0
        
        for i, endpoint in enumerate(endpoints, 1):
            
            try:
                dados_atualizacao = self.processar_endpoint(
                    endpoint,
                    endpoint_map,
                    tuplas_dict,
                    navegadores
                )
                
                if dados_atualizacao:
                    # 4. Atualizar no banco
                    self.bd.atualizaEmbeddingEndpoint(dados_atualizacao)
                    print(dados_atualizacao)
                else:
                    falhas += 1
                    
            except Exception as e:
                falhas += 1
        
        if falhas > 0:
            print(f"Erros: {falhas} | {falhas/total}")


# ============================================================================
# EXECUÇÃO PRINCIPAL
# ============================================================================

def execucaoModular():
    
    bd = integracaoBD()
    
    # Criar atualizador
    atualizador = AtualizadorEmbeddings(
        bd=bd,
        modelo_embedding="embeddinggemma:latest",
        caminho_med="med"
    )
    
    try:
        # Executar atualização
        atualizador.atualizar_todos_embeddings()
        
    except KeyboardInterrupt:
        pass
        
    except Exception as e:
        pass
        
    finally:
        # Fechar conexão
        bd.fecharConexao()

if __name__ == "__main__":
    execucaoModular()