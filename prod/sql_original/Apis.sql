-- Criar tabela

CREATE TABLE APIs (
    Id INT IDENTITY(1,1) NOT NULL PRIMARY KEY,                   
    Name VARCHAR(100) NOT NULL,                                     
    Description VARCHAR(300) NOT NULL,                              
    BaseUrl VARCHAR(500) NOT NULL,                                 
    Documentation VARCHAR(500) NOT NULL,                          
    ResponseType VARCHAR(20) NOT NULL,                              
    CollectionDate DATE NOT NULL,                             
    Authentication INT NOT NULL,                 -- Enum: 0=Sim, 1=Não
    Version VARCHAR(10) NULL,                                      
    InstitutionId INT NOT NULL,                                     
    LastApiUpdateDate DATE NULL,                                 
    Classification VARCHAR(60) NULL,

    FOREIGN KEY (InstitutionId) REFERENCES Instituições(Id)
);

-- Inserir dados

INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'API Cadprev',
    N'Dados sobre o Sistema de Informações dos Regimes Públicos de Previdência Social.',
    N'https://apicadprev.economia.gov.br/',
    N'https://apicadprev.economia.gov.br/api-docs/#/',
    'JSON',
    '2023-09-26',
    1,
    '1.0.0',
    1,
    NULL,
    N'Previdência Social'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'API de dados agregados do IBGE',
    N'Dados agregados das pesquisas e censos realizados pelo IBGE.',
    N'https://servicodados.ibge.gov.br/api/v3/agregados',
    N'https://servicodados.ibge.gov.br/api/docs/agregados?versao=3',
    'JSON',
    '2023-07-30',
    1,
    '3.0.0',
    2,
    NULL,
    N'Pesquisa e Desenvolvimento'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'Operadoras API',
    N'Dados sobre operadoras com registro ativo na ANS (autorizadas a vender planos de saúde no Brasil), elaborada a partir de informações fornecidas pelas próprias empresas.',
    N'https://www.ans.gov.br/operadoras-entity/v1/',
    N'https://www.ans.gov.br/operadoras-entity/v1/swagger-ui/index.html?configUrl=/operadoras-entity/v1/v3/api-docs/swagger-config',
    'JSON',
    '2023-06-18',
    1,
    '2.0.6',
    3,
    NULL,
    N'Assistência Hospitalar e Ambulatorial'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'Ipea Api',
    N'Dados do Atlas do Estado Brasileiro, que abrange informações sobre o funcionalismo público.',
    N'https://www.ipea.gov.br/atlasestado/',
    N'https://www.ipea.gov.br/atlasestado/api',
    'JSON',
    '2023-09-20',
    1,
    '1',
    4,
    NULL,
    N'Pesquisa e Desenvolvimento'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'Ipeadata - Api de consulta',
    N'Dados macroeconômicos, regionais e sociais.',
    N'http://www.ipeadata.gov.br/api/odata4/',
    N'http://www.ipeadata.gov.br/api/',
    'JSON',
    '2023-09-21',
    1,
    '1',
    4,
    NULL,
    N'Pesquisa e Desenvolvimento'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'Indicadores de gestão do Banco Central do Brasil',
    N'Conjunto de indicadores distribuídos pela cadeia de valor do Bacen e vinculados a seus processos chaves.',
    N'https://olinda.bcb.gov.br/olinda/servico/',
    N'https://dados.gov.br/dados/conjuntos-dados/indicadores-gestao-banco-central-do-brasil',
    'JSON',
    '2023-10-22',
    1,
    '1',
    5,
    NULL,
    N'Economia e Finanças'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'Previsão de Tempo em XML - CPTEC/INPE',
    N'Os dados da Previsão de Tempo, IUV e Ondas em XML possibilita a recuperação de informações atualizadas do CPTEC/INPE para sua localidade.',
    N'http://servicos.cptec.inpe.br/XML/',
    N'http://servicos.cptec.inpe.br/XML/',
    'XML',
    '2023-11-19',
    1,
    '1',
    8,
    NULL,
    N'Clima'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'Dados Abertos de Custos com Depreciação do Governo Federal',
    N'APIs disponibilizadas pelo Tesouro Nacional.',
    N'https://apidatalake.tesouro.gov.br/',
    N'https://www.tesourotransparente.gov.br/ckan/dataset/custos-por-itens-de-custos-depreciacao',
    'JSON',
    '2023-07-01',
    1,
    '1.0.0',
    6,
    NULL,
    N'Economia e Finanças'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'SADIPEM API',
    N'Dados abertos da Secretaria do Tesouro Nacional.',
    N'apidatalake.tesouro.gov.br/ords/sadipem/tt/',
    N'https://apidatalake.tesouro.gov.br/docs/sadipem/',
    'JSON',
    '2023-06-30',
    1,
    '1.1.0',
    6,
    NULL,
    N'Fiscalização do Estado'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'SICONFI API',
    N'Ferramenta destinada ao recebimento de informações contábeis, financeiras e de estatísticas fiscais oriundas de municípios, estados, o DF e União, e o uso destina-se tanto aos entes federados quanto à sociedade civil.',
    N'apidatalake.tesouro.gov.br/ords/siconfi/tt/',
    N'https://www.gov.br/conecta/catalogo/apis/siconfi-extratos-das-declaracoes-contabeis',
    'JSON',
    '2023-06-26',
    1,
    '1.1.0',
    6,
    NULL,
    N'Fiscalização do Estado'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'DEMAS - API de Dados Abertos',
    N'Disponibilização de dados abertos para repartições pertencentes ao DEMAS.',
    N'https://apidadosabertos.saude.gov.br/',
    N'https://apidadosabertos.saude.gov.br/v1/#/',
    'JSON',
    '2023-08-31',
    0,
    '1.7.0',
    7,
    NULL,
    N'Saúde'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'Open Data Sus',
    N'Notificações de Síndrome Gripal - API ElasticSearch.',
    N'https://elasticsearch-saps.saude.gov.br/desc-esus-notifica-estado-*/_search',
    N'https://dados.gov.br/dados/conjuntos-dados/notificaes-de-sndrome-gripal---api-elasticsearch',
    'JSON',
    '2023-08-28',
    0,
    NULL,
    7,
    NULL,
    N'Saúde'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'API de Compras Governamentais',
    N'Dados sobre compras públicas.',
    N'http://compras.dados.gov.br/',
    N'https://compras.dados.gov.br/docs/home.html',
    'HTML, XML, JSON, CSV',
    '2023-11-15',
    1,
    '1',
    9,
    NULL,
    N'Compras governamentais'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'PNPC',
    N'Consultas aos dados de contratações, alienação de bens móveis e imóveis, atas de registro de preços e contratos realizados no âmbito da Lei n° 14.133/2021.',
    N'https://pncp.gov.br/api/consulta ',
    N'https://www.gov.br/pncp/pt-br/acesso-a-informacao/manuais/ManualPNCPAPIConsultasVerso1.0.pdf',
    'JSON',
    '2023-10-27',
    1,
    '1',
    10,
    NULL,
    N'Administração'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'SALIC API',
    N'Reúne dados a respeito de propostas de projetos culturais a serem incentivados pelo Ministério da Cultura (MINC) por meio da Lei Rouanet.',
    N'http://api.salic.cultura.gov.br/',
    N'https://api.salic.cultura.gov.br/doc/',
    'JSON',
    '2023-09-19',
    1,
    '0.2.1-beta',
    11,
    NULL,
    N'Cultura'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'Legislativo',
    N'Dados sobre a Câmara dos Deputados.',
    N'https://dadosabertos.camara.leg.br/swagger/api.html',
    N'https://dadosabertos.camara.leg.br/swagger/api.html',
    'JSON',
    '2023-09-06',
    1,
    '0.4.144',
    12,
    NULL,
    N'Administração'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'API REST do Portal da Transparência do Governo Federal',
    N'API de dados do Portal da Transparência.',
    N'https://api.portaldatransparencia.gov.br/api-de-dados/',
    N'https://api.portaldatransparencia.gov.br/swagger-ui/index.html#/Viagens%20a%20servi%C3%A7o/viagensPorPeriodoEOrgao',
    'JSON',
    '2023-11-05',
    0,
    '1',
    13,
    NULL,
    N'Administração'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'API REST do Portal de Dados Abertos',
    N'API de dados do Portal de Dados Abertos.',
    N'https://dados.gov.br/dados/api/',
    N'https://dados.gov.br/swagger-ui/index.html#/',
    'JSON',
    '2024-05-03',
    0,
    '1',
    13,
    NULL,
    N'Administração'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'Senado - Serviços de Dados Abertos',
    N'API dos serviços de dados abertos do Senado Federal.',
    N'https://legis.senado.leg.br/dadosabertos/',
    N'https://legis.senado.leg.br/dadosabertos/docs/index.html',
    'JSON, XML, TXT',
    '2024-05-26',
    1,
    '3.2.10',
    14,
    NULL,
    N'Administração'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'API do Banco de Dados Geodésicos (BDG)',
    N'Reúne uma coleção de estações geodésicas, localizadas no país, cujos levantamentos de campo, em sua maioria, foram realizados pelo IBGE, a quem compete a implantação e manutenção do Sistema Geodésico Brasileiro.',
    N'https://servicodados.ibge.gov.br/api/v1/bdg',
    N'https://servicodados.ibge.gov.br/api/v1/bdg#api-_',
    'JSON',
    '2024-10-12',
    1,
    '1.0.0',
    2,
    NULL,
    N'Pesquisa e Desenvolvimento'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'API Calendário',
    N'Calendário de divulgação das pesquisas do IBGE.',
    N'https://servicodados.ibge.gov.br/api/v3/calendario/',
    N'https://servicodados.ibge.gov.br/api/docs/calendario?versao=3',
    'JSON',
    '2024-10-12',
    1,
    '3.0.0',
    2,
    NULL,
    N'Pesquisa e Desenvolvimento'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'API CNAE - Classificação Nacional de Atividades Econômicas',
    N'Classificação oficialmente adotada pelo Sistema Estatístico Nacional na produção de estatísticas por tipo de atividade econômica, e pela Administração Pública, na identificação da atividade econômica em cadastros e registros de pessoa jurídica.',
    N'https://servicodados.ibge.gov.br/api/v2/cnae',
    N'https://servicodados.ibge.gov.br/api/docs/CNAE?versao=2',
    'JSON',
    '2024-10-12',
    1,
    '2.0.0',
    2,
    NULL,
    N'Pesquisa e Desenvolvimento'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'API hgeoHNOR',
    N'Modelo para conversão de altitudes geométricas (dadas pelos GNSS) em altitudes físicas (compatíveis com o Datum Vertical do SGB).',
    N'https://servicodados.ibge.gov.br/api/v1/hgeohnor',
    N'https://servicodados.ibge.gov.br/api/docs/hgeohnor?versao=1',
    'JSON',
    '2024-10-12',
    1,
    '1.0.0',
    2,
    NULL,
    N'Pesquisa e Desenvolvimento'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'API de localidades',
    N'Dados referentes aos países e às divisões político-administrativas do Brasil bem como meso e microrregiões, institucionalizadas pela aprovação da presidência do IBGE da resolução PR nº 51/1989 e pela publicação Divisão regional do Brasil em mesorregiões e microrregiões geográficas.',
    N'https://servicodados.ibge.gov.br/api/v1/localidades',
    N'https://servicodados.ibge.gov.br/api/docs/localidades',
    'JSON',
    '2024-10-12',
    1,
    '1.0.0',
    2,
    NULL,
    N'Pesquisa e Desenvolvimento'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'API de Malhas Geográficas',
    N'Provê malhas simplificadas referentes às unidades político-administrativas do Brasil bem como meso e microrregiões, institucionalizadas pela aprovação da presidência do IBGE da resolução PR nº 51/1989 e pela publicação Divisão regional do Brasil em mesorregiões e microrregiões geográficas.',
    N'https://servicodados.ibge.gov.br/api/v3/malhas',
    N'https://servicodados.ibge.gov.br/api/docs/malhas?versao=3',
    'JSON, SVG, GEO JSON',
    '2024-10-12',
    1,
    '3.0.0',
    2,
    NULL,
    N'Pesquisa e Desenvolvimento'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'API de Metadados',
    N'Dados estruturados sobre as informações estatísticas e geocientíficas produzidas pelo IBGE (também conhecidas como metadados) que ajudarão na sua interpretação e na compreensão de suas características e qualidade.',
    N'http://servicodados.ibge.gov.br/api/v2/metadados',
    N'https://servicodados.ibge.gov.br/api/docs/metadados?versao=2',
    'JSON',
    '2024-10-12',
    1,
    '2.0.0',
    2,
    NULL,
    N'Pesquisa e Desenvolvimento'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'API Nomes',
    N'Coletados pela primeira vez no Censo 2010, informa a frequência dos nomes por década de nascimento.',
    N'https://servicodados.ibge.gov.br/api/v2/censos/nomes',
    N'https://servicodados.ibge.gov.br/api/docs/nomes?versao=2',
    'JSON',
    '2024-10-12',
    1,
    '2.0.0',
    2,
    NULL,
    N'Pesquisa e Desenvolvimento'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'API Notícias',
    N'Nesta API estão disponíveis as notícias e releases sobre as pesquisas, estudos e produtos elaborados pelo IBGE, assim como a produção jornalística da Agência IBGE Notícias.',
    N'http://servicodados.ibge.gov.br/api/v3/noticias/',
    N'https://servicodados.ibge.gov.br/api/docs/noticias?versao=3',
    'JSON',
    '2024-10-12',
    1,
    '3.0.0',
    2,
    NULL,
    N'Pesquisa e Desenvolvimento'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'Países',
    N'Informações sobre os 193 países-membros da Organização das Nações Unidas (ONU). Para esta versão inicial, os identificadores dos países são os definidos pela norma ISO 3166-1 ALPHA-2, que define o identificador do país usando 2 letras.',
    N'https://servicodados.ibge.gov.br/api/v1/paises',
    N'https://servicodados.ibge.gov.br/api/docs/paises',
    'JSON',
    '2024-10-12',
    1,
    '1.0.0',
    2,
    NULL,
    N'Pesquisa e Desenvolvimento'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'API de Pesquisas',
    N'As pesquisas providas por este serviço são um subconjunto da API de Agregados e de outras fontes externas ao IBGE, continuamente enriquecidas e validadas.',
    N'https://servicodados.ibge.gov.br/api/v1/pesquisas',
    N'https://servicodados.ibge.gov.br/api/docs/pesquisas',
    'JSON',
    '2024-10-12',
    1,
    '1.0.0',
    2,
    NULL,
    N'Pesquisa e Desenvolvimento'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'API do Serviço de Posicionamento por Ponto Preciso (IBGE-PPP)',
    N'Oferece ao usuário pós-processamento de dados GNSS (Global Navigation Satellite System), a fim de fornecer posicionamento de precisão, útil em áreas como Topografia e Geodésia, entre outras. ',
    N'https://servicodados.ibge.gov.br/api/v1/ppp',
    N'https://servicodados.ibge.gov.br/api/docs/ppp?versao=1',
    'JSON',
    '2024-10-12',
    1,
    '1.0.0',
    2,
    NULL,
    N'Pesquisa e Desenvolvimento'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'API Produtos',
    N'Produtos de estatísticas e geociências do IBGE. Útil para realizar consultas por um produto específico nas APIs de calendário e de notícias.',
    N'https://servicodados.ibge.gov.br/api/v1/produtos',
    N'https://servicodados.ibge.gov.br/api/docs/produtos?versao=1',
    'JSON',
    '2024-10-12',
    1,
    '1.0.0',
    2,
    NULL,
    N'Pesquisa e Desenvolvimento'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'API ProGrid',
    N'Transforma coordenadas em referenciais clássicos, Córrego Alegre e SAD 69, utilizados oficialmente no Brasil, no atual referencial SIRGAS2000.',
    N'https://servicodados.ibge.gov.br/api/v1/progrid',
    N'https://servicodados.ibge.gov.br/api/docs/progrid?versao=1',
    'JSON',
    '2024-10-12',
    1,
    '1.0.0',
    2,
    NULL,
    N'Pesquisa e Desenvolvimento'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'API Publicações',
    N'Consulta à publicações produzidas pelo IBGE.',
    N'http://servicodados.ibge.gov.br/api/v1/publicacoes',
    N'https://servicodados.ibge.gov.br/api/docs/publicacoes',
    'JSON',
    '2024-10-12',
    1,
    '1.0.0',
    2,
    NULL,
    N'Pesquisa e Desenvolvimento'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'API da Rede Brasileira de Monitoramento Contínuo dos Sistemas GNSS (RBMC)',
    N'Permite ao usuário obter dados das estações geodésicas pertencentes à Rede Brasileira de Monitoramento Contínuo dos Sistemas GNSS (RBMC).',
    N'https://servicodados.ibge.gov.br/api/v1/rbmc/relatorio',
    N'https://servicodados.ibge.gov.br/api/docs/rbmc?versao=1',
    'PDF',
    '2024-10-12',
    1,
    '1.0.0',
    2,
    NULL,
    N'Pesquisa e Desenvolvimento'
);
INSERT INTO APIs 
(Name, Description, BaseUrl, Documentation, ResponseType, CollectionDate, Authentication, Version, InstitutionId, LastApiUpdateDate, Classification)
VALUES (
    N'API da Rede Maregráfica Permanente para Geodésia (RMPG)',
    N'Monitoramento das variações do nível do mar e a relação entre o Datum Vertical Brasileiro e outros níveis de referência maregráficos, bem como subsidiar os estudos de modernização das altitudes brasileiras e de variação do nível do mar.',
    N'https://servicodados.ibge.gov.br/api/v1/rmpg',
    N'https://servicodados.ibge.gov.br/api/docs/rmpg?versao=1',
    'JSON',
    '2024-10-12',
    1,
    '1.0.0',
    2,
    NULL,
    N'Pesquisa e Desenvolvimento'
);