-- Criar tabela

CREATE TABLE [Endpoints da API] (
    Id INT NOT NULL PRIMARY KEY,
    ApiId INT NOT NULL,
    Name VARCHAR(200) NOT NULL,
    Url VARCHAR(MAX) NOT NULL,
    Description VARCHAR(999) NOT NULL,
    Example VARCHAR(500) NOT NULL,
    ActiveExample INT NOT NULL,
    ApiResponseId INT NOT NULL,
    ShortName VARCHAR(400) NULL,

    CONSTRAINT FK_Endpoints_Api FOREIGN KEY (ApiId)
        REFERENCES APIs(Id),

    CONSTRAINT FK_Endpoints_ApiResponse FOREIGN KEY (ApiResponseId)
        REFERENCES [Respostas da API](Id)
);

-- Inserir registros.

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    1, 1, 1, 'Aplicações resgate', 'https://apicadprev.economia.gov.br/api-docs/#/DAIR_APLICACOES_RESGATE', 'Seleciona registro da tabela /DAIR_APLICACOES_RESGATE', 'https://apicadprev.trabalho.gov.br/DAIR_APLICACOES_RESGATE', 0, 'Dados de resgate de aplicações bancárias'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    2, 2, 1, 'Carteira', 'https://apicadprev.economia.gov.br/api-docs/#/DAIR_CARTEIRA/get_DAIR_CARTEIRA', 'Seleciona registro da tabela /DAIR_CARTEIRA', 'https://apicadprev.trabalho.gov.br/DAIR_CARTEIRA', 0, 'Carteira de Investimentos'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    3, 3, 1, 'Forma gestão', 'https://apicadprev.economia.gov.br/api-docs/#/DAIR_FORMA_GESTAO/get_DAIR_FORMA_GESTAO', 'Seleciona registro da tabela /DAIR_FORMA_GESTAO', 'https://apicadprev.trabalho.gov.br/DAIR_FORMA_GESTAO', 0, 'Forma de contratação de um contrato'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    4, 4, 1, 'Fundo de investimentos analizados', 'https://apicadprev.economia.gov.br/api-docs/#/DAIR_FUNDO_INVEST_ANALISADOS/get_DAIR_FUNDO_INVEST_ANALISADOS', 'Selecciona registro da tabela /DAIR_FUNDO_INVEST_ANALISADOS', 'https://apicadprev.trabalho.gov.br/DAIR_FUNDO_INVEST_ANALISADOS', 0, 'Dados de fundos de investimentos analizados'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    5, 5, 1, 'Governança', 'https://apicadprev.economia.gov.br/api-docs/#/DAIR_GOVERNANCA/get_DAIR_GOVERNANCA', 'Seleciona registro da tabela /DAIR_GOVERNANCA', 'https://apicadprev.trabalho.gov.br/DAIR_GOVERNANCA', 0, 'Dados sobre a governança de entidades'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    6, 6, 1, 'Identificação', 'https://apicadprev.economia.gov.br/api-docs/#/DAIR_IDENTIFICACAO/get_DAIR_IDENTIFICACAO', 'Seleciona registro da tabela /DAIR_IDENTIFICACAO', 'https://apicadprev.trabalho.gov.br/DAIR_IDENTIFICACAO', 0, 'Identificação de envio de informação por ente'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    7, 7, 1, 'Instituição credenciada', 'https://apicadprev.economia.gov.br/api-docs/#/DAIR_INSTITUICAO_CREDENCIADA/get_DAIR_INSTITUICAO_CREDENCIADA', 'Seleciona registro da tabela /DAIR_INSTITUICAO_CREDENCIADA', 'https://apicadprev.trabalho.gov.br/DAIR_INSTITUICAO_CREDENCIADA', 0, 'Instituições credenciadas'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    8, 8, 1, 'Regime ata', 'https://apicadprev.economia.gov.br/api-docs/#/DAIR_REGIME_ATA/get_DAIR_REGIME_ATA', 'Seleciona registro da tabela /DAIR_REGIME_ATA', 'https://apicadprev.trabalho.gov.br/DAIR_REGIME_ATA', 0, 'Dados sobre atas de reunião'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    9, 9, 1, 'Demonstrativo de informações previdenciárias e repasses', 'https://apicadprev.economia.gov.br/api-docs/#/DIPR/get_DIPR', 'Seleciona registro da tabela /DIPR', 'https://apicadprev.trabalho.gov.br/DIPR', 0, 'Demonstrativo de Repasses previdenciário'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    10, 10, 1, 'Base cálculo de armotizacao', 'https://apicadprev.economia.gov.br/api-docs/#/DRAA_BASE_CALCULO_AMORTIZACAO/get_DRAA_BASE_CALCULO_AMORTIZACAO', 'Seleciona registro da tabela /DRAA_BASE_CALCULO_AMORTIZACAO', 'https://apicadprev.trabalho.gov.br/DRAA_BASE_CALCULO_AMORTIZACAO', 0, 'Base de Cálculo de armotização'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    11, 11, 1, 'Base cálculo ente', 'https://apicadprev.economia.gov.br/api-docs/#/DRAA_BASE_CALCULO_ENTE/get_DRAA_BASE_CALCULO_ENTE', 'Seleciona registro da tabela /DRAA_BASE_CALCULO_ENTE', 'https://apicadprev.trabalho.gov.br/DRAA_BASE_CALCULO_ENTE', 0, 'Base de Cálculo do ente'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    12, 12, 1, 'Comparativo avaliação', 'https://apicadprev.economia.gov.br/api-docs/#/DRAA_COMPARATIVO_AVALIACAO/get_DRAA_COMPARATIVO_AVALIACAO', 'Seleciona registro da tabela /DRAA_COMPARATIVO_AVALIACAO', 'https://apicadprev.trabalho.gov.br/DRAA_COMPARATIVO_AVALIACAO', 0, 'Comparativo de valores para avaliação de uma situação por plano'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    13, 13, 1, 'Comparativo receita', 'https://apicadprev.economia.gov.br/api-docs/#/DRAA_COMPARATIVO_RECEITA/get_DRAA_COMPARATIVO_RECEITA', 'Seleciona registro da tabela /DRAA_COMPARATIVO_RECEITA', 'https://apicadprev.trabalho.gov.br/DRAA_COMPARATIVO_RECEITA', 0, 'Comparativo de valores entre o projetado e o executado.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    14, 14, 1, 'Contribuição', 'https://apicadprev.economia.gov.br/api-docs/#/DRAA_CONTRIBUICAO/get_DRAA_CONTRIBUICAO', 'Seleciona registro da tabela /DRAA_CONTRIBUICAO', 'https://apicadprev.trabalho.gov.br/DRAA_CONTRIBUICAO', 0, 'Valores de contribuição mensal e anual'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    15, 15, 1, 'Custo normal benefícios capital', 'https://apicadprev.economia.gov.br/api-docs/#/DRAA_CUSTO_NORMAL_BENEF_CAPIT/get_DRAA_CUSTO_NORMAL_BENEF_CAPIT', 'Seleciona registro da tabela /DRAA_CUSTO_NORMAL_BENEF_CAPIT', 'https://apicadprev.trabalho.gov.br/DRAA_CUSTO_NORMAL_BENEF_CAPIT', 0, 'Custo previsto por benefício'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    16, 16, 1, 'Custo normal benefícios COB', 'https://apicadprev.economia.gov.br/api-docs/#/DRAA_CUSTO_NORMAL_BENEF_COB/get_DRAA_CUSTO_NORMAL_BENEF_COB', 'Seleciona registro da tabela /DRAA_CUSTO_NORMAL_BENEF_COB', 'https://apicadprev.trabalho.gov.br/DRAA_CUSTO_NORMAL_BENEF_COB', 0, 'Custo normal beneficio Cob.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    17, 17, 1, 'Custo normal rep. aposentadoria', 'https://apicadprev.economia.gov.br/api-docs/#/DRAA_CUSTO_NORMAL_REP_APOS/get_DRAA_CUSTO_NORMAL_REP_APOS', 'Seleciona registro da tabela /DRAA_CUSTO_NORMAL_REP_APOS', 'https://apicadprev.trabalho.gov.br/DRAA_CUSTO_NORMAL_REP_APOS', 0, 'Custo Normal de aposentadorias por repartição'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    18, 18, 1, 'Custo normal rep. auxílio', 'https://apicadprev.economia.gov.br/api-docs/#/DRAA_CUSTO_NORMAL_REP_AUX/get_DRAA_CUSTO_NORMAL_REP_AUX', 'Seleciona registro da tabela /DRAA_CUSTO_NORMAL_REP_AUX', 'https://apicadprev.trabalho.gov.br/DRAA_CUSTO_NORMAL_REP_AUX', 0, 'Custo Normal de Auxilios por Repartição'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    19, 19, 1, 'Dados consolidados', 'https://apicadprev.economia.gov.br/api-docs/#/DRAA_DADOS_CONSOLIDADOS/get_DRAA_DADOS_CONSOLIDADOS', 'Seleciona registro da tabela /DRAA_DADOS_CONSOLIDADOS', 'https://apicadprev.trabalho.gov.br/DRAA_DADOS_CONSOLIDADOS', 0, 'Dados consolidados por processo'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    20, 20, 1, 'Encaminhamento', 'https://apicadprev.economia.gov.br/api-docs/#/DRAA_ENCAMINHAMENTO/get_DRAA_ENCAMINHAMENTO', 'Seleciona registro da tabela /DRAA_ENCAMINHAMENTO', 'https://apicadprev.trabalho.gov.br/DRAA_ENCAMINHAMENTO', 0, 'Dados de encaminhamento de documentos, processos'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    21, 21, 1, 'Estatistica', 'https://apicadprev.economia.gov.br/api-docs/#/DRAA_ESTATISTICA/get_DRAA_ESTATISTICA', 'Seleciona registro da tabela /DRAA_ESTATISTICA', 'https://apicadprev.trabalho.gov.br/DRAA_ESTATISTICA', 0, 'Estatísticas por órgão, considerando a categoria e regra de enquadramento'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    22, 22, 1, 'Fluxo atuarial', 'https://apicadprev.economia.gov.br/api-docs/#/DRAA_FLUXO_ATUARIAL/get_DRAA_FLUXO_ATUARIAL', 'Seleciona registro da tabela /DRAA_FLUXO_ATUARIAL', 'https://apicadprev.trabalho.gov.br/DRAA_FLUXO_ATUARIAL', 0, 'Dados sobre Fluxos e valores projetados'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    23, 23, 1, 'Forma amortização', 'https://apicadprev.economia.gov.br/api-docs/#/DRAA_FORMA_AMORTIZACAO/get_DRAA_FORMA_AMORTIZACAO', 'Seleciona registro da tabela /DRAA_FORMA_AMORTIZACAO', 'https://apicadprev.trabalho.gov.br/DRAA_FORMA_AMORTIZACAO', 0, 'Dados demonstrativos por resultado para valores de geração'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    24, 24, 1, 'Hipótese atuarial', 'https://apicadprev.economia.gov.br/api-docs/#/DRAA_HIPOTESE_ATUARIAL/get_DRAA_HIPOTESE_ATUARIAL', 'Seleciona registro da tabela /DRAA_HIPOTESE_ATUARIAL', 'https://apicadprev.trabalho.gov.br/DRAA_HIPOTESE_ATUARIAL', 0, 'Hipoteses atuariais, para realizar análises'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    25, 25, 1, 'Hipótese biométrica', 'https://apicadprev.economia.gov.br/api-docs/#/DRAA_HIPOTESE_BIOMETRICA/get_DRAA_HIPOTESE_BIOMETRICA', 'Seleciona registro da tabela /DRAA_HIPOTESE_BIOMETRICA', 'https://apicadprev.trabalho.gov.br/DRAA_HIPOTESE_BIOMETRICA', 0, 'Hipoteses biométircas separadas por masculino e feminino'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    26, 26, 1, 'Notificação', 'https://apicadprev.economia.gov.br/api-docs/#/DRAA_NOTIFICACAO/get_DRAA_NOTIFICACAO', 'Seleciona registro da tabela /DRAA_NOTIFICACAO', 'https://apicadprev.trabalho.gov.br/DRAA_NOTIFICACAO', 0, 'Dados de uma notificação de um item analisado.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    27, 27, 1, 'Órgão entidade', 'https://apicadprev.economia.gov.br/api-docs/#/DRAA_ORGAO_ENTIDADE/get_DRAA_ORGAO_ENTIDADE', 'Seleciona registro da tabela /DRAA_ORGAO_ENTIDADE', 'https://apicadprev.trabalho.gov.br/DRAA_ORGAO_ENTIDADE', 0, 'Dados do órgão de uma entidade'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    28, 28, 1, 'Parecer atuarial', 'https://apicadprev.economia.gov.br/api-docs/#/DRAA_PARECER_ATUARIAL/get_DRAA_PARECER_ATUARIAL', 'Seleciona registro da tabela /DRAA_PARECER_ATUARIAL', 'https://apicadprev.trabalho.gov.br/DRAA_PARECER_ATUARIAL', 0, 'Parecer atuarial de um tema'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    29, 29, 1, 'Plano amortização', 'https://apicadprev.economia.gov.br/api-docs/#/DRAA_PLANO_AMORTIZACAO/get_DRAA_PLANO_AMORTIZACAO', 'Seleciona registro da tabela /DRAA_PLANO_AMORTIZACAO', 'https://apicadprev.trabalho.gov.br/DRAA_PLANO_AMORTIZACAO', 0, 'Plano de amortização, considerando valores iniciais, base calculo e taxa de juros'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    30, 30, 1, 'Plano amortização déficit', 'https://apicadprev.economia.gov.br/api-docs/#/DRAA_PLANO_AMORTIZACAO_DEFICIT/get_DRAA_PLANO_AMORTIZACAO_DEFICIT', 'Seleciona registro da tabela /DRAA_PLANO_AMORTIZACAO_DEFICIT', 'https://apicadprev.trabalho.gov.br/DRAA_PLANO_AMORTIZACAO_DEFICIT', 0, 'Plano de amortização, considerando valores iniciais, base calculo e taxa de juros'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    31, 31, 1, 'Plano beneficio', 'https://apicadprev.economia.gov.br/api-docs/#/DRAA_PLANO_BENEFICIO/get_DRAA_PLANO_BENEFICIO', 'Seleciona registro da tabela /DRAA_PLANO_BENEFICIO', 'https://apicadprev.trabalho.gov.br/DRAA_PLANO_BENEFICIO', 0, 'Plano por beneficio, considerando o regime financeiro'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    32, 32, 1, 'Plano custeio', 'https://apicadprev.economia.gov.br/api-docs/#/DRAA_PLANO_CUSTEIO/get_DRAA_PLANO_CUSTEIO', 'Seleciona registro da tabela /DRAA_PLANO_CUSTEIO', 'https://apicadprev.trabalho.gov.br/DRAA_PLANO_CUSTEIO', 0, 'Plano de Custeio considerando base de calculo e  aliquotas'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    33, 33, 1, 'Retificação notificação', 'https://apicadprev.economia.gov.br/api-docs/#/DRAA_RETIFICACAO_NOTIFICACAO/get_DRAA_RETIFICACAO_NOTIFICACAO', 'Seleciona registro da tabela /DRAA_RETIFICACAO_NOTIFICACAO', 'https://apicadprev.trabalho.gov.br/DRAA_RETIFICACAO_NOTIFICACAO', 0, 'Retificação de notificação se necessário'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    34, 34, 1, 'Segregação massa', 'https://apicadprev.economia.gov.br/api-docs/#/DRAA_SEGREGACAO_MASSA/get_DRAA_SEGREGACAO_MASSA', 'Seleciona registro da tabela /DRAA_SEGREGACAO_MASSA', 'https://apicadprev.trabalho.gov.br/DRAA_SEGREGACAO_MASSA', 0, 'Segregação de massa'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    35, 35, 1, 'Valores compromissos', 'https://apicadprev.economia.gov.br/api-docs/#/DRAA_VALORES_COMPROMISSOS/get_DRAA_VALORES_COMPROMISSOS', 'Seleciona registro da tabela /DRAA_VALORES_COMPROMISSOS', 'https://apicadprev.trabalho.gov.br/DRAA_VALORES_COMPROMISSOS', 0, 'Demonstrativo de um item, valor geração atual e valor geração futura'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    36, 36, 1, 'Alíquota', 'https://apicadprev.economia.gov.br/api-docs/#/RPPS_ALIQUOTA/get_RPPS_ALIQUOTA', 'Seleciona registro da tabela /RPPS_ALIQUOTA', 'https://apicadprev.trabalho.gov.br/RPPS_ALIQUOTA', 0, 'Valor da alíquota por plano de segregação por ente'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    37, 37, 1, 'CRP', 'https://apicadprev.economia.gov.br/api-docs/#/RPPS_CRP/get_RPPS_CRP', 'Seleciona registro da tabela /RPPS_CRP', 'https://apicadprev.trabalho.gov.br/RPPS_CRP', 0, 'Dados sobre o Certificado de Regularidade Previdenciária(CRP) por ente'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    38, 38, 1, 'Regime Previdenciário', 'https://apicadprev.economia.gov.br/api-docs/#/RPPS_REGIME_PREVIDENCIARIO/get_RPPS_REGIME_PREVIDENCIARIO', 'Seleciona registro da tabela /RPPS_REGIME_PREVIDENCIARIO', 'https://apicadprev.trabalho.gov.br/RPPS_REGIME_PREVIDENCIARIO', 0, 'Dados sobre o Regime previdenciario por ente'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    753, 39, 2, 'Agregados', 'https://servicodados.ibge.gov.br/api/v3/agregados', 'Agregados - Obtém o conjunto de agregados, agrupados pelas respectivas pesquisas', 'https://servicodados.ibge.gov.br/api/v3/agregados', 0, 'Dados de uma pesquisa do ibge'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    754, 40, 2, 'Localidades por agregado', 'https://servicodados.ibge.gov.br/api/v3/agregados/{agregado}/localidades/{nivel}', 'Localidades por agregado- Obtém as localidades associadas ao agregado de acordo com um ou mais níveis geográficos', 'https://servicodados.ibge.gov.br/api/v3/agregados/1705/localidades/N7%7CN6', 0, 'Obtém a localidade geográfica de uma pesquisa'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    755, 41, 2, 'Metadados', 'https://servicodados.ibge.gov.br/api/v3/agregados/{agregado}/metadados', 'Metadados - Obtém os metadados associados ao agregado', 'https://servicodados.ibge.gov.br/api/v3/agregados/1501/metadados', 0, 'Obtém os metados de uma pesquisa'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    756, 42, 2, 'Período por agregado', 'https://servicodados.ibge.gov.br/api/v3/agregados/{agregado}/periodos', 'Períodos por agregado - Obtém os períodos associados ao agregado', 'https://servicodados.ibge.gov.br/api/v3/agregados/1501/periodos', 0, 'Obtém os períodos de uma pesquisa'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    757, 43, 2, 'Variáveis por agregado, períodos pesquisados e identificador da variável ', 'https://servicodados.ibge.gov.br/api/v3/agregados/{agregado}/periodos/{periodos}/variaveis/{variavel}', 'Variáveis por agregado, períodos pesquisados e identificador da variável - Obtém o conjunto de variáveis a partir do identificador do agregado, períodos pesquisados e identificador das variáveis', 'https://servicodados.ibge.gov.br/api/v3/agregados/1705/periodos/-6/variaveis?localidades=BR', 0, 'Dados de variáveis de uma pesquisa agregada, por período'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    758, 44, 2, 'Variáveis por agregado e identificador da variável ', 'https://servicodados.ibge.gov.br/api/v3/agregados/{agregado}/variaveis/{variavel}', 'Variáveis por agregado e identificador da variável - Funcionalmente equivalente à /agregados/{agregado}/periodos/-6/variaveis/{variavel}, na qual se obtém os resultados das variáveis nos últimos seis períodos pesquisados', 'https://servicodados.ibge.gov.br/api/v3/agregados/1712/variaveis/214%7C1982?localidades=BR', 0, 'Dados de variáveis de uma pesquisa agregada, por identificador '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    45, 45, 3, 'Operadora - busca operadora', 'https://www.ans.gov.br/operadoras-entity/v1/operadoras/{registroAns} ', 'Busca operadora de acordo com o registro operadora informado', 'https://www.ans.gov.br/operadoras-entity/v1/operadoras/418374', 0, 'Dados de uma operadora pelo registro ANS '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    46, 46, 3, 'Operadora - lista operadoras', 'https://www.ans.gov.br/operadoras-entity/v1/operadoras/', 'Lista operadoras de acordo com os parâmetros da pesquisa. Se nenhum resultado for encontrado, uma lista vazia é retornada', 'https://www.ans.gov.br/operadoras-entity/v1/operadoras/', 0, 'Lista todas operadoras de plano de sáude'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    47, 47, 3, 'Administradora - Busca administradoras de beneficiários', 'https://www.ans.gov.br/operadoras-entity/v1/administradoras-beneficios/{registroAns}', 'Busca cuja classificação seja administradoras de beneficiários', 'https://www.ans.gov.br/operadoras-entity/v1/administradoras-beneficios/419575', 0, 'Busca Administradora por registro ANS'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    48, 48, 3, 'Administradora - Lista administradoras de beneficiários', 'https://www.ans.gov.br/operadoras-entity/v1/administradoras-beneficios?', 'Lista administradoras de beneficiários de acordo com os parâmetros da pesquisa. Se nenhum resultado for encontrado, uma lista vazia é retornada', 'https://www.ans.gov.br/operadoras-entity/v1/administradoras-beneficios?', 0, 'Lista todas as Administradoras '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    49, 49, 3, 'Classificação - Busca classificação', 'https://www.ans.gov.br/operadoras-entity/v1/classificacoes/{sigla}', 'Busca as classificações de acordo com a sigla informada', 'https://www.ans.gov.br/operadoras-entity/v1/classificacoes/SGSAU', 0, 'Busca uma classificação da ANS pela sigla'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    50, 50, 3, 'Classificação - Lista administradoras de beneficiários', 'https://www.ans.gov.br/operadoras-entity/v1/classificacoes', 'Lista Classificações de acordo com os parâmetros da pesquisa. Se nenhum resultado for encontrado, uma lista vazia é retornada', 'https://www.ans.gov.br/operadoras-entity/v1/classificacoes?size=20&sort=sigla', 0, 'Lista todas as classificações da ANS'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    51, 51, 3, 'Info - Informações', 'https://www.ans.gov.br/operadoras-entity/v1/info', 'Retorna informações da API', 'https://www.ans.gov.br/operadoras-entity/v1/info', 0, 'Informações da API'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    52, 52, 4, 'Fontes', 'https://www.ipea.gov.br/atlasestado/api/v1/fontes', 'Retorna quais são as fontes de dados da API', 'https://www.ipea.gov.br/atlasestado/api/v1/fontes', 0, 'Fontes de dados da API'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    53, 53, 4, 'Fonte (com filtro)', 'https://www.ipea.gov.br/atlasestado/api/v1/fonte/{id}', 'Retorna quais são as fontes de dados da API, com filtro pelo ID', 'https://www.ipea.gov.br/atlasestado/api/v1/fonte/3', 0, 'Fonte de dados da API de acordo com o id'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    54, 54, 4, 'Unidades', 'https://www.ipea.gov.br/atlasestado/api/v1/unidades', 'Retorna as unidades', 'https://www.ipea.gov.br/atlasestado/api/v1/unidades', 0, 'Unidades de dados'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    55, 55, 4, 'Unidade (com filtro)', 'https://www.ipea.gov.br/atlasestado/api/v1/unidade/{id}', 'Retorna a unidade de acordo com o valor do parâmetro', 'https://www.ipea.gov.br/atlasestado/api/v1/unidade/7', 0, 'Unidade de acordo com o id'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    56, 56, 4, 'Periodicidades', 'https://www.ipea.gov.br/atlasestado/api/v1/periodicidades', 'Retorna as periodicidades disponíveis', 'https://www.ipea.gov.br/atlasestado/api/v1/periodicidades', 0, 'Lista as frequências disponíveis para os outros dados'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    57, 57, 4, 'Periodicidade (com filtro)', 'https://www.ipea.gov.br/atlasestado/api/v1/periodicidade/{id}', 'Retorna a periodicidade disponível de acordo com o valor do parâmetro', 'https://www.ipea.gov.br/atlasestado/api/v1/periodicidade/1', 0, 'Periodicidade de acordo com o filtro'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    60, 60, 4, 'Temas', 'https://www.ipea.gov.br/atlasestado/api/v1/temas', 'Retorna os temas das pesquisas', 'https://www.ipea.gov.br/atlasestado/api/v1/temas', 0, 'Temas das pesquisas do IPEA'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    61, 61, 4, 'Tema (com filtro)', 'https://www.ipea.gov.br/atlasestado/api/v1/tema/{id}', 'Retorna um tema da pesquisa de acordo com o ID', 'https://www.ipea.gov.br/atlasestado/api/v1/tema/38', 0, 'Um tema de pesquisa do IPEA por id'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    64, 64, 4, 'Séries', 'https://www.ipea.gov.br/atlasestado/api/v1/series', 'Retorna dados sobre as séries', 'https://www.ipea.gov.br/atlasestado/api/v1/series', 0, 'Lista séries do IPEA'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    65, 65, 4, 'Séries ID', 'https://www.ipea.gov.br/atlasestado/api/v1/serie/{id}', 'Retorna dados sobre a série de acordo com o ID', 'https://www.ipea.gov.br/atlasestado/api/v1/serie/182', 0, 'Uma série do IPEA por id'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    66, 66, 5, 'Metadados', 'http://www.ipeadata.gov.br/api/odata4/Metadados', 'Retorna os metadados', 'http://www.ipeadata.gov.br/api/odata4/Metadados', 0, 'Metadados da api'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    67, 67, 5, 'Metadados', 'http://www.ipeadata.gov.br/api/odata4/Metadados(''{SERCODIGO}'')
', 'Retorna os metadados filtrando o código', 'http://www.ipeadata.gov.br/api/odata4/Metadados(''ABATE_ABPEAV'')', 0, 'Metadados da API por Código'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    68, 68, 5, 'Metadados - Valores', 'http://www.ipeadata.gov.br/api/odata4/Metadados(''{SERCODIGO}'')/Valores
', 'Retorna os metadados e os valores filtrando o código ', 'http://www.ipeadata.gov.br/api/odata4/Metadados(''ABATE_ABPEAV'')/Valores', 0, 'Valores dos Metadados por código'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    69, 69, 5, 'Valores - Série', 'http://www.ipeadata.gov.br/api/odata4/ValoresSerie(SERCODIGO=''{SERCODIGO}'')', 'Retorna os valores da série', 'http://www.ipeadata.gov.br/api/odata4/ValoresSerie(SERCODIGO=''ABATE_ABPEAV'')', 0, 'Valores numa série temporal por código'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    70, 70, 5, 'Metadados - Valores', 'http://www.ipeadata.gov.br/api/odata4/Metadados(''{SERCODIGO}'')/ValoresStr', 'Metadados, trazendo valores filtrando por código', 'http://www.ipeadata.gov.br/api/odata4/Metadados(''ABATE_ABPEAV'')/ValoresStr', 1, 'ValoresStr dos metadados por código'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    72, 72, 5, 'Temas', 'http://www.ipeadata.gov.br/api/odata4/Temas', 'Retorna temas', 'http://www.ipeadata.gov.br/api/odata4/Temas', 0, 'Temas das pesquisas do IPEAData'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    73, 73, 5, 'Temas - Código', 'http://www.ipeadata.gov.br/api/odata4/Temas({TEMCODIGO})', 'Retorna temas filtrando por código', 'http://www.ipeadata.gov.br/api/odata4/Temas(28)', 0, 'Tema de uma pesquisa por código'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    74, 74, 5, 'Países', 'http://www.ipeadata.gov.br/api/odata4/Paises', 'Retorna países', 'http://www.ipeadata.gov.br/api/odata4/Paises', 0, 'Buscas os países'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    75, 75, 5, 'Países - Código', 'http://www.ipeadata.gov.br/api/odata4/Paises(''{PAICODIGO}'')', 'Retorna países filtrando pelo código', 'http://www.ipeadata.gov.br/api/odata4/Paises(''dza'')', 1, 'Busca um país pelo código'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    76, 77, 5, 'Territórios', 'http://www.ipeadata.gov.br/api/odata4/Territorios', 'Retorna os territórios', 'http://www.ipeadata.gov.br/api/odata4/Territorios', 0, 'Busca Territórios'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    77, 76, 5, 'Territórios - Código', 'http://www.ipeadata.gov.br/api/odata4/Territorios(TERCODIGO=''{TERCODIGO}'',NIVNOME=''{NIVNOME}'')', 'Retorna os territórios filtrando pelo código', 'http://www.ipeadata.gov.br/api/odata4/Territorios(TERCODIGO=''0'',NIVNOME=''Brasil'')', 0, 'Busca Territórios pelo código e nome'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    78, 78, 6, 'Agências de instituições supervisionadas pelo Bacen', 'https://olinda.bcb.gov.br/olinda/servico/Informes_Agencias/versao/v1/odata/Agencias', 'Apresentam as informações mais atuais das agências de instituições supervisionadas pelo Bacen.', 'https://olinda.bcb.gov.br/olinda/servico/Informes_Agencias/versao/v1/odata/Agencias', 0, 'Lista agendas supervisionadas pelo bacen'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    79, 79, 6, 'Chancelas de cédulas nacionais produzidas', 'https://olinda.bcb.gov.br/olinda/servico/mecir_chancelas/versao/v1/swagger-ui3#/', 'Traz informações sobre cédulas nacionais produzidas', 'https://olinda.bcb.gov.br/olinda/servico/mecir_chancelas/versao/v1/odata/TodosDadosChancelas', 0, 'Chancela de  cédulas. '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    80, 753, 6, 'Correspondentes no país', 'https://olinda.bcb.gov.br/olinda/servico/Informes_Correspondentes/versao/v1/swagger-ui3#/', 'Retorna informes sobre correspondentes', 'https://olinda.bcb.gov.br/olinda/servico/Informes_Correspondentes/versao/v1/odata/Correspondentes?%24top=1', 0, 'Correspondentes no país'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    81, 754, 6, 'Dados cadastrais de entidades supervisionadas - Situação por pessoa jurídica', 'https://olinda.bcb.gov.br/olinda/servico/BcBase/versao/v2/odata/TipoSituacaoPessoaJuridica', 'Dados cadastrais de entidades supervisionadas pelo bacen por pessoa jurídica', 'https://olinda.bcb.gov.br/olinda/servico/BcBase/versao/v2/odata/TipoSituacaoPessoaJuridica', 0, 'Dados de entidades supervisionadas por Situação Pessoa Jurídica'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    82, 755, 6, 'Dados cadastrais de entidades supervisionadas - Entidade supervisionada', 'https://olinda.bcb.gov.br/olinda/servico/BcBase/versao/v2/odata/TipoEntidadeSupervisionada', 'Dados cadastrais de entidades supervisionadas pelo bacen por entidade supervisionada', 'https://olinda.bcb.gov.br/olinda/servico/BcBase/versao/v2/odata/TipoEntidadeSupervisionada', 0, 'Dados de entidades supervisionadas por Entidade supervisionada'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    83, 756, 6, 'Dados cadastrais de entidades supervisionadas - Natureza jurídica', 'https://olinda.bcb.gov.br/olinda/servico/BcBase/versao/v2/odata/NaturezaJuridica', 'Dados cadastrais de entidades supervisionadas pelo bacen por natureza juridica', 'https://olinda.bcb.gov.br/olinda/servico/BcBase/versao/v2/odata/NaturezaJuridica', 0, 'Dados de entidades supervisionadas por natureza juridica'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    84, 908, 6, 'Dados cadastrais de entidades supervisionadas - Esfera pública', 'https://olinda.bcb.gov.br/olinda/servico/BcBase/versao/v2/odata/EsferaPublica', 'Dados cadastrais de entidades supervisionadas pelo bacen por por esfera pública', 'https://olinda.bcb.gov.br/olinda/servico/BcBase/versao/v2/odata/EsferaPublica', 0, 'Dados de entidades supervisionadas por esfera publica'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    85, 80, 6, 'Dados cadastrais de entidades supervisionadas - Classe cooperativa', 'https://olinda.bcb.gov.br/olinda/servico/BcBase/versao/v2/odata/ClasseCooperativa', 'Dados cadastrais de entidades supervisionadas pelo bacen por classe cooperativa', 'https://olinda.bcb.gov.br/olinda/servico/BcBase/versao/v2/odata/ClasseCooperativa', 0, 'Dados de entidades supervisionadas por classe cooperativa'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    86, 81, 6, 'Dados cadastrais de entidades supervisionadas - Tipo cooperativa', 'https://olinda.bcb.gov.br/olinda/servico/BcBase/versao/v2/odata/TipoCooperativa', 'Dados cadastrais de entidades supervisionadas pelo bacen por tipo cooperativa', 'https://olinda.bcb.gov.br/olinda/servico/BcBase/versao/v2/odata/TipoCooperativa', 0, 'Dados de entidades supervisionadas por tipo cooperativa'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    87, 82, 6, 'Dados cadastrais de entidades supervisionadas - Categoria cooperativa', 'https://olinda.bcb.gov.br/olinda/servico/BcBase/versao/v2/odata/CategoriaCooperativa', 'Dados cadastrais de entidades supervisionadas pelo bacen por categoria cooperativa', 'https://olinda.bcb.gov.br/olinda/servico/BcBase/versao/v2/odata/CategoriaCooperativa', 0, 'Dados de entidades supervisionadas por categoria cooperativa'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    88, 83, 6, 'Dados cadastrais de entidades supervisionadas - Cooperativas', 'https://olinda.bcb.gov.br/olinda/servico/BcBase/versao/v2/odata/Cooperativas(dataBase=@dataBase)', 'Dados cadastrais de entidades supervisionadas pelo bacen por cooperativa', 'https://olinda.bcb.gov.br/olinda/servico/BcBase/versao/v2/odata/Cooperativas(dataBase=@dataBase)?@dataBase=''12-31-2017''&$top=2&$format=json', 0, 'Dados de entidades supervisionadas por cooperativa e por data base'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    89, 84, 6, 'Dados cadastrais de entidades supervisionadas - Entidades supervisionadas', 'https://olinda.bcb.gov.br/olinda/servico/BcBase/versao/v2/odata/EntidadesSupervisionadas(dataBase=@dataBase)', 'Dados cadastrais de entidades supervisionadas pelo bacen por entidade supervisionada filtando pela Data Base', 'https://olinda.bcb.gov.br/olinda/servico/BcBase/versao/v2/odata/EntidadesSupervisionadas(dataBase=@dataBase)?@dataBase=''12-31-2017''&$top=2&$format=json', 0, 'Dados de entidades supervisionadas por entidades supervisionadas e data base'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    90, 85, 6, 'Dados cadastrais de instrumentos contratuais - Cadastro contraparte', 'https://olinda.bcb.gov.br/olinda/servico/SAIC/versao/v1/odata/CadastroContraparte', 'Retorna Dados cadastrais de instrumentos contratuais - Cadastro contraparte', 'https://olinda.bcb.gov.br/olinda/servico/SAIC/versao/v1/odata/CadastroContraparte', 0, 'Dados de instrumentos contratuais de Cadastro de contraparte'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    91, 86, 6, 'Dados cadastrais de instrumentos contratuais - Cadastro penalidade', 'https://olinda.bcb.gov.br/olinda/servico/SAIC/versao/v1/odata/CadastroPenalidade', 'Retorna Dados cadastrais de instrumentos contratuais - Cadastro penalidade', 'https://olinda.bcb.gov.br/olinda/servico/SAIC/versao/v1/odata/CadastroPenalidade', 0, 'Dados de instrumentos contratuais de Cadastro de penalidade'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    92, 87, 6, 'Dados cadastrais de instrumentos contratuais - Ata, registro e preço', 'https://olinda.bcb.gov.br/olinda/servico/SAIC/versao/v1/odata/AtaRegistroPreco', 'Retorna Dados cadastrais de instrumentos contratuais - Ata, registro e preço', 'https://olinda.bcb.gov.br/olinda/servico/SAIC/versao/v1/odata/AtaRegistroPreco', 0, 'Dados de instrumentos contratuais de Atas de registro de Preço'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    93, 88, 6, 'Dados cadastrais de instrumentos contratuais - Instrumento contratual', 'https://olinda.bcb.gov.br/olinda/servico/SAIC/versao/v1/odata/InstrumentoContratual', 'Retorna Dados cadastrais de instrumentos contratuais - Instrumento contratual', 'https://olinda.bcb.gov.br/olinda/servico/SAIC/versao/v1/odata/InstrumentoContratual', 0, 'Dados de instrumentos contratuais'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    94, 89, 6, 'Dados cadastrais de instrumentos contratuais - Instrumento alteração', 'https://olinda.bcb.gov.br/olinda/servico/SAIC/versao/v1/odata/InstrumentoAlteracao', 'Retorna Dados cadastrais de instrumentos contratuais - Instrumento alteração', 'https://olinda.bcb.gov.br/olinda/servico/SAIC/versao/v1/odata/InstrumentoAlteracao', 1, 'Dados de instrumentos contratuais sobre alterações em Instrumentos'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    95, 90, 6, 'Dados cadastrais de instrumentos contratuais - Ocorrência', 'https://olinda.bcb.gov.br/olinda/servico/SAIC/versao/v1/odata/Ocorrencia', 'Retorna Dados cadastrais de instrumentos contratuais - Ocorrência', 'https://olinda.bcb.gov.br/olinda/servico/SAIC/versao/v1/odata/Ocorrencia', 0, 'Dados de ocorrencias de instrumentos contratuais'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    96, 91, 6, 'Dados cadastrais de instrumentos contratuais - Conformidade', 'https://olinda.bcb.gov.br/olinda/servico/SAIC/versao/v1/odata/Conformidade', 'Retorna Dados cadastrais de instrumentos contratuais - Conformidade', 'https://olinda.bcb.gov.br/olinda/servico/SAIC/versao/v1/odata/Conformidade', 0, 'Dados de Conformidade de instrumentos contratuais'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    97, 92, 6, 'Dados cadastrais de instrumentos contratuais - Rescisão', 'https://olinda.bcb.gov.br/olinda/servico/SAIC/versao/v1/odata/Rescisao', 'Retorna Dados cadastrais de instrumentos contratuais - Rescisão', 'https://olinda.bcb.gov.br/olinda/servico/SAIC/versao/v1/odata/Rescisao', 0, 'Dados de Rescisão de instrumentos contratuais'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    98, 93, 6, 'Dados cadastrais de instrumentos contratuais - Anulação', 'https://olinda.bcb.gov.br/olinda/servico/SAIC/versao/v1/odata/Anulacao', 'Retorna Dados cadastrais de instrumentos contratuais - Anulação', 'https://olinda.bcb.gov.br/olinda/servico/SAIC/versao/v1/odata/Anulacao', 0, 'Dados de anulação de instrumentos contratuais'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    99, 94, 6, 'Dados cadastrais de instrumentos contratuais - Garantia financeira', 'https://olinda.bcb.gov.br/olinda/servico/SAIC/versao/v1/odata/GarantiaFinanceira', 'Retorna Dados cadastrais de instrumentos contratuais - Garantia financeira', 'https://olinda.bcb.gov.br/olinda/servico/SAIC/versao/v1/odata/GarantiaFinanceira', 0, 'Garantia Financeira em instrumentos contratuais'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    100, 95, 6, 'Dados cadastrais de instrumentos contratuais - Garantia técnica', 'https://olinda.bcb.gov.br/olinda/servico/SAIC/versao/v1/odata/GarantiaTecnica', 'Retorna Dados cadastrais de instrumentos contratuais - Garantia técnica', 'https://olinda.bcb.gov.br/olinda/servico/SAIC/versao/v1/odata/GarantiaTecnica', 0, 'Garantia Técnica em instrumentos contratuais'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    101, 96, 6, 'Dados cadastrais de instrumentos contratuais - Mão de obra terceirizada', 'https://olinda.bcb.gov.br/olinda/servico/SAIC/versao/v1/odata/MaoObraTerceirizada', 'Retorna Dados cadastrais de instrumentos contratuais - Mão de obra terceirizada', 'https://olinda.bcb.gov.br/olinda/servico/SAIC/versao/v1/odata/MaoObraTerceirizada', 1, 'Mão de obra terceirizada em instrumentos contratuais'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    102, 97, 6, 'Dados cadastrais de instrumentos contratuais - Recebimento', 'https://olinda.bcb.gov.br/olinda/servico/SAIC/versao/v1/odata/Recebimento', 'Retorna Dados cadastrais de instrumentos contratuais - Recebimento', 'https://olinda.bcb.gov.br/olinda/servico/SAIC/versao/v1/odata/Recebimento', 1, 'Recebimento acerca de instrumentos contratuais['
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    103, 98, 6, 'Dados cadastrais de instrumentos contratuais - Documento de cobrança', 'https://olinda.bcb.gov.br/olinda/servico/SAIC/versao/v1/odata/DocumentoCobranca', 'Retorna Dados cadastrais de instrumentos contratuais - Documento de cobrança', 'https://olinda.bcb.gov.br/olinda/servico/SAIC/versao/v1/odata/DocumentoCobranca', 1, 'Documentos de Cobrança de  instrumentos contratuais'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    104, 99, 6, 'Dados cadastrais de instrumentos contratuais - Relatório instrumento contratual', 'https://olinda.bcb.gov.br/olinda/servico/SAIC/versao/v1/odata/RelatorioInstrumentoContratual', 'Retorna Dados cadastrais de instrumentos contratuais - Relatório instrumento contratual', 'https://olinda.bcb.gov.br/olinda/servico/SAIC/versao/v1/odata/RelatorioInstrumentoContratual', 0, 'Relatorio de Instrumento Contratual'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    105, 100, 6, 'Dados cadastrais de instrumentos contratuais - Recebimento de pagamento', 'https://olinda.bcb.gov.br/olinda/servico/SAIC/versao/v1/odata/RecebimentoPagamento', 'Retorna Dados cadastrais de instrumentos contratuais - Recebimento de pagamento', 'https://olinda.bcb.gov.br/olinda/servico/SAIC/versao/v1/odata/RecebimentoPagamento', 0, 'Recimento pagamento'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    106, 101, 6, 'Dinheiro em circulação - Informações diárias', 'https://olinda.bcb.gov.br/olinda/servico/mecir_dinheiro_em_circulacao/versao/v1/odata/informacoes_diarias', 'Traz informações sobre Dinheiro em circulação - Informações diárias', 'https://olinda.bcb.gov.br/olinda/servico/mecir_dinheiro_em_circulacao/versao/v1/odata/informacoes_diarias', 0, 'Informações Diárias sobre dinheiro em circulação'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    107, 102, 6, 'Dinheiro em circulação - Informações diárias com categoria', 'https://olinda.bcb.gov.br/olinda/servico/mecir_dinheiro_em_circulacao/versao/v1/odata/informacoes_diarias_com_categoria', 'Traz informações sobre Dinheiro em circulação - Informações diárias com categoria', 'https://olinda.bcb.gov.br/olinda/servico/mecir_dinheiro_em_circulacao/versao/v1/odata/informacoes_diarias_com_categoria', 0, 'Informações Diárias sobre dinheiro em circulação com categorias'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    108, 103, 6, 'Dólar comercial (venda e compra) - Cotações diárias - Moedas', 'https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/Moedas', 'Retorna informações sobre Dólar comercial (venda e compra) - Cotações diárias - Moedas', 'https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/Moedas', 0, 'Moedas disponíveis para visualizar cotação em reais'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    109, 104, 6, 'Dólar comercial (venda e compra) - Cotações diárias - Dia', 'https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/CotacaoDolarDia(dataCotacao=@dataCotacao)', 'Retorna informações sobre Dólar comercial (venda e compra) - Cotações diárias - Dia', 'https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/CotacaoDolarDia(dataCotacao=@dataCotacao)?@dataCotacao=%2710-06-2023%27&$top=100&$format=json', 0, 'Cotação do dólar comercial por data'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    110, 105, 6, 'Dólar comercial (venda e compra) - Cotações diárias - Período', 'https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/CotacaoDolarPeriodo(dataInicial=@dataInicial,dataFinalCotacao=@dataFinalCotacao)', 'Retorna informações sobre Dólar comercial (venda e compra) - Cotações diárias - Período', 'https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/CotacaoDolarPeriodo(dataInicial=@dataInicial,dataFinalCotacao=@dataFinalCotacao)?@dataInicial=''09-01-2023''&@dataFinalCotacao=''09-30-2023''&$top=100&$format=json', 0, 'Cotação do dólar comercial por período'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    111, 106, 6, 'Dólar comercial (venda e compra) - Cotações diárias - Moeda e dia', 'https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/CotacaoMoedaDia(moeda=@moeda,dataCotacao=@dataCotacao)', 'Retorna informações sobre Dólar comercial (venda e compra) - Cotações diárias - Moeda e dia', 'https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/CotacaoMoedaDia(moeda=@moeda,dataCotacao=@dataCotacao)?@moeda=''EUR''&@dataCotacao=''10-06-2023''&$top=100&$format=json', 0, 'Cotação por moeda e por data'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    112, 107, 6, 'Dólar comercial (venda e compra) - Cotações diárias - Moeda e período', 'https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/CotacaoMoedaPeriodo(moeda=@moeda,dataInicial=@dataInicial,dataFinalCotacao=@dataFinalCotacao)', 'Retorna informações sobre Dólar comercial (venda e compra) - Cotações diárias - Moeda e período', 'https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/CotacaoMoedaPeriodo(moeda=@moeda,dataInicial=@dataInicial,dataFinalCotacao=@dataFinalCotacao)?@moeda=''EUR''&@dataInicial=''10-01-2023''&@dataFinalCotacao=''10-15-2023''&$top=100&$format=json', 0, 'Cotação de uma moeda em um período'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    113, 108, 6, 'Dólar comercial (venda e compra) - Cotações diárias - Moeda - Abertura ou intermediário', 'https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/CotacaoMoedaAberturaOuIntermediario(codigoMoeda=@codigoMoeda,dataCotacao=@dataCotacao)', 'Retorna informações sobre Dólar comercial (venda e compra) - Cotações diárias - Moeda - Abertura ou intermediário', 'https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/CotacaoMoedaAberturaOuIntermediario(codigoMoeda=@codigoMoeda,dataCotacao=@dataCotacao)?@codigoMoeda=''EUR''&@dataCotacao=''10-06-2023''&$format=json', 0, 'Cotação de uma moeda no período de abertura ou intermediário por data'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    114, 109, 6, 'Dólar comercial (venda e compra) - Cotações diárias - Cotação da moeda por período de fechamento', 'https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/CotacaoMoedaPeriodoFechamento(codigoMoeda=@codigoMoeda,dataInicialCotacao=@dataInicialCotacao,dataFinalCotacao=@dataFinalCotacao)', 'Retorna informações sobre Dólar comercial (venda e compra) - Cotações diárias - Cotação da moeda por período de fechamento', 'https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/CotacaoMoedaPeriodoFechamento(codigoMoeda=@codigoMoeda,dataInicialCotacao=@dataInicialCotacao,dataFinalCotacao=@dataFinalCotacao)?@codigoMoeda=''EUR''&@dataInicialCotacao=''10-01-2023''&@dataFinalCotacao=''10-15-2023''&$format=json', 0, 'Cotação de uma moeda no período de fechamento por período'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    115, 110, 6, 'Estatísticas de meios de pagamentos', 'https://olinda.bcb.gov.br/olinda/servico/MPV_DadosAbertos/versao/v1/odata/Quantidadeetransacoesdecartoes(trimestre=@trimestre)', 'Retorna Estatísticas de meios de pagamentos', 'https://olinda.bcb.gov.br/olinda/servico/MPV_DadosAbertos/versao/v1/odata/Quantidadeetransacoesdecartoes(trimestre=@trimestre)?@trimestre=''20232''&$top=100&$format=json', 0, 'Estatísticas dos meios de pagamentos por trimestre'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    116, 111, 6, 'Estatísticas do Pix - Chaves pix por data', 'https://olinda.bcb.gov.br/olinda/servico/Pix_DadosAbertos/versao/v1/odata/ChavesPix(Data=@Data)', 'Traz informações sobre Estatísticas do Pix - Chaves pix por data', 'https://olinda.bcb.gov.br/olinda/servico/Pix_DadosAbertos/versao/v1/odata/ChavesPix(Data=@Data)?@Data=%272023-08-10%27&$top=100&$format=json', 0, 'Estatísticas sobre quantidade de Chaves Pix por Data'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    117, 112, 6, 'Estatísticas do Pix - Transações pix por município', 'https://olinda.bcb.gov.br/olinda/servico/Pix_DadosAbertos/versao/v1/odata/TransacoesPixPorMunicipio(DataBase=@DataBase)', 'Traz informações sobre Estatísticas do Pix - Transações pix por município', 'https://olinda.bcb.gov.br/olinda/servico/Pix_DadosAbertos/versao/v1/odata/TransacoesPixPorMunicipio(DataBase=@DataBase)?@DataBase=''20232''&$top=100&$format=json', 1, 'Estatísticas sobre transações pix por municípios por data'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    118, 113, 6, 'Estatísticas do SPI - Sistema de Pagamentos Instantâneos - Pix liquidados atual', 'https://olinda.bcb.gov.br/olinda/servico/SPI/versao/v1/odata/PixLiquidadosAtual', 'PIX liquidados no SPI considerando as ordens de transferências (PACS008) e devoluções (PACS004). Este valor é representado em milhares de R$.', 'https://olinda.bcb.gov.br/olinda/servico/SPI/versao/v1/odata/PixLiquidadosAtual', 0, 'Dados sobre Pix Liquidados'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    119, 114, 6, 'Estatísticas do SPI - Sistema de Pagamentos Instantâneos - Pix liquidados Intradia', 'https://olinda.bcb.gov.br/olinda/servico/SPI/versao/v1/odata/PixLiquidadosIntradia', 'Movimentações financeiras transitadas no SPI, excluídas as mensagens dos grupos STR. PIX liquidados no SPI considerando as ordens de transferências (PACS008) e devoluções (PACS004). Quantidades e valores médios por intervalo de trinta minutos, nos últimos 30 dias. Valores representados em milhares de R$.', 'https://olinda.bcb.gov.br/olinda/servico/SPI/versao/v1/odata/PixLiquidadosIntradia', 0, 'Estatísticas Média quantidade de Pix liquidados por horário'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    120, 115, 6, 'Estatísticas do SPI - Sistema de Pagamentos Instantâneos - Pix remuneração de conta PI', 'https://olinda.bcb.gov.br/olinda/servico/SPI/versao/v1/odata/PixRemuneracaoContaPI', 'Informações sobre a remuneração paga pelo Banco Central às instituições financeiras para manutenção dos respectivos saldos em conta de Pagamento Instantâneo.', 'https://olinda.bcb.gov.br/olinda/servico/SPI/versao/v1/odata/PixRemuneracaoContaPI', 0, 'Remuneração paga pelo Banco Central às instituições financeiras para manutenção PIX'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    121, 116, 6, 'Estatísticas do SPI - Sistema de Pagamentos Instantâneos - Pix disponibilidade SPI', 'https://olinda.bcb.gov.br/olinda/servico/SPI/versao/v1/odata/PixDisponibilidadeSPI', 'Informações sobre a disponibilidade do SPI frente ao mínimo normativo. Segue a fórmula id = (hf / hp) x 100, onde id = índice de disponibilidade; hf = número de horas de efetivo funcionamento do SPI, ao longo dos últimos três meses; hp = número de horas em que o SPI deveria estar aberto para uso pelos participantes, ao longo dos últimos três meses (o SPI deve ficar aberto 24 horas por dia em todos os dias do ano).', 'https://olinda.bcb.gov.br/olinda/servico/SPI/versao/v1/odata/PixDisponibilidadeSPI', 0, 'Informações sobre a disponibilidade do SPI'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    122, 117, 6, 'Estatísticas do STR - Sistema de Transferência de Reservas - Giro evolução diária', 'https://olinda.bcb.gov.br/olinda/servico/STR/versao/v1/odata/GiroEvolucaoDiaria', 'Movimentações financeiras transitadas no STR na data considerando todas as ordens que resultam em movimentação financeira, exceto Recolhimentos Compulsórios e Meio Circulante. Este valor é representado em R$ milhões.', 'https://olinda.bcb.gov.br/olinda/servico/STR/versao/v1/odata/GiroEvolucaoDiaria', 0, 'Movimentações financeiras transitadas no STR'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    123, 118, 6, 'Estatísticas do STR - Sistema de Transferência de Reservas - Giro detalhamento', 'https://olinda.bcb.gov.br/olinda/servico/STR/versao/v1/odata/GiroDetalhamento', 'Detalhamento das transferências financeiras relacionadas com outros sistemas de liquidação do SPB (Sistema de Pagamentos Brasileiro), outras transferências de instituição financeira, e transferências do governo. Média percentual nos últimos 21 dias úteis e no último dia útil.', 'https://olinda.bcb.gov.br/olinda/servico/STR/versao/v1/odata/GiroDetalhamento', 0, 'Detalhamento de movimentações financeiras transitadas no STR'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    124, 119, 6, 'Estatísticas do STR - Sistema de Transferência de Reservas - Pagamentos Intradia', 'https://olinda.bcb.gov.br/olinda/servico/STR/versao/v1/odata/PagamentosIntradia', 'Movimentações financeiras transitadas no STR, excluídas as mensagens dos grupos RCO e CIR. Média percentual, discriminadas por intervalo de treinta minutos, nos últimos 21 dias úteis', 'https://olinda.bcb.gov.br/olinda/servico/STR/versao/v1/odata/PagamentosIntradia', 0, 'Movimentações financeiras transitadas no STR média por horário'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    125, 120, 6, 'Estatísticas do STR - Sistema de Transferência de Reservas - TED evolução diária', 'https://olinda.bcb.gov.br/olinda/servico/STR/versao/v1/odata/TEDEvolucaoDiaria', 'Movimentações financeiras referentes a TEDs que envolvem clientes transitadas no STR.', 'https://olinda.bcb.gov.br/olinda/servico/STR/versao/v1/odata/TEDEvolucaoDiaria', 0, 'Quantidade de transações TED diárias'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    126, 121, 6, 'Estatísticas do STR - Sistema de Transferência de Reservas - TED histograma 21 dias', 'https://olinda.bcb.gov.br/olinda/servico/STR/versao/v1/odata/TEDHistograma21Dias', 'Quantidade de movimentações financeiras referentes a TEDs que envolvem clientes transitadas no STR. Média móvel de 21 dias úteis por faixa de valor, nos últimos dois anos. As faixas utilizadas são: Faixa 1 - até R$ 999,99; Faixa 2 - de R$ 1.000,00 até R$ 2.999,99; Faixa 3 - de R$ 3.000,00 até R$ 9.999,99; Faixa 4 - de R$ 10.000,00 até R$ 249.999,99; Faixa 5: de R$ 250.000,00 até R$ 999.999,99; Faixa 6 - valor igual ou superior a R$ 1.000.000,00.', 'https://olinda.bcb.gov.br/olinda/servico/STR/versao/v1/odata/TEDHistograma21Dias', 0, 'Quantidade de transações TEDs. Média móvel de 21 dias úteis por faixa de valor'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    127, 122, 6, 'Estatísticas do STR - Sistema de Transferência de Reservas - Redesconto BCB Intradia', 'https://olinda.bcb.gov.br/olinda/servico/STR/versao/v1/odata/RedescontoBCBIntradia', 'Movimentações financeiras referentes a Redesconto Intradia transitadas no STR.', 'https://olinda.bcb.gov.br/olinda/servico/STR/versao/v1/odata/RedescontoBCBIntradia', 0, 'Movimentações Redesconto por dia'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    128, 123, 6, 'Estatísticas do STR - Sistema de Transferência de Reservas - Portabilidade de crédito', 'https://olinda.bcb.gov.br/olinda/servico/STR/versao/v1/odata/PortabilidadeDeCredito', 'Movimentações financeiras referentes a transferência de dívidas de uma instituição para outra, até 4.5.2014, consideradas apenas as operações efetivadas e não devolvidas posteriormente. Portabilidade de Crédito é a possibilidade que o cliente tem em poder transferir sua dívida de uma instituição para outra. A operacionalização da transação ocorre com a liquidação antecipada de contratos de operações de crédito e de arrendamento mercantil, mediante o recebimento de recursos transferidos por outra instituição. As condições da nova operação devem ser negociadas entre a instituição que efetivará a transferência e o mutuário da operação original.', 'https://olinda.bcb.gov.br/olinda/servico/STR/versao/v1/odata/PortabilidadeDeCredito', 0, 'Portabilidade de dívidas de uma instituição para outra, até 4.5.2014'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    129, 124, 6, 'Estatísticas do STR - Sistema de Transferência de Reservas - Portabilidade de crédito PJ e arrendamento Mercantil', 'https://olinda.bcb.gov.br/olinda/servico/STR/versao/v1/odata/PortabilidadeDeCreditoPJEArrendamentoMercantil', 'Movimentações financeiras referentes a transferência de dívidas de uma instituição para outra, relativas à Pessoa Jurídica e de Arrendamento Mercantil, de acordo com a Resolução CMN 3.401, efetuadas após 4.5.2014, consideradas apenas as operações efetivadas e não devolvidas posteriormente. O resultado no mês pode apresentar pequenas variações nos números, principalmente nos meses mais recentes, pela ocorrência de devoluções registradas entre as publicações. A liquidação antecipada de contratos de operações de crédito de Pessoa Jurídica e de contratos de arrendamento mercantil com recursos provenientes de outra instituição permite a transferência desses contratos da instituição credora original para a instituição proponente. As condições da nova operação devem ser negociadas entre a instituição que efetivará a transferência e o mutuário da operação original.', 'https://olinda.bcb.gov.br/olinda/servico/STR/versao/v1/odata/PortabilidadeDeCreditoPJEArrendamentoMercantil', 0, 'Portabilidade de dívidas de uma instituição para outra, após 4.5.2014. Considerando pessoas jurídicas'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    130, 125, 6, 'Estatísticas do STR - Sistema de Transferência de Reservas - Portabilidade de crédito pessoa natural', 'https://olinda.bcb.gov.br/olinda/servico/STR/versao/v1/odata/PortabilidadeDeCreditoPessoaNatural', 'Movimentações financeiras referentes a transferência de dívidas de uma instituição para outra, relativas a Pessoa Natural, de acordo com a Resolução CMN 4.292, efetuadas após 4.5.2014, consideradas apenas as operações efetivadas e não devolvidas posteriormente. O resultado no mês pode apresentar pequenas variações nos números, principalmente nos meses mais recentes, pela ocorrência de devoluções registradas entre as publicações. Portabilidade de Crédito é a transferência da operação de crédito da instituição credora original para instituição proponente, por solicitação do devedor. De acordo com a Resolução CMN 4.292, de 20/12/2013, enquadram-se neste conceito somente as operações em que o devedor é pessoa natural, com exceção dos contratos de arrendamento mercantil.', 'https://olinda.bcb.gov.br/olinda/servico/STR/versao/v1/odata/PortabilidadeDeCreditoPessoaNatural', 1, 'Portabilidade de dívidas de uma instituição para outra, após 4.5.2014, relativas a pessoas físicas'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    131, 126, 6, 'Estatísticas do STR - Sistema de Transferência de Reservas - Estatisticas transferencias - Liquidação de documentos com código de barras', 'https://olinda.bcb.gov.br/olinda/servico/STR/versao/v1/odata/EstatisticasTransferenciasLiquidacaoDocumentosComCodigoBarras', 'Estatística das transferências para liquidação de documento com código de barras, utilizando a mensagem STR0026, desconsideradas as transferências devolvidas.', 'https://olinda.bcb.gov.br/olinda/servico/STR/versao/v1/odata/EstatisticasTransferenciasLiquidacaoDocumentosComCodigoBarras', 1, 'Estatísticas sobre liquidação de documentos com código de barras'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    132, 127, 6, 'Estatísticas Selic - Clientes', 'https://olinda.bcb.gov.br/olinda/servico/selic_clientes/versao/v1/odata/QuantidadePorTipoCliente(Data=@Data)', 'Quantidade de clientes registrados no Selic, por tipo, em uma data. Dados disponíveis a partir de 16/11/2010.', 'https://olinda.bcb.gov.br/olinda/servico/selic_clientes/versao/v1/odata/QuantidadePorTipoCliente(Data=@Data)?@Data=''2020-10-06''&$top=100&$format=json', 0, 'Quantidade de Clientes no Selic'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    133, 128, 6, 'Estatísticas Selic - Contas', 'https://olinda.bcb.gov.br/olinda/servico/selic_contas/versao/v1/odata/QuantidadePorTipoConta(Data=@Data)', 'Quantidade de contas registradas no Selic, por tipo, em uma data. Dados disponíveis a partir de 16/11/2010.', 'https://olinda.bcb.gov.br/olinda/servico/selic_contas/versao/v1/odata/QuantidadePorTipoConta(Data=@Data)?@Data=''2022-10-06''&$top=100&$format=json', 0, 'Quantidade de Contas Selic'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    134, 129, 6, 'Estatísticas Selic - Operações - Datas', 'https://olinda.bcb.gov.br/olinda/servico/selic_operacoes/versao/v1/swagger-ui3#/', 'Datas onde houve registro de operações no Selic, em ordem decrescente.', 'https://olinda.bcb.gov.br/olinda/servico/selic_operacoes/versao/v1/odata/DatasOperacoesSelic', 0, 'Datas de operações no Selic'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    135, 130, 6, 'Estatísticas Selic - Operações - Em uma data', 'https://olinda.bcb.gov.br/olinda/servico/selic_operacoes/versao/v1/swagger-ui3#/', 'Estatísticas de operações registradas no Selic. Operações realizadas na mesma data. A consulta retorna o código da operação, a descrição, a quantidade e o valor financeiro, conforme data de referência informada. Valores financeiros expressos em milhões de reais.', 'https://olinda.bcb.gov.br/olinda/servico/selic_operacoes/versao/v1/odata/OperacoesEmUmaData(Data=@Data)?@Data=''2023-10-06''&$top=100&$format=json', 0, 'Operações por uma data específica no Selic'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    136, 131, 6, 'Estatísticas Selic - Operações - Em um ano', 'https://olinda.bcb.gov.br/olinda/servico/selic_operacoes/versao/v1/swagger-ui3#/', 'Estatísticas de operações registradas no Selic. Operações realizadas no período de um ano. A consulta retorna a data, o código da operação, a descrição, a quantidade e o valor financeiro. Valores financeiros expressos em milhões de reais.', 'https://olinda.bcb.gov.br/olinda/servico/selic_operacoes/versao/v1/odata/OperacoesEmUmAno(Ano=@Ano)?@Ano=''2023''&$top=100&$format=json', 0, 'Operações por um ano específico no Selic.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    137, 132, 6, 'Estatísticas Selic - Participantes', 'https://olinda.bcb.gov.br/olinda/servico/selic_participantes/versao/v1/odata/QuantidadePorTipoParticipante(Data=@Data)', 'Quantidade de participantes registrados no Selic, por tipo, em uma data. Dados disponíveis a partir de 16/11/2010.', 'https://olinda.bcb.gov.br/olinda/servico/selic_participantes/versao/v1/odata/QuantidadePorTipoParticipante(Data=@Data)?@Data=''2023-10-06''&$top=100&$format=json', 0, 'Quantidade de Participantes no Selic'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    138, 133, 6, 'Expectativas de mercado para os indicadores macroeconômicos da Pesquisa Focus - Mensais', 'https://olinda.bcb.gov.br/olinda/servico/Expectativas/versao/v1/swagger-ui3#/', 'Dados sobre Expectativas de Mercado Mensais - Estatísticas', 'https://olinda.bcb.gov.br/olinda/servico/Expectativas/versao/v1/odata/ExpectativaMercadoMensais?%24top=10', 0, ' Expectativas de Mercado Mensais'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    139, 134, 6, 'Expectativas de mercado para os indicadores macroeconômicos da Pesquisa Focus - Mercado Selic', 'https://olinda.bcb.gov.br/olinda/servico/Expectativas/versao/v1/swagger-ui3#/', 'Dados sobre Expectativas de Mercado Selic - Estatísticas', 'https://olinda.bcb.gov.br/olinda/servico/Expectativas/versao/v1/odata/ExpectativasMercadoSelic?%24top=10', 0, ' Expectativas de Mercado Selic'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    140, 135, 6, 'Expectativas de mercado para os indicadores macroeconômicos da Pesquisa Focus - Mercados trimestrais', 'https://olinda.bcb.gov.br/olinda/servico/Expectativas/versao/v1/swagger-ui3#/', 'Dados sobre Expectativas de Mercado Trimestrais - Estatísticas', 'https://olinda.bcb.gov.br/olinda/servico/Expectativas/versao/v1/odata/ExpectativasMercadoTrimestrais?%24top=10', 0, ' Expectativas de Mercado Trimestal'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    141, 136, 6, 'Expectativas de mercado para os indicadores macroeconômicos da Pesquisa Focus - Mercado anuais', 'https://olinda.bcb.gov.br/olinda/servico/Expectativas/versao/v1/swagger-ui3#/', 'Traz dados sobre Expectativas de Mercado Anuais - Estatísticas', 'https://olinda.bcb.gov.br/olinda/servico/Expectativas/versao/v1/odata/ExpectativasMercadoAnuais?%24top=10', 0, ' Expectativas de Mercado Anual'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    142, 137, 6, 'Expectativas de mercado para os indicadores macroeconômicos da Pesquisa Focus - Mercado para inflação nos próximos 12 meses', 'https://olinda.bcb.gov.br/olinda/servico/Expectativas/versao/v1/swagger-ui3#/', 'Dados sobre Expectativas de Mercado para inflação nos próximos 12 meses - Estatísticas', 'https://olinda.bcb.gov.br/olinda/servico/Expectativas/versao/v1/odata/ExpectativasMercadoInflacao12Meses?%24top=10', 0, ' Expectativas de Mercado Inflação próximos12 meses'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    143, 138, 6, 'Expectativas de mercado para os indicadores macroeconômicos da Pesquisa Focus - Mercado para inflação nos próximos 13 a 24 meses - Estatísticas', 'https://olinda.bcb.gov.br/olinda/servico/Expectativas/versao/v1/odata/ExpectativasMercadoInflacao24Meses', 'Traz dados sobre Expectativas de Mercado para inflação nos próximos 13 a 24 meses - Estatísticas', 'https://olinda.bcb.gov.br/olinda/servico/Expectativas/versao/v1/odata/ExpectativasMercadoInflacao24Meses?$top=100&$format=json', 0, ' Expectativas de Mercado para inflação nos próximos 13 a 24 meses'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    144, 139, 6, 'Expectativas de mercado para os indicadores macroeconômicos da Pesquisa Focus - Mercado top 5 mensais', 'https://olinda.bcb.gov.br/olinda/servico/Expectativas/versao/v1/swagger-ui3#/', 'Dados sobre Expectativas de Mercado Mensais Top 5 - Estatísticas', 'https://olinda.bcb.gov.br/olinda/servico/Expectativas/versao/v1/odata/ExpectativasMercadoTop5Mensais?%24top=10', 0, 'Expectativas de Mercado Mensais Top 5 estatísiticas'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    145, 140, 6, 'Expectativas de mercado para os indicadores macroeconômicos da Pesquisa Focus - Mercado top 5 Selic', 'https://olinda.bcb.gov.br/olinda/servico/Expectativas/versao/v1/swagger-ui3#/', 'Traz os dados sobre Expectativas de Mercado Selic Top 5 - Estatísticas', 'https://olinda.bcb.gov.br/olinda/servico/Expectativas/versao/v1/odata/ExpectativasMercadoTop5Selic?%24top=10', 0, 'Expectativas de Mercado Mensais Top 5 Selic'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    146, 141, 6, 'Expectativas de mercado para os indicadores macroeconômicos da Pesquisa Focus - Mercado top 5 anuais', 'https://olinda.bcb.gov.br/olinda/servico/Expectativas/versao/v1/swagger-ui3#/', 'Dados sobre Expectativas de Mercado Anuais Top 5 - Estatísticas', 'https://olinda.bcb.gov.br/olinda/servico/Expectativas/versao/v1/odata/ExpectativasMercadoTop5Anuais?%24top=10', 0, 'Expectativas de Mercado Mensais Top 5 anuais'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    147, 142, 6, 'Filiais de administradoras de  Consórcio', 'https://olinda.bcb.gov.br/olinda/servico/Informes_FiliaisAdministradorasConsorcios/versao/v1/swagger-ui3#/', 'Dados sobre as Filiais de Administradoras de Consórcios', 'https://olinda.bcb.gov.br/olinda/servico/Informes_FiliaisAdministradorasConsorcios/versao/v1/odata/Filiais?%24top=10', 0, 'Filiais de Administradoras de Consórcios'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    148, 143, 6, 'Dados selecionados de instituições financeiras - Data de cadastro', 'https://olinda.bcb.gov.br/olinda/servico/IFDATA/versao/v1/swagger-ui3#/', 'Fornece informações das instituições financeiras que compõem os relatórios disponíveis no IFData.', 'https://olinda.bcb.gov.br/olinda/servico/IFDATA/versao/v1/odata/IfDataCadastro(AnoMes=@AnoMes)?%40AnoMes=202310', 0, 'Instituições credenciadas de acordo com Mês/Ano'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    149, 144, 6, 'Dados selecionados de instituições financeiras - Lista de relatório', 'https://olinda.bcb.gov.br/olinda/servico/IFDATA/versao/v1/swagger-ui3#/', 'Lista os relatórios disponíveis e seus códigos', 'https://olinda.bcb.gov.br/olinda/servico/IFDATA/versao/v1/odata/ListaDeRelatorio()', 0, 'Lista de relatórios disponíveis'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    150, 145, 6, 'Dados selecionados de instituições financeiras - Data valores', 'https://olinda.bcb.gov.br/olinda/servico/IFDATA/versao/v1/swagger-ui3#/', 'Fornece as informações sobre a estrutura de um relatório específico e os valores de cada coluna do IFData.', 'https://olinda.bcb.gov.br/olinda/servico/IFDATA/versao/v1/odata/IfDataValores(AnoMes=@AnoMes,TipoInstituicao=@TipoInstituicao,Relatorio=@Relatorio)?@AnoMes=202303&@TipoInstituicao=1&@Relatorio=''1''&$top=100&$format=json', 0, 'Dados das instituições financeiras por Tipo de instituição, relatório e Mês/Ano'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    151, 146, 6, 'Indicadores de gestão do Banco Central do Brasil', 'https://olinda.bcb.gov.br/olinda/servico/SGPro2_DadosAbertosIndicadores/versao/v1/swagger-ui3#/', 'Obtém os dados abertos dos indicadores de gestão ativos no Banco Central do Brasil. São listadas todas apurações de todos períodos de todos indicadores nos ano-bases em que foram considerados. O serviço disponibiliza parâmetros opcionais para filtrar os resultados por Indicador, ano-base e situação do indicador.', 'https://olinda.bcb.gov.br/olinda/servico/SGPro2_DadosAbertosIndicadores/versao/v1/odata/ObterDadosAbertosIndicadores(idIndicadorPar=@idIndicadorPar,situacaoIndicadorPar=@situacaoIndicadorPar,anoBaseMetaPar=@anoBaseMetaPar)?$top=100&$format=json', 0, 'Lista Indicadores de gestão do Banco Central do Brasil'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    152, 147, 6, 'Instituições submetidas a regimes de resolução', 'https://olinda.bcb.gov.br/olinda/servico/regimes_especiais/versao/v1/swagger-ui3#/', 'Lista das instituições que se encontram em liquidação extrajudicial decretadas pelo BCB.', 'https://olinda.bcb.gov.br/olinda/servico/regimes_especiais/versao/v1/odata/Regimes', 0, 'Lista das instituições em liquidação extrajudicial decretadas pelo BCB'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    153, 148, 6, 'Lista das instituições financeiras autorizadas a operar no CCR', 'https://olinda.bcb.gov.br/olinda/servico/CCR/versao/v1/swagger-ui3#/', 'Retorna todas as Instituições Financeiras autorizadas no CCR', 'https://olinda.bcb.gov.br/olinda/servico/CCR/versao/v1/odata/InstituicoesFinanceirasAutorizadas', 0, 'Instituições Financeiras autorizadas no CCR'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    154, 149, 6, 'Matriz de Dados do Crédito Rural - Custeio, município e produto', 'https://olinda.bcb.gov.br/olinda/servico/SICOR/versao/v2/swagger-ui3#/', 'Quantidade e Valor dos Contratos de Custeio por Município e Produto.', 'https://olinda.bcb.gov.br/olinda/servico/SICOR/versao/v2/odata/CusteioMunicipioProduto?%24top=5', 0, 'Dados de Contratos de Custeio por Município e Produto.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    155, 150, 6, 'Matriz de Dados do Crédito Rural - Comercialização, região, UF e produto', 'https://olinda.bcb.gov.br/olinda/servico/SICOR/versao/v2/swagger-ui3#/', 'Quantidade e Valor dos Contratos de Comercialização por Produto, Região e UF.', 'https://olinda.bcb.gov.br/olinda/servico/SICOR/versao/v2/odata/ComercRegiaoUFProduto?%24top=5', 0, 'Dados de Contratos de Comercialização por Produto, Região e UF.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    156, 151, 6, 'Matriz de Dados do Crédito Rural - Custeio, região, UF e produto', 'https://olinda.bcb.gov.br/olinda/servico/SICOR/versao/v2/swagger-ui3#/', 'Quantidade e Valor dos Contratos de Custeio por Produto, Região e UF.', 'https://olinda.bcb.gov.br/olinda/servico/SICOR/versao/v2/odata/CusteioRegiaoUFProduto?%24top=5', 0, 'Dados de Contratos de Custeio por Produto, Região e UF.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    157, 153, 6, 'Matriz de Dados do Crédito Rural - Faixa', 'https://olinda.bcb.gov.br/olinda/servico/SICOR/versao/v2/swagger-ui3#/', 'Quantidade e Valor dos Contratos por Faixa de Valores.', 'https://olinda.bcb.gov.br/olinda/servico/SICOR/versao/v2/odata/Faixa?%24top=5', 0, 'Dados dos Contratos de Crédito rural por Faixa de Valores do crédito rural'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    158, 154, 6, 'Matriz de Dados do Crédito Rural - Fonte de recursos', 'https://olinda.bcb.gov.br/olinda/servico/SICOR/versao/v2/swagger-ui3#/', 'Quantidade e Valor dos Contratos por Fonte de Recursos.', 'https://olinda.bcb.gov.br/olinda/servico/SICOR/versao/v2/odata/FonteRecursos?%24top=5', 0, 'Dados dos Contratos de Crédito rural  por Fonte de Recursos do crédito rural'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    159, 155, 6, 'Matriz de Dados do Crédito Rural - Fonte de Recursos e IF', 'https://olinda.bcb.gov.br/olinda/servico/SICOR/versao/v2/swagger-ui3#/', 'Quantidade e Valor dos Contratos por Fonte de Recursos e IF.', 'https://olinda.bcb.gov.br/olinda/servico/SICOR/versao/v2/odata/FonteRecursosIF?%24top=5', 0, 'Dados dos Contratos de Crédito rural  por Fonte de Recursos e IF.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    160, 156, 6, 'Matriz de Dados do Crédito Rural - Faixa e UF', 'https://olinda.bcb.gov.br/olinda/servico/SICOR/versao/v2/swagger-ui3#/', 'Quantidade e Valor dos Contratos por Faixa de Valores e UF.', 'https://olinda.bcb.gov.br/olinda/servico/SICOR/versao/v2/odata/FaixaUF?%24top=5', 0, 'Dados dos Contratos de Crédito rural  por Faixa de Valores e UF.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    161, 157, 6, 'Matriz de Dados do Crédito Rural - Investimento por município e produto', 'https://olinda.bcb.gov.br/olinda/servico/SICOR/versao/v2/swagger-ui3#/', 'Quantidade e Valor dos Contratos de Investimento por Município e Produto.', 'https://olinda.bcb.gov.br/olinda/servico/SICOR/versao/v2/odata/InvestMunicipioProduto?%24top=55', 0, 'Dados dos Contratos de Investimento de Crédito rural  por Município e Produto.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    162, 158, 6, 'Matriz de Dados do Crédito Rural - Investimento por região, UF e produto', 'https://olinda.bcb.gov.br/olinda/servico/SICOR/versao/v2/swagger-ui3#/', 'Quantidade e Valor dos Contratos de Investimento por Região, UF e Produto.', 'https://olinda.bcb.gov.br/olinda/servico/SICOR/versao/v2/odata/InvestRegiaoUFProduto?%24top=5', 0, 'Dados dos Contratos de Investimento de Crédito rural  por Região, UF e Produto.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    163, 159, 6, 'Matriz de Dados do Crédito Rural - Programa e subprograma', 'https://olinda.bcb.gov.br/olinda/servico/SICOR/versao/v2/swagger-ui3#/', 'Quantidade e Valor dos Contratos por Programa e Subprograma.', 'https://olinda.bcb.gov.br/olinda/servico/SICOR/versao/v2/odata/ProgramaSubprograma?%24top=5', 0, 'Dados dos Contratos de Crédito rural  por Programa e Subprograma.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    164, 160, 6, 'Matriz de Dados do Crédito Rural - Programa, subprograma, regiãoo e UF', 'https://olinda.bcb.gov.br/olinda/servico/SICOR/versao/v2/swagger-ui3#/', 'Quantidade e Valor dos Contratos por Programa, Subprograma e UF.', 'https://olinda.bcb.gov.br/olinda/servico/SICOR/versao/v2/odata/ProgramaSubprogramaRegiaoUF?%24top=5', 0, 'Dados dos Contratos de Crédito rural  por Programa, Subprograma e UF.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    165, 161, 6, 'Matriz de Dados do Crédito Rural - Região e UF', 'https://olinda.bcb.gov.br/olinda/servico/SICOR/versao/v2/swagger-ui3#/', 'Quantidade e Valor dos Contratos por Região e UF', 'https://olinda.bcb.gov.br/olinda/servico/SICOR/versao/v2/odata/RegiaoUF?%24top=5', 0, 'Dados dos Contratos de Crédito rural por Região e UF'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    166, 162, 6, 'Matriz de Dados do Crédito Rural - Região, UF e gênero', 'https://olinda.bcb.gov.br/olinda/servico/SICOR/versao/v2/swagger-ui3#/', 'Quantidade e Valor dos Contratos por Região, UF e Gênero.', 'https://olinda.bcb.gov.br/olinda/servico/SICOR/versao/v2/odata/RegiaoUFGenero?%24top=5', 0, 'Dados dos Contratos de Crédito rural  por Região, UF e Gênero.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    167, 163, 6, 'Matriz de Dados do Crédito Rural - Segmento e IF', 'https://olinda.bcb.gov.br/olinda/servico/SICOR/versao/v2/swagger-ui3#/', 'Quantidade e Valor dos Contratos por Segmento e IF.', 'https://olinda.bcb.gov.br/olinda/servico/SICOR/versao/v2/odata/SegmentoIF?%24top=5', 0, 'Dados dos Contratos de Crédito rural  por Segmento e IF.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    168, 164, 6, 'Matriz de Dados do Crédito Rural - Segmento, IF, região e UF', 'https://olinda.bcb.gov.br/olinda/servico/SICOR/versao/v2/swagger-ui3#/', 'Quantidade e Valor dos Contratos por Região, UF, Segmento e IF.', 'https://olinda.bcb.gov.br/olinda/servico/SICOR/versao/v2/odata/SegmentoIFRegiaoUF?%24top=5', 0, 'Dados dos Contratos de Crédito rural por Região, UF, Segmento e IF.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    169, 165, 6, 'Matriz de Dados do Crédito Rural - Segmento por tipo de pessoa', 'https://olinda.bcb.gov.br/olinda/servico/SICOR/versao/v2/swagger-ui3#/', 'Quantidade e Valor dos Contratos por Tipo de Pessoa, Segmento e IF.', 'https://olinda.bcb.gov.br/olinda/servico/SICOR/versao/v2/odata/SegmentoTipoPessoa?%24top=5', 0, 'Dados dos Contratos de Crédito rural  por Tipo de Pessoa, Segmento e IF.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    170, 166, 6, 'Moedas Comemorativas', 'https://olinda.bcb.gov.br/olinda/servico/mecir_moedas_comemorativas/versao/v1/swagger-ui3#/', 'O arquivo disponibilizado apresenta informações diárias das quantidades de moedas comemorativas. As informações estão separadas para cada família (categoria) e denominação do Real (símbolos : R$, BRL).', 'https://olinda.bcb.gov.br/olinda/servico/mecir_moedas_comemorativas/versao/v1/odata/informacoes_diarias?%24top=5', 0, 'Informações sobre moedas comemorativas em circulação'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    171, 167, 6, 'Multas emitidas pelo Banco Central do Brasil', 'https://olinda.bcb.gov.br/olinda/servico/SGM/versao/v1/swagger-ui3#/', 'Informações de multas, agregadas por ano, fundamento legal e fato gerador.', 'https://olinda.bcb.gov.br/olinda/servico/SGM/versao/v1/odata/ObterMultas?%24top=5', 0, 'Multas emitidas pelo Banco Central'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    172, 168, 6, 'Orçamento de Autoridade Monetária', 'https://olinda.bcb.gov.br/olinda/servico/SOR_OperacoesOrcamentarias/versao/v1/swagger-ui3#/', 'Informações sobre a execução do Orçamento de Autoridade Monetária do Banco Central do Brasil a partir de janeiro de 2015. Quadros com a execução mensal podem ser encontrados na página do Banco Central do Brasil.', 'https://olinda.bcb.gov.br/olinda/servico/SOR_OperacoesOrcamentarias/versao/v1/odata/BuscaOperacoesOrcamentarias(Data_inicio=@Data_inicio,Data_fim=@Data_fim)?@Data_inicio=''2023-10-06''&@Data_fim=''2023-10-20''&$top=5&$format=json', 0, 'Orçamento de Autoridade Monetária '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    173, 169, 6, 'Ouvidorias dos bancos', 'https://olinda.bcb.gov.br/olinda/servico/Informes_Ouvidorias/versao/v1/odata/Ouvidorias?%24top=5', 'Conjunto de dados relativos à ouvidoria dos bancos.', 'https://olinda.bcb.gov.br/olinda/servico/Informes_Ouvidorias/versao/v1/odata/Ouvidorias?%24top=5', 0, 'Dados relativos à ouvidoria dos bancos.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    174, 173, 6, 'Perguntas e respostas - Banco Central do Brasil - Lista de perguntas e respostas', 'https://www.bcb.gov.br/conteudo/dadosabertos/BCBDeinf/elements_faq.html#/', 'Lista de perguntas e respostas da base de dados da Faq do Banco Central do Brasil.', 'https://www.bcb.gov.br/api/servico/faq/faqperguntas', 0, 'Listas Perguntas e respostas Faq BCB'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    175, 174, 6, 'Perguntas e respostas - Banco Central do Brasil -  Lista de categorias e subcategorias', 'https://www.bcb.gov.br/conteudo/dadosabertos/BCBDeinf/elements_faq.html#/paths/faqperguntas/get', 'Lista de categorias e suas respectivas subcategorias, que agrupam perguntas e respostas por afinidade do ponto de vista do usuário.', 'https://www.bcb.gov.br/api/servico/faq/faqsubcategorias', 0, 'Lista Categorias Faq BCB'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    176, 175, 6, 'Pontos de atendimento de pix saque e pix troco', 'https://olinda.bcb.gov.br/olinda/servico/DASFN/versao/v1/aplicacao#!/recursos/Recursos#eyJmb3JtdWxhcmlvIjp7IiR0b3AiOjUsIiRmaWx0ZXIiOiIEMAQgZXEgJ3BpeF9zYXF1ZSciLCIkZm9ybWF0IjoianNvbiJ9LCJwZXNxdWlzYWRvIjp0cnVlLCJhY3RpdmVUYWIiOiJ0YWJsZSIsImdyaWRTdGF0ZSI6ewMwAzpbewNCAyIEMAQiLANBA30sewNCAyIEMQQiLANBA30sewNCAyIEMgQiLANBA30sewNCAyIEMwQiLANBA30sewNCAyIENAQiLANBA30sewNCAyIENQQiLANBA30sewNCAyIENgQiLANBA30sewNCAyIENwQiLANBA30sewNCAyIEOAQiLANBA30sewNCAyIEOQQiLANBA30sewNCAyIEMTAEIiwDQQN9XSwDMQM6e30sAzIDOltdLAMzAzp7fSwDNAM6e30sAzUDOnt9fSwicGl2b3RPcHRpb25zIjp7A2EDOnt9LANiAzpbXSwDYwM6NTAwLANkAzpbXSwDZQM6W10sA2YDOltdLANnAzoia2V5X2FfdG9feiIsA2gDOiJrZXlfYV90b196IiwDaQM6e30sA2oDOnt9LANrAzo4NSwDbAM6ZmFsc2UsA20DOnt9LANuAzp7fSwDbwM6IkNvbnRhZ2VtIiwDcAM6IlRhYmxlIn19', 'Através deste serviço é possível obter as URLs dos dados abertos catalogados pelo Banco Central do Brasil dentro da iniciativa de Dados Abertos do Sistema Financeiro Nacional', 'https://olinda.bcb.gov.br/olinda/servico/DASFN/versao/v1/odata/Recursos?$top=5&$filter=Api%20eq%20''pix_saque''&$format=json', 0, 'Postos de Atendimento Pix Saque e Pix Troco'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    177, 170, 6, 'Postos de atendimento de instituições supervisionadas pelo Bacen', 'https://olinda.bcb.gov.br/olinda/servico/Informes_PostosDeAtendimento/versao/v1/swagger-ui3#/', 'Postos de Atendimento', 'https://olinda.bcb.gov.br/olinda/servico/Informes_PostosDeAtendimento/versao/v1/odata/PostosAtendimento?%24top=5', 0, 'Atendimento de instituições supervisionadas pelo Bacen'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    178, 176, 6, 'Postos de atendimento eletrônico de instituições supervisionadas pelo Bacen', 'https://olinda.bcb.gov.br/olinda/servico/Informes_PostosDeAtendimentoEletronico/versao/v1/swagger-ui3#/', 'Postos de Atendimento Eletronico', 'https://olinda.bcb.gov.br/olinda/servico/Informes_PostosDeAtendimentoEletronico/versao/v1/odata/PostosAtendimentoEletronico?%24top=5', 0, 'Atendimento Eletrônico de Instituições supervisionadas pelo Bacen'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    179, 177, 6, 'Processo Administrativo Sancionador - QGI e QGP - Quadro geral inabilitados', 'https://olinda.bcb.gov.br/olinda/servico/Gepad_QuadrosGeraisInternet/versao/v1/odata/QuadroGeralInabilitados', 'Alguns cargos de instituição financeira ou administradora de consórcio, tais como administradores ou conselheiros, só podem ser ocupados por pessoas autorizadas pelo Banco Central. O QGI contém os nomes das pessoas que estão temporariamente impedidas de atuarem nesses cargos, por terem recebido a penalidade de inabilitação no âmbito de um processo administrativo sancionador. Mais informações sobre esse assunto podem ser encontradas na página https://www.bcb.gov.br/estabilidadefinanceira/processossfn.', 'https://olinda.bcb.gov.br/olinda/servico/Gepad_QuadrosGeraisInternet/versao/v1/odata/QuadroGeralInabilitados?%24top=5', 0, 'Quadro Geral Inabilitados de Ocupar cargos de instituição financeira ou administradora de consórcio'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    180, 178, 6, 'Processo Administrativo Sancionador - QGI e QGP - Quadro geral proibidos', 'https://olinda.bcb.gov.br/olinda/servico/Gepad_QuadrosGeraisInternet/versao/v1/odata/QuadroGeralProibidos', 'Alguns cargos de instituição financeira ou administradora de consórcio, tais como administradores ou conselheiros, só podem ser ocupados por pessoas autorizadas pelo Banco Central. O QGI contém os nomes das pessoas que estão temporariamente impedidas de atuarem nesses cargos, por terem recebido a penalidade de inabilitação no âmbito de um processo administrativo sancionador. Mais informações sobre esse assunto podem ser encontradas na página https://www.bcb.gov.br/estabilidadefinanceira/processossfn.', 'https://olinda.bcb.gov.br/olinda/servico/Gepad_QuadrosGeraisInternet/versao/v1/odata/QuadroGeralProibidos?%24top=5', 0, 'Quadro Geral Proibidos de Ocupar cargos de instituição financeira ou administradora de consórcio'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    181, 179, 6, 'Processos de autorização', 'https://olinda.bcb.gov.br/olinda/servico/Processos_Autorizacao/versao/v1/odata/ProcessosAutorizacaoFuncionamentoEmAberto(dataBase=@dataBase)', 'O recurso disponibilizado apresenta relação de processos de autorização de funcionamento em aberto (ainda não decididos) no ano-mês selecionado. Nos casos em que o titular do processo é a instituição a ser constituída, não consta a informação de CNPJ e nem de CPF.', 'https://olinda.bcb.gov.br/olinda/servico/Processos_Autorizacao/versao/v1/odata/ProcessosAutorizacaoFuncionamentoEmAberto(dataBase=@dataBase)?%24top=5', 0, 'Busca Processos de autorização'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    182, 180, 6, 'Projetos corporativos ativos no Banco Central do Brasil', 'https://olinda.bcb.gov.br/olinda/servico/SGPro2_DadosAbertosProjetos/versao/v1/odata/ObterDadosAbertosProjetos', 'Projetos corporativos ativos no Banco Central do Brasil', 'https://olinda.bcb.gov.br/olinda/servico/SGPro2_DadosAbertosProjetos/versao/v1/odata/ObterDadosAbertosProjetos?%24top=5', 0, 'Projetos corporativos Banco Central'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    183, 181, 6, 'Publicação dos feriados e instituições autorizadas a operar no Sistema de Pagamentos em Moeda Local (SML) - Instituições Brasil e Argentina', 'https://olinda.bcb.gov.br/olinda/servico/SML/versao/v1/odata/InstituicoesBrasilArgentina', 'Instituições brasileiras autorizadas a operar no SML com a Argentina', 'https://olinda.bcb.gov.br/olinda/servico/SML/versao/v1/odata/InstituicoesBrasilArgentina', 0, 'Instituições brasileiras autorizadas a operar no SML com a Argentina'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    184, 182, 6, 'Publicação dos feriados e instituições autorizadas a operar no Sistema de Pagamentos em Moeda Local (SML) - Instituições Argentina e Brasil', 'https://olinda.bcb.gov.br/olinda/servico/SML/versao/v1/odata/InstituicoesArgentinaBrasil', 'Instituições argentinas autorizadas a operar no SML com a Brasil', 'https://olinda.bcb.gov.br/olinda/servico/SML/versao/v1/odata/InstituicoesArgentinaBrasil', 0, 'Instituições argentinas autorizadas a operar no SML com a Brasil'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    185, 183, 6, 'Publicação dos feriados e instituições autorizadas a operar no Sistema de Pagamentos em Moeda Local (SML) - Instituições Brasil Uruguai', 'https://olinda.bcb.gov.br/olinda/servico/SML/versao/v1/odata/InstituicoesBrasilUruguai', 'Instituições brasileiras autorizadas a operar no SML com o Uruguai', 'https://olinda.bcb.gov.br/olinda/servico/SML/versao/v1/odata/InstituicoesBrasilUruguai', 0, 'Instituições brasileiras autorizadas a operar no SML com o Uruguai'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    186, 184, 6, 'Publicação dos feriados e instituições autorizadas a operar no Sistema de Pagamentos em Moeda Local (SML) - Instituições Uruguai Brasil', 'https://olinda.bcb.gov.br/olinda/servico/SML/versao/v1/odata/InstituicoesUruguaiBrasil', 'Instituições uruguaias autorizadas a operar no SML com a Brasil', 'https://olinda.bcb.gov.br/olinda/servico/SML/versao/v1/odata/InstituicoesUruguaiBrasil', 0, 'Instituições uruguaias autorizadas a operar no SML com a Brasil'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    187, 185, 6, 'Publicação dos feriados e instituições autorizadas a operar no Sistema de Pagamentos em Moeda Local (SML) - Instituições Brasil Paraguai', 'https://olinda.bcb.gov.br/olinda/servico/SML/versao/v1/odata/InstituicoesBrasilParaguai', 'Instituições brasileiras autorizadas a operar no SML com o Paraguai', 'https://olinda.bcb.gov.br/olinda/servico/SML/versao/v1/odata/InstituicoesBrasilParaguai', 0, 'Instituições brasileiras autorizadas a operar no SML com o Paraguai'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    188, 186, 6, 'Publicação dos feriados e instituições autorizadas a operar no Sistema de Pagamentos em Moeda Local (SML) - Instituições Paraguai Brasil', 'https://olinda.bcb.gov.br/olinda/servico/SML/versao/v1/odata/InstituicoesParaguaiBrasil', 'Instituições paraguaias autorizadas a operar no SML com a Brasil', 'https://olinda.bcb.gov.br/olinda/servico/SML/versao/v1/odata/InstituicoesParaguaiBrasil', 0, 'Instituições paraguaias autorizadas a operar no SML com a Brasil'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    189, 187, 6, 'Publicação dos feriados e instituições autorizadas a operar no Sistema de Pagamentos em Moeda Local (SML) - Feriados Argentina', 'https://olinda.bcb.gov.br/olinda/servico/SML/versao/v1/odata/FeriadosArgentina', 'Feriados da Argentina no ano corrente informados no SML', 'https://olinda.bcb.gov.br/olinda/servico/SML/versao/v1/odata/FeriadosArgentina', 0, 'Feriados da Argentina no ano corrente informados no SML'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    190, 188, 6, 'Publicação dos feriados e instituições autorizadas a operar no Sistema de Pagamentos em Moeda Local (SML) - Feriados Uruguai', 'https://olinda.bcb.gov.br/olinda/servico/SML/versao/v1/odata/FeriadosUruguai', 'Feriados do Uruguai no ano corrente informados no SML', 'https://olinda.bcb.gov.br/olinda/servico/SML/versao/v1/odata/FeriadosUruguai', 0, 'Feriados do Uruguai no ano corrente informados no SML'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    191, 189, 6, 'Publicação dos feriados e instituições autorizadas a operar no Sistema de Pagamentos em Moeda Local (SML) - Feriados Paraguai', 'https://olinda.bcb.gov.br/olinda/servico/SML/versao/v1/odata/FeriadosParaguai', 'Feriados do Paraguai no ano corrente informados no SML', 'https://olinda.bcb.gov.br/olinda/servico/SML/versao/v1/odata/FeriadosParaguai', 0, 'Feriados do Paraguai no ano corrente informados no SML'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    192, 190, 6, 'Publicação dos feriados e instituições autorizadas a operar no Sistema de Pagamentos em Moeda Local (SML) - Agregado exportação', 'https://olinda.bcb.gov.br/olinda/servico/SML/versao/v1/odata/AgregadoExportacao(MesInicial=@MesInicial,AnoInicial=@AnoInicial,MesFinal=@MesFinal,AnoFinal=@AnoFinal)', 'Valor e quantidade de operações de exportações do Brasil agregados por mês, ano e país', 'https://olinda.bcb.gov.br/olinda/servico/SML/versao/v1/odata/AgregadoExportacao(MesInicial=@MesInicial,AnoInicial=@AnoInicial,MesFinal=@MesFinal,AnoFinal=@AnoFinal)?%40MesInicial=1&%40AnoInicial=2019&%40MesFinal=3&%40AnoFinal=2019', 0, 'Dados de operações de exportações do Brasil agregados por mês, ano e país'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    193, 191, 6, 'Publicação dos feriados e instituições autorizadas a operar no Sistema de Pagamentos em Moeda Local (SML) - Exportações e importações Argentina', 'https://olinda.bcb.gov.br/olinda/servico/SML/versao/v1/odata/ExportacoesImportacoesSmlArgentina(DataInicial=@DataInicial,DataFinal=@DataFinal)?%40DataInicial=2000-01-01&%40DataFinal=2023-10-21', 'Publicação dos feriados e instituições autorizadas a operar no Sistema de Pagamentos em Moeda Local (SML)- ExportacoesImportacoesSmlArgentina(DataInicial=@DataInicial,DataFinal=@DataFinal)', 'https://olinda.bcb.gov.br/olinda/servico/SML/versao/v1/odata/ExportacoesImportacoesSmlArgentina(DataInicial=@DataInicial,DataFinal=@DataFinal)?%40DataInicial=2000-01-01&%40DataFinal=2023-10-21', 1, 'Publicação dos feriados e instituições autorizadas a operar no Sistema de Pagamentos em Moeda Local por período'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    194, 192, 6, 'Publicação dos registros de capitais estrangeiros - Todos os registros', 'https://olinda.bcb.gov.br/olinda/servico/RDE_Publicacao/versao/v1/odata/TodosRegistros', 'Publicação dos registros de capitais estrangeiros- TodosRegistros', 'https://olinda.bcb.gov.br/olinda/servico/RDE_Publicacao/versao/v1/odata/TodosRegistros?%24top=5', 0, 'Publicação dos registros de capitais estrangeiros, todos os registros'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    195, 193, 6, 'Publicação dos registros de capitais estrangeiros - Registros IED', 'https://olinda.bcb.gov.br/olinda/servico/RDE_Publicacao/versao/v1/odata/RegistrosIED?%24top=5', 'Publicação dos registros de capitais estrangeiros- RegistrosIED', 'https://olinda.bcb.gov.br/olinda/servico/RDE_Publicacao/versao/v1/odata/RegistrosIED?%24top=5', 0, 'Publicação dos registros de capitais estrangeiros, registros IED'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    196, 194, 6, 'Publicação dos registros de capitais estrangeiros - Registros por mês', 'https://olinda.bcb.gov.br/olinda/servico/RDE_Publicacao/versao/v1/odata/RegistrosPorMes(Mes=@Mes,Ano=@Ano)', 'Publicação dos registros de capitais estrangeiros- RegistrosPorMes(Mes=@Mes,Ano=@Ano)', 'https://olinda.bcb.gov.br/olinda/servico/RDE_Publicacao/versao/v1/odata/RegistrosPorMes(Mes=@Mes,Ano=@Ano)?%40Mes=1&%40Ano=2020&%24top=5', 0, 'Publicação dos registros de capitais estrangeiros, registros por mês'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    197, 195, 6, 'Ranking de Qualidade de Ouvidorias - Períodos', 'https://olinda.bcb.gov.br/olinda/servico/RankingOuvidorias/versao/v1/odata/Periodos', 'Ranking de Qualidade de Ouvidorias - Períodos', 'https://olinda.bcb.gov.br/olinda/servico/RankingOuvidorias/versao/v1/odata/Periodos?%24top=5', 0, 'Ranking de Qualidade das ouvidorias dos bancos por período'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    198, 196, 6, 'Ranking de Qualidade de Ouvidorias - Relatórios', 'https://olinda.bcb.gov.br/olinda/servico/RankingOuvidorias/versao/v1/odata/Relatorios(Ano=@Ano,Periodo=@Periodo,TipoPeriodo=@TipoPeriodo)', 'Ranking de Qualidade de Ouvidorias- Relatórios(Ano=@Ano,Periodo=@Periodo,TipoPeriodo=@TipoPeriodo)', 'https://olinda.bcb.gov.br/olinda/servico/RankingOuvidorias/versao/v1/odata/Relatorios(Ano=@Ano,Periodo=@Periodo,TipoPeriodo=@TipoPeriodo)?@Ano=2018&@Periodo=1&@TipoPeriodo=''T''&$top=5&$format=json', 0, 'Ranking de Qualidade de Ouvidorias dos bancos por ano, período e tipo do período'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    199, 197, 6, 'Relação de instituições em funcionamento no país - Sedes de bancos comerciais, múltiplos e caixa', 'https://olinda.bcb.gov.br/olinda/servico/Instituicoes_em_funcionamento/versao/v1/odata/SedesBancoComMultCE', 'Relatório com informações cadastrais de Bancos Comerciais, Múltiplos e Caixa Econômica', 'https://olinda.bcb.gov.br/olinda/servico/Instituicoes_em_funcionamento/versao/v1/odata/SedesBancoComMultCE?%24top=5', 0, 'Relatório com informações cadastrais de Bancos Comerciais, Múltiplos e Caixa Econômica'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    200, 198, 6, 'Relação de instituições em funcionamento no país - Sedes cooperativas', 'https://olinda.bcb.gov.br/olinda/servico/Instituicoes_em_funcionamento/versao/v1/odata/SedesCooperativas', 'Relatório com informações cadastrais de Cooperativas de Crédito', 'https://olinda.bcb.gov.br/olinda/servico/Instituicoes_em_funcionamento/versao/v1/odata/SedesCooperativas?%24top=5', 0, 'Relatório com informações cadastrais de Cooperativas de Crédito'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    201, 199, 6, 'Relação de instituições em funcionamento no país - Sedes sociedades', 'https://olinda.bcb.gov.br/olinda/servico/Instituicoes_em_funcionamento/versao/v1/odata/SedesSociedades', 'Relatório com informações cadastrais de Bancos de Investimento, Bancos de Desenvolvimento, Sociedades Corretoras de TVM e Câmbio, Sociedades Distribuidoras de TVM, Sociedades de Crédito, Financiamento e Investimento, Sociedades de Crédito Imobiliário e APE, Sociedades de Arrendamento Mercantil, Sociedades de Investimento, Sociedades de Crédito ao Microempreendedor, Agências de Fomento, Companhias Hipotecárias, Instituições de Pagamento, Sociedades de Crédito Direto e Sociedades de Empréstimo entre Pessoas.', 'https://olinda.bcb.gov.br/olinda/servico/Instituicoes_em_funcionamento/versao/v1/odata/SedesSociedades?%24top=5', 0, 'Relatório com informações cadastrais de várias instituições financeiras'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    202, 200, 6, 'Relação de instituições em funcionamento no país - Sedes consórcios', 'https://olinda.bcb.gov.br/olinda/servico/Instituicoes_em_funcionamento/versao/v1/odata/SedesConsorcios', 'Relatório com informações cadastrais de Administradoras de Consórcios', 'https://olinda.bcb.gov.br/olinda/servico/Instituicoes_em_funcionamento/versao/v1/odata/SedesConsorcios?%24top=5', 0, 'Relatório com informações cadastrais de Administradoras de Consórcios'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    203, 201, 6, 'Relatórios de inflação publicados - Relatórios de inflação', 'https://www.bcb.gov.br/api/servico/sitebcb/ri/relatorios', 'Lista informações básicas dos últimos relatórios de inflação publicados.', 'https://www.bcb.gov.br/api/servico/sitebcb/ri/relatorios?quantidade=5', 0, 'Lista informações básicas dos últimos relatórios de inflação publicados.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    204, 202, 6, 'Relatórios de inflação publicados - Arquivos integrantes dos relatórios de inflação', 'https://www.bcb.gov.br/api/servico/sitebcb/ri/arquivos-integrantes', 'Lista informações básicas dos arquivos que, juntos, compõem um relatório específico. A partir do relatório de setembro de 2021 está sendo disponibilizado um anexo estatístico em formato de planilha. Esse documento objetiva dar publicidade aos dados que suportaram a elaboração dos gráficos e das tabelas utilizados nos relatórios.', 'https://www.bcb.gov.br/api/servico/sitebcb/ri/arquivos-integrantes?identificadorRelatorio=202103', 0, 'Lista informações básicas dos arquivos que, juntos, compõem um relatório específico.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    205, 203, 6, 'Relatórios de inflação publicados - Calendário de divulgação', 'https://www.bcb.gov.br/api/servico/sitebcb/ri/proximos-relatorios', 'Lista próximas datas de divulgação dos relatórios de inflação já agendadas a partir de uma data específica. O Relatório de Inflação será divulgado até o último dia de cada trimestre civil (de acordo com o artigo 5º do Decreto nº 3088 de 21/06/1999).', 'https://www.bcb.gov.br/api/servico/sitebcb/ri/proximos-relatorios?inicioAgenda=2021-07-15', 0, 'Lista próximas datas de divulgação dos relatórios de inflação já agendadas a partir de uma data específica. O Relatório de Inflação será divulgado até o último dia de cada trimestre civil (de acordo com o artigo 5º do Decreto nº 3088 de 21/06/1999).'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    206, 204, 6, 'Relatórios e outros documentos da Ouvidoria do Banco Central', 'https://olinda.bcb.gov.br/olinda/servico/DadosAbertosTextuais/versao/v1/odata/ouvidoria', 'Lista de relatórios e documentos já disponibilizados pela Ouvidoria em formato aberto', 'https://olinda.bcb.gov.br/olinda/servico/DadosAbertosTextuais/versao/v1/odata/ouvidoria?%24top=5', 0, 'Lista de relatórios e documentos já disponibilizados pela Ouvidoria em formato aberto'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    207, 205, 6, 'Saldos contábeis mensais do Banco Central do Brasil', 'https://olinda.bcb.gov.br/olinda/servico/Saldos_BCB/versao/v1/odata/Saldos_Mensais_BCB(Data_base=@Data_base,Data_fim=@Data_fim)', 'Saldos contábeis mensais do Banco Central do Brasil', 'https://olinda.bcb.gov.br/olinda/servico/Saldos_BCB/versao/v1/odata/Saldos_Mensais_BCB(Data_base=@Data_base,Data_fim=@Data_fim)?@Data_base=''2020-01-01''&@Data_fim=''2020-12-31''&$top=5&$format=json', 0, 'Saldos contábeis mensais do Banco Central do Brasil'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    208, 206, 6, 'Modalidades de operações', 'https://olinda.bcb.gov.br/olinda/servico/CADIP_DADOS_PUBLICOS/versao/v1/odata/ModalidadeOperacao()?%24top=5', 'Modalidades das operações de crédito do CADIP', 'https://olinda.bcb.gov.br/olinda/servico/CADIP_DADOS_PUBLICOS/versao/v1/odata/ModalidadeOperacao()?%24top=5', 0, 'Modalidades das operações de crédito do CADIP'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    209, 207, 6, 'Endividamento dos entes públicos com o SFN', 'https://olinda.bcb.gov.br/olinda/servico/CADIP_DADOS_PUBLICOS/versao/v1/odata/EndividamentoEntePublico(Data=@Data)', 'Endividamento dos entes públicos com o Sistema Financeiro Nacional - dados agregados históricos', 'https://olinda.bcb.gov.br/olinda/servico/CADIP_DADOS_PUBLICOS/versao/v1/odata/EndividamentoEntePublico(Data=@Data)?%40Data=202010&%24top=5', 0, 'Endividamento dos entes públicos com o Sistema Financeiro Nacionais'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    210, 208, 6, 'Cadastro de operações', 'https://olinda.bcb.gov.br/olinda/servico/CADIP_DADOS_PUBLICOS/versao/v1/odata/CadastroOperacoes(Ano=@Ano)', 'Cadastro das operações de crédito por entes públicos - pesquisa por ano de contratação da operação', 'https://olinda.bcb.gov.br/olinda/servico/CADIP_DADOS_PUBLICOS/versao/v1/odata/CadastroOperacoes(Ano=@Ano)?%40Ano=2020&%24top=5', 0, 'Cadastro das operações de crédito por entes públicos'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    211, 209, 6, 'Movimentos de liberação', 'https://olinda.bcb.gov.br/olinda/servico/CADIP_DADOS_PUBLICOS/versao/v1/odata/MovimentoLiberacao(Ano=@Ano)', 'Lista de parcelas liberadas - dados até 2022', 'https://olinda.bcb.gov.br/olinda/servico/CADIP_DADOS_PUBLICOS/versao/v1/odata/MovimentoLiberacao(Ano=@Ano)?%40Ano=2020&%24top=5', 0, 'Lista de parcelas liberadas - dados até 2022'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    212, 210, 6, 'Movimentos de pagamento', 'https://olinda.bcb.gov.br/olinda/servico/CADIP_DADOS_PUBLICOS/versao/v1/odata/MovimentoPagamento(Ano=@Ano)', 'Lista dos pagamentos efetuados', 'https://olinda.bcb.gov.br/olinda/servico/CADIP_DADOS_PUBLICOS/versao/v1/odata/MovimentoPagamento(Ano=@Ano)?%40Ano=2020&%24top=5', 0, 'Lista dos pagamentos efetuados'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    213, 211, 6, 'Informações mensais', 'https://olinda.bcb.gov.br/olinda/servico/CADIP_DADOS_PUBLICOS/versao/v1/odata/InformacaoMensal(Ano=@Ano)', 'Informações mensais das operações', 'https://olinda.bcb.gov.br/olinda/servico/CADIP_DADOS_PUBLICOS/versao/v1/odata/InformacaoMensal(Ano=@Ano)?%40Ano=2020&%24top=5', 0, 'Informações mensais das operações'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    214, 212, 6, 'Cronograma das operações', 'https://olinda.bcb.gov.br/olinda/servico/CADIP_DADOS_PUBLICOS/versao/v1/odata/CronogramaOperacao(Ano=@Ano)', 'Cronograma das operações de crédito', 'https://olinda.bcb.gov.br/olinda/servico/CADIP_DADOS_PUBLICOS/versao/v1/odata/CronogramaOperacao(Ano=@Ano)?%40Ano=2020&%24top=5', 0, 'Cronograma das operações de crédito'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    215, 213, 6, 'Evolução do limite diário', 'https://olinda.bcb.gov.br/olinda/servico/CADIP_DADOS_PUBLICOS/versao/v1/odata/EvolucaoLimiteDiario(Ano=@Ano,Modalidade=@Modalidade)', 'Evolução do limite diário - por ano e modalidade', 'https://olinda.bcb.gov.br/olinda/servico/CADIP_DADOS_PUBLICOS/versao/v1/odata/EvolucaoLimiteDiario(Ano=@Ano,Modalidade=@Modalidade)?@Ano=2020&@Modalidade=''AS''&$top=5&$format=json', 0, 'Evolução do limite diário'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    216, 214, 6, 'Lista de recursos disponibilizados pelas instituições reguladas', 'https://olinda.bcb.gov.br/olinda/servico/DASFN/versao/v1/odata/Recursos', 'Através deste serviço é possível obter as URLs dos dados abertos catalogados pelo Banco Central do Brasil dentro da iniciativa de Dados Abertos do Sistema Financeiro Nacional', 'https://olinda.bcb.gov.br/olinda/servico/DASFN/versao/v1/odata/Recursos?$top=5&$filter=Api%20eq%20''pilar3''&$format=json', 0, 'Lista de dados disponibilizados pelas Instituições Reguladas'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    217, 215, 6, 'Grupos consolidados', 'https://olinda.bcb.gov.br/olinda/servico/Informes_ListaTarifasPorInstituicaoFinanceira/versao/v1/odata/GruposConsolidados', 'Grupos consolidados de instituições financeiras.', 'https://olinda.bcb.gov.br/olinda/servico/Informes_ListaTarifasPorInstituicaoFinanceira/versao/v1/odata/GruposConsolidados', 0, 'Grupos consolidados de instituições'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    218, 216, 6, 'Lista de instituições de grupo consolidado', 'https://olinda.bcb.gov.br/olinda/servico/Informes_ListaTarifasPorInstituicaoFinanceira/versao/v1/odata/ListaInstituicoesDeGrupoConsolidado(CodigoGrupoConsolidado=@CodigoGrupoConsolidado)', 'Lista as instituições de um grupo consolidado.', 'https://olinda.bcb.gov.br/olinda/servico/Informes_ListaTarifasPorInstituicaoFinanceira/versao/v1/odata/ListaInstituicoesDeGrupoConsolidado(CodigoGrupoConsolidado=@CodigoGrupoConsolidado)?@CodigoGrupoConsolidado=''02''&$top=5&$format=json', 0, 'Lista as instituições de um grupo consolidado.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    219, 217, 6, 'Lista de tarifas por instituição financeira', 'https://olinda.bcb.gov.br/olinda/servico/Informes_ListaTarifasPorInstituicaoFinanceira/versao/v1/odata/ListaTarifasPorInstituicaoFinanceira(PessoaFisicaOuJuridica=@PessoaFisicaOuJuridica,CNPJ=@CNPJ)', 'Lista as tarifas bancárias por instituição financeira.', 'https://olinda.bcb.gov.br/olinda/servico/Informes_ListaTarifasPorInstituicaoFinanceira/versao/v1/odata/ListaTarifasPorInstituicaoFinanceira(PessoaFisicaOuJuridica=@PessoaFisicaOuJuridica,CNPJ=@CNPJ)?@PessoaFisicaOuJuridica=''J''&@CNPJ=''00000000''&$top=5&$format=json', 0, 'Lista as tarifas bancárias por instituição financeira.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    220, 218, 6, 'Tarifas bancárias - por segmento e por serviços - Grupos consolidados', 'https://olinda.bcb.gov.br/olinda/servico/Informes_ListaTarifaPorValores/versao/v1/odata/GruposConsolidados', 'Tarifas Bancárias - por Segmento e por Serviços - Grupos Consolidados', 'https://olinda.bcb.gov.br/olinda/servico/Informes_ListaTarifaPorValores/versao/v1/odata/GruposConsolidados?%24top=5', 0, 'Tarifas bancárias por Grupos consolidados por segmentos e serviços'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    221, 219, 6, 'Tarifas bancárias - por segmento e por serviços - Serviços bancários', 'https://olinda.bcb.gov.br/olinda/servico/Informes_ListaTarifaPorValores/versao/v1/odata/ServicosBancarios', 'Tarifas Bancárias - por Segmento e por Serviços - Serviços Bancários', 'https://olinda.bcb.gov.br/olinda/servico/Informes_ListaTarifaPorValores/versao/v1/odata/ServicosBancarios?%24top=5', 0, 'Tarifas bancárias por Serviços bancários por segmentos e serviços'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    222, 220, 6, 'Tarifas Bancárias - por segmento e por serviços - Lista de tarifas por valores', 'https://olinda.bcb.gov.br/olinda/servico/Informes_ListaTarifaPorValores/versao/v1/odata/ListaTarifasPorValores(CodigoGrupoConsolidado=@CodigoGrupoConsolidado,CodigoServico=@CodigoServico)', 'Tarifas Bancárias - por Segmento e por Serviços -ListaTarifasPorValores(CodigoGrupoConsolidado=@CodigoGrupoConsolidado,CodigoServico=@CodigoServico)', 'https://olinda.bcb.gov.br/olinda/servico/Informes_ListaTarifaPorValores/versao/v1/odata/ListaTarifasPorValores(CodigoGrupoConsolidado=@CodigoGrupoConsolidado,CodigoServico=@CodigoServico)?@CodigoGrupoConsolidado=''02''&@CodigoServico=''1101''&$top=5&$format=json', 0, 'Lista de Tarifas bancárias por grupo consolidados e por código de serviço'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    223, 221, 6, 'Tarifas bancárias - valores mínimos, máximos e médios por serviço - Grupos consolidados', 'https://olinda.bcb.gov.br/olinda/servico/Informes_ListaValoresDeServicoBancario/versao/v1/odata/GruposConsolidados', 'Tarifas Bancárias - valores mínimos, máximos e médios por serviço - Grupos Consolidados', 'https://olinda.bcb.gov.br/olinda/servico/Informes_ListaValoresDeServicoBancario/versao/v1/odata/GruposConsolidados?%24top=5', 0, 'Valores Mínimos, médios e máximos de tarifas bancárias por serviço e grupo consolidados'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    224, 222, 6, 'Tarifas bancárias - valores mínimos, máximos e médios por serviço - Listas de valores de serviço bancário', 'https://olinda.bcb.gov.br/olinda/servico/Informes_ListaValoresDeServicoBancario/versao/v1/odata/ListaValoresServicoBancario(PessoaFisicaOuJuridica=@PessoaFisicaOuJuridica,CodigoGrupoConsolidado=@CodigoGrupoConsolidado)', 'Tarifas Bancárias - valores mínimos, máximos e médios por serviço -ListaValoresServicoBancario(PessoaFisicaOuJuridica=@PessoaFisicaOuJuridica,CodigoGrupoConsolidado=@CodigoGrupoConsolidado)', 'https://olinda.bcb.gov.br/olinda/servico/Informes_ListaValoresDeServicoBancario/versao/v1/odata/ListaValoresServicoBancario(PessoaFisicaOuJuridica=@PessoaFisicaOuJuridica,CodigoGrupoConsolidado=@CodigoGrupoConsolidado)?@PessoaFisicaOuJuridica=''J''&@CodigoGrupoConsolidado=''02''&$top=5&$format=json', 0, 'Valores Mínimos, médios e máximos de tarifas bancárias por serviço, por tipo de pessoa e por código de grupo consolidados'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    225, 223, 6, 'Moedas', 'https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/Moedas', 'Retorna a lista de moedas que podem ser usadas como parâmetros para este conjunto de dados.', 'https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/Moedas?%24top=5', 0, 'Lista moedas disponíveis'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    226, 224, 6, 'Cotação do dólar em uma determinada data', 'https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/CotacaoDolarDia(dataCotacao=@dataCotacao)', 'Retorna a Cotação de Compra e a Cotação de Venda da moeda Dólar contra a unidade monetária corrente para a data informada.', 'https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/CotacaoDolarDia(dataCotacao=@dataCotacao)?@dataCotacao=''10-20-2023''&$top=100&$format=json', 0, 'Cotação do dólar por determinada data'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    227, 225, 6, 'Cotação do dólar por período', 'https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/CotacaoDolarPeriodo(dataInicial=@dataInicial,dataFinalCotacao=@dataFinalCotacao)', 'Retorna a Cotação de Compra e a Cotação de Venda da moeda Dólar contra a unidade monetária corrente para o período informado.', 'https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/CotacaoDolarPeriodo(dataInicial=@dataInicial,dataFinalCotacao=@dataFinalCotacao)?@dataInicial=''10-01-2023''&@dataFinalCotacao=''10-20-2023''&$top=100&$format=json', 0, 'Cotação do dólar por período'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    228, 226, 6, 'Boletim - Paridade e cotação de moeda por data', 'https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/CotacaoMoedaDia(moeda=@moeda,dataCotacao=@dataCotacao)', 'Retorna os boletins diários com a Paridade de Compra e a Paridade de Venda, a Cotação de Compra e a Cotação de Venda para a data da moeda consultada. São cinco boletins para cada data, um de abertura, três intermediários e um de fechamento.', 'https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/CotacaoMoedaDia(moeda=@moeda,dataCotacao=@dataCotacao)?@moeda=''EUR''&@dataCotacao=''10-20-2023''&$top=100&$format=json', 0, 'Boletim de Paridade de cotação de moeda por data'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    229, 227, 6, 'Boletim - Paridade e cotação de moeda por período', 'https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/CotacaoMoedaPeriodo(moeda=@moeda,dataInicial=@dataInicial,dataFinalCotacao=@dataFinalCotacao)', 'Retorna os boletins diários com a Paridade de Compra e a Paridade de Venda, a Cotação de Compra e a Cotação de Venda para um período da moeda consultada. São cinco boletins para cada data, um de abertura, três intermediários e um de fechamento.', 'https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/CotacaoMoedaPeriodo(moeda=@moeda,dataInicial=@dataInicial,dataFinalCotacao=@dataFinalCotacao)?@moeda=''EUR''&@dataInicial=''10-01-2023''&@dataFinalCotacao=''10-22-2023''&$top=100&$format=json', 0, 'Boletim de Paridade de cotação de moeda por período'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    230, 228, 6, 'Taxas de câmbio - Todos os boletins diários', 'https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/CotacaoMoedaAberturaOuIntermediario(codigoMoeda=@codigoMoeda,dataCotacao=@dataCotacao)', 'Taxas de Câmbio - todos os boletins diários - CotacaoMoedaAberturaOuIntermediario(codigoMoeda=@codigoMoeda,dataCotacao=@dataCotacao)', 'https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/CotacaoMoedaAberturaOuIntermediario(codigoMoeda=@codigoMoeda,dataCotacao=@dataCotacao)?@codigoMoeda=''EUR''&@dataCotacao=''10-20-2023''&$format=json', 0, 'Cotação da moeda na abertura ou intermediário por código da moeda ou data da cotação'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    231, 229, 6, 'Taxas de câmbio - Todos os boletins diários - Cotação moeda, período e fechamento', 'https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/CotacaoMoedaPeriodoFechamento(codigoMoeda=@codigoMoeda,dataInicialCotacao=@dataInicialCotacao,dataFinalCotacao=@dataFinalCotacao)', 'Taxas de Câmbio - todos os boletins diários -CotacaoMoedaPeriodoFechamento(codigoMoeda=@codigoMoeda,dataInicialCotacao=@dataInicialCotacao,dataFinalCotacao=@dataFinalCotacao)', 'https://olinda.bcb.gov.br/olinda/servico/PTAX/versao/v1/odata/CotacaoMoedaPeriodoFechamento(codigoMoeda=@codigoMoeda,dataInicialCotacao=@dataInicialCotacao,dataFinalCotacao=@dataFinalCotacao)?@codigoMoeda=''EUR''&@dataInicialCotacao=''10-01-2023''&@dataFinalCotacao=''10-22-2023''&$format=json', 0, 'Cotação da moeda no fechamento por código da moeda ou data inicial e data final'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    232, 230, 6, 'Lista de recursos disponibilizados pelas instituições reguladas', 'https://olinda.bcb.gov.br/olinda/servico/DASFN/versao/v1/odata/Recursos', 'Através deste serviço é possível obter as URLs dos dados abertos catalogados pelo Banco Central do Brasil dentro da iniciativa de Dados Abertos do Sistema Financeiro Nacional', 'https://olinda.bcb.gov.br/olinda/servico/DASFN/versao/v1/odata/Recursos?$top=5&$filter=Api%20eq%20''taxas_cartoes''&$format=json', 0, 'Lista de recursos disponibilizados pelas Instituições Reguladas'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    233, 231, 6, 'Taxas de juros - Diário', 'https://olinda.bcb.gov.br/olinda/servico/taxaJuros/versao/v2/odata/TaxasJurosDiariaPorInicioPeriodo', 'Taxas médias de juros por instituição financeira para os últimos 5 dias úteis disponíveis a cada publicação. As taxas são apuradas pela média aritmética das taxas de juros pactuadas nas operações realizadas a cada dia útil do período considerado, ponderadas pelos respectivos valores contratados. Os valores apresentados incluem os juros e os encargos fiscais e operacionais incidentes sobre as operações.', 'https://olinda.bcb.gov.br/olinda/servico/taxaJuros/versao/v2/odata/TaxasJurosDiariaPorInicioPeriodo?%24top=5', 0, 'Taxa de juros diário'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    234, 232, 6, 'Taxas de juros - Mensal', 'https://olinda.bcb.gov.br/olinda/servico/taxaJuros/versao/v2/odata/TaxasJurosMensalPorMes', 'Taxas médias de juros por instituição financeira para modalidades de crédito selecionadas. Para essas modalidades não há dados diários disponíveis, apenas as médias mensais são apresentadas.', 'https://olinda.bcb.gov.br/olinda/servico/taxaJuros/versao/v2/odata/TaxasJurosMensalPorMes?%24top=5', 0, 'Taxa de juros mensal'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    235, 233, 6, 'Parâmetros para consulta', 'https://olinda.bcb.gov.br/olinda/servico/taxaJuros/versao/v2/odata/ParametrosConsulta', 'Lista todas as combinações possíveis de segmento e modalidades para a consulta de taxas das modalidades diárias e mensais.', 'https://olinda.bcb.gov.br/olinda/servico/taxaJuros/versao/v2/odata/ParametrosConsulta?%24top=5', 0, 'Lista parâmetros disponíveis para consultar taxas das modalidades'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    236, 234, 6, 'Datas disponíveis para consulta', 'https://olinda.bcb.gov.br/olinda/servico/taxaJuros/versao/v2/odata/ConsultaDatas', 'Lista todas as datas disponíveis para consulta de taxas das modalidades diárias e mensais.', 'https://olinda.bcb.gov.br/olinda/servico/taxaJuros/versao/v2/odata/ConsultaDatas?%24top=5', 0, 'Datas disponíveis para consultar '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    237, 235, 6, 'Taxa de juros de modalidades diárias e mensais', 'https://olinda.bcb.gov.br/olinda/servico/taxaJuros/versao/v2/odata/ConsultaUnificada?%24top=5', 'Consulta unificada de taxas de juros das modalidades diárias e mensais', 'https://olinda.bcb.gov.br/olinda/servico/taxaJuros/versao/v2/odata/ConsultaUnificada?%24top=5', 0, 'Taxas de juros das modalidades diárias e mensais'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    238, 236, 6, 'Títulos para operações conjugadas', 'https://olinda.bcb.gov.br/olinda/servico/PoliticaMonetaria_TitulosOperacoesConjugadas/versao/v1/odata/TitulosOperacoesConjugadas(Data=@Data)', 'Consulta a títulos da carteira do BC disponíveis para operações conjugadas com dealers. A consulta retorna nome do título, código do título no Selic e data de vencimento do título, para determinada data de referência informada na pesquisa.', 'https://olinda.bcb.gov.br/olinda/servico/PoliticaMonetaria_TitulosOperacoesConjugadas/versao/v1/odata/TitulosOperacoesConjugadas(Data=@Data)?@Data=''2023-10-06''&$top=5&$format=json', 0, 'Títulos da carteira do BC disponíveis para operações conjugadas com dealers.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    239, 239, 7, 'Busca de localidades', 'http://servicos.cptec.inpe.br/XML/listaCidades', 'Busca de localidades', 'http://servicos.cptec.inpe.br/XML/listaCidades', 0, 'Busca cidades'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    240, 240, 7, 'Situação nas estações de superfície dos aeroportos', 'http://servicos.cptec.inpe.br/XML/estacao/codigo_da_estacao/condicoesAtuais.xml', 'Situação nas Estações de Superfície dos Aeroportos', 'http://servicos.cptec.inpe.br/XML/estacao/codigo_da_estacao/condicoesAtuais.xml', 1, 'Situação nas Estações de Superfície dos Aeroportos'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    241, 241, 7, 'Condições meteorológicas atuais das capitais', 'http://servicos.cptec.inpe.br/XML/capitais/condicoesAtuais.xml', 'Condições meteorológicas atuais das capitais', 'http://servicos.cptec.inpe.br/XML/capitais/condicoesAtuais.xml', 1, 'Condições meteorológicas atuais das capitais'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    242, 242, 7, 'Previsão de tempo para 4 dias', 'http://servicos.cptec.inpe.br/XML/cidade/codigo_da_localidade/previsao.xml', 'Previsão de tempo para 4 dias', 'http://servicos.cptec.inpe.br/XML/cidade/codigo_da_localidade/previsao.xml', 1, 'Previsão do tempo 4 dias'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    243, 243, 7, 'Previsão de tempo para 7 dias', 'http://servicos.cptec.inpe.br/XML/cidade/7dias/codigo_da_localidade/previsao.xml', 'Previsão de tempo para 7 dias', 'http://servicos.cptec.inpe.br/XML/cidade/7dias/codigo_da_localidade/previsao.xml', 1, 'Previsão de tempo 7 dias '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    244, 244, 7, 'Previsão de tempo para 7 dias', 'http://servicos.cptec.inpe.br/XML/cidade/7dias/latitude/longitude/previsaoLatLon.xml', 'Previsão de tempo para 7 dias', 'http://servicos.cptec.inpe.br/XML/cidade/7dias/latitude/longitude/previsaoLatLon.xml', 1, 'Previsão de tempo 7 dias '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    245, 245, 7, 'Previsão de tempo estendida', 'http://servicos.cptec.inpe.br/XML/cidade/codigo_da_localidade/estendida.xml', 'Previsão de tempo estendida', 'http://servicos.cptec.inpe.br/XML/cidade/codigo_da_localidade/estendida.xml', 1, 'Previsão de tempo estendida'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    246, 246, 7, 'Previsão de tempo estendida', 'http://servicos.cptec.inpe.br/XML/cidade/latitude/longitude/estendidaLatLon.xml', 'Previsão de tempo estendida', 'http://servicos.cptec.inpe.br/XML/cidade/latitude/longitude/estendidaLatLon.xml', 1, 'Previsão de tempo estendida'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    247, 247, 7, 'Previsão de tempo estendida', 'http://servicos.cptec.inpe.br/XML/cidade/codigo_da_localidade/condicoesAtuaisUV.xml', 'Previsão de tempo estendida', 'http://servicos.cptec.inpe.br/XML/cidade/codigo_da_localidade/condicoesAtuaisUV.xml', 1, 'Previsão de tempo estendida'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    248, 248, 7, 'Previsão de ondas para localidades litorâneas - Dia atual, manhã, tarde e noite', 'http://servicos.cptec.inpe.br/XML/cidade/codigo_da_localidade/dia/dia/ondas.xml', 'Previsão de Ondas para localidades litorâneas (dia atual, manhã, tarde e noite)', 'http://servicos.cptec.inpe.br/XML/cidade/codigo_da_localidade/dia/dia/ondas.xml', 1, 'Previsão de ondas (dia atual, manhã, tarde e noite)'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    249, 249, 7, 'Previsão de ondas para localidades litorâneas - 6 dias, 8 horários por dia', 'http://servicos.cptec.inpe.br/XML/cidade/codigo_da_localidade/todos/tempos/ondas.xml', 'Previsão de Ondas para localidades litorâneas (6 dias, 8 horários por dia)', 'http://servicos.cptec.inpe.br/XML/cidade/codigo_da_localidade/todos/tempos/ondas.xml', 1, 'Previsão de ondas (6 dias, 8 horários por dia)'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    250, 250, 8, 'Depreciação ', 'https://apidatalake.tesouro.gov.br/ords/custos/tt/depreciacao', 'Os Custos com Depreciação do Governo Federal detalhados por Conta Contábil', 'https://apidatalake.tesouro.gov.br/ords/custos/tt/depreciacao', 0, 'Custos de Depreciação por conta contábil'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    251, 251, 8, 'Pessoal ativo', 'https://apidatalake.tesouro.gov.br/ords/custos/tt/pessoal_ativo', 'Retorna Pessoal Ativo do Ministério', 'https://apidatalake.tesouro.gov.br/ords/custos/tt/pessoal_ativo', 0, 'Pessoal Ativo do Ministério '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    252, 252, 8, 'Transferência', 'https://apidatalake.tesouro.gov.br/ords/custos/tt/transferencias', 'Retorna as Transferências', 'https://apidatalake.tesouro.gov.br/ords/custos/tt/transferencias', 0, 'Retorna as Transferências'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    253, 253, 8, 'Pessoal inativo', 'https://apidatalake.tesouro.gov.br/ords/custos/tt/pessoal_inativo', 'Traz o pessoal inativo', 'https://apidatalake.tesouro.gov.br/ords/custos/tt/pessoal_inativo', 0, 'Pessoal Inativo'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    254, 254, 8, 'Pensionista', 'https://apidatalake.tesouro.gov.br/ords/custos/tt/pensionistas', 'Traz o pessoal pensionista', 'https://apidatalake.tesouro.gov.br/ords/custos/tt/pensionistas', 0, 'Pessoal Pensionista'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    255, 255, 8, 'Demais custos', 'https://apidatalake.tesouro.gov.br/ords/custos/tt/demais', 'Outros custos', 'https://apidatalake.tesouro.gov.br/ords/custos/tt/demais', 0, 'Outros custos'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    256, 256, 9, 'PVL - Dados básicos', 'https://apidatalake.tesouro.gov.br/ords/sadipem/tt/pvl', 'Lista das informações básicas de um Pedido de Verificação de Limites. ', 'https://apidatalake.tesouro.gov.br/ords/sadipem/tt/pvl', 0, 'Lista das informações de um Pedido de Verificação de Limites'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    257, 257, 9, 'Operações contratadas - Cronograma de pagamentos', 'https://apidatalake.tesouro.gov.br/ords/sadipem/tt/opc-cronograma-pagamentos', 'Retorna um ou mais cronogramas de pagamentos da aba Operações Contratadas.', 'https://apidatalake.tesouro.gov.br/ords/sadipem/tt/opc-cronograma-pagamentoss', 0, 'Cronograma de pagamento de operações contratadas'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    258, 258, 9, 'Operações contratadas - Cronograma de liberações', 'https://apidatalake.tesouro.gov.br/ords/sadipem/tt/opc-cronograma-liberacoes', 'Retorna um ou mais cronogramas de liberações da aba Operações Contratadas.', 'https://apidatalake.tesouro.gov.br/ords/sadipem/tt/opc-cronograma-liberacoes', 0, 'Cronograma de liberações de operações contratadas'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    259, 259, 9, 'Operações contratadas - Taxas de câmbio', 'https://apidatalake.tesouro.gov.br/ords/sadipem/tt/opc-taxa-cambio', 'Retorna uma ou mais taxas de câmbio da aba Operações Contratadas', 'https://apidatalake.tesouro.gov.br/ords/sadipem/tt/opc-taxa-cambio', 0, 'Taxas de câmbio da aba Operações Contratadas'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    260, 260, 9, 'Resumo - Cronograma de pagamentos', 'https://apidatalake.tesouro.gov.br/ords/sadipem/tt/res-cronograma-pagamentos', 'Retorna um ou mais cronogramas de pagamentos da aba Resumo.', 'https://apidatalake.tesouro.gov.br/ords/sadipem/tt/res-cronograma-pagamentos', 0, 'Cronogramas de pagamentos '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    261, 261, 9, 'Resumo - Cadastro da Dívida Pública (CDP)', 'https://apidatalake.tesouro.gov.br/ords/sadipem/tt/res-cdp', 'Retorna as informações referentes ao CDP da aba Resumo.', 'https://apidatalake.tesouro.gov.br/ords/sadipem/tt/res-cdp', 0, 'Resumo sobre Cadastro da Dívida Pública '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    262, 262, 9, 'Operações não contratadas - PVL em tramitação ou deferidos', 'https://apidatalake.tesouro.gov.br/ords/sadipem/tt/opnc-pvl-tramitacao-deferido
', 'Retorna informações de outros PVLs da aba Operações não Contratadas. ', 'https://apidatalake.tesouro.gov.br/ords/sadipem/tt/opnc-pvl-tramitacao-deferido
', 0, 'Informações de outros PVLs - Operações não Contratadas. '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    263, 263, 10, 'Anexos dos relatórios por esfera de governo', 'https://apidatalake.tesouro.gov.br/ords/siconfi/tt/anexos-relatorios', 'Refere-se às dos anexos de cada um dos relatórios/demonstrativos agrupados por esfera de governo.', 'https://apidatalake.tesouro.gov.br/ords/siconfi/tt/anexos-relatorios', 0, 'Anexos dos relatórios/demonstrativos por esfera de governo.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    264, 264, 10, 'Cadastro de entes da federação', 'https://apidatalake.tesouro.gov.br/ords/siconfi/tt/entes', 'Refere-se às informações básicas de cadastro dos entes da federação.', 'https://apidatalake.tesouro.gov.br/ords/siconfi/tt/entes', 0, 'Informações básicas de cadastro dos entes da federação.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    265, 265, 10, 'Extrato de relatórios homologados e matrizes entregues', 'https://apidatalake.tesouro.gov.br/ords/siconfi/tt/extrato_entregas', 'Informações sobre relatórios homologados e retificados bem como matrizes entregues no Siconfi.', 'https://apidatalake.tesouro.gov.br/ords/siconfi/tt/extrato_entregas?id_ente=1718659&an_referencia=2019', 0, 'Informações sobre relatórios homologados e retificados no Siconfi.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    266, 266, 10, 'Relatório resumido da execução orçamentária', 'https://apidatalake.tesouro.gov.br/ords/siconfi/tt/rreo', 'Lista de dados contidos nos quadros dos anexos do Relatório Resumido de Execução Orçamentária - RREO para um ente e período específicos.', 'https://apidatalake.tesouro.gov.br/ords/siconfi/tt/rreo?an_exercicio=2017&nr_periodo=1&co_tipo_demonstrativo=RREO&id_ente=1718659', 0, 'Relatório Resumido de Execução Orçamentária'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    267, 267, 10, 'Relatório de gestão fiscal', 'https://apidatalake.tesouro.gov.br/ords/siconfi/tt/rgf', 'Lista de dados contidos nos quadros dos anexos do Relatório de Gestão Fiscal - RGF para um poder/órgão e período específicos.', 'https://apidatalake.tesouro.gov.br/ords/siconfi/tt/rgf?an_exercicio=2014&in_periodicidade=Q&nr_periodo=2&co_tipo_demonstrativo=RGF&co_poder=E&id_ente=1718659', 0, 'Relatório de Gestão Fiscal - RGF para um poder/órgão e período específicos.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    268, 268, 10, 'Declaração de contas anuais', 'https://apidatalake.tesouro.gov.br/ords/siconfi/tt/dca', 'Lista de dados contidos nos quadros da Declaração das Contas Anuais - DCA e do antigo Quadro de Detalhamento das Contas Contábeis - QDCC para um ente e exercício específicos', 'https://apidatalake.tesouro.gov.br/ords/siconfi/tt/dca?an_exercicio=2014&id_ente=1718659', 0, 'Declaração das Contas Anuais'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    269, 269, 10, 'Matriz de saldos contábeis - contas patrimoniais', 'https://apidatalake.tesouro.gov.br/ords/siconfi/tt/msc_patrimonial', 'Refere-se às contas contábeis de ativos (classe 1), passivos (classe 2), variações patrimoniais diminutivas (classe 3) e variações patrimoniais aumentativas (classe 4) bem como suas respectivas informações complementares.', 'https://apidatalake.tesouro.gov.br/ords/siconfi/tt/msc_patrimonial?id_ente=1718659&an_referencia=2014&me_referencia=4&co_tipo_matriz=MSCC&classe_conta=1&id_tv=beginning_balance', 0, 'Contas contabeis Patrimoniais'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    270, 270, 10, 'Matriz de saldos contábeis - contas orçamentárias', 'https://apidatalake.tesouro.gov.br/ords/siconfi/tt/msc_orcamentaria', 'Refere-se às contas contábeis de controle da aprovação (classe 5) e da execução (classe 6) do planejamento e orçamento bem como suas respectivas informações complementares.', 'https://apidatalake.tesouro.gov.br/ords/siconfi/tt/msc_orcamentaria?id_ente=1718659&an_referencia=2014&me_referencia=4&co_tipo_matriz=MSCC&classe_conta=6&id_tv=beginning_balance', 0, 'Contas Contábeis Orçamentárias'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    271, 271, 10, 'Matriz de saldos contábeis - contas de controle', 'https://apidatalake.tesouro.gov.br/ords/siconfi/tt/msc_controle', 'Refere-se às contas contábeis de controle para conferência de saldos de natureza devedora (classe 7) e de natureza credora (classe 8) bem como suas respectivas informações complementares. ', 'https://apidatalake.tesouro.gov.br/ords/siconfi/tt/msc_controle?id_ente=1718659&an_referencia=2014&me_referencia=4&co_tipo_matriz=MSCC&classe_conta=8&id_tv=beginning_balance', 0, 'Contas Contabeis de Controle'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    272, 272, 11, 'Obtém access token para autorização aos endpoints restritos', 'https://apidadosabertos.saude.gov.br/autenticacao/login', 'Obtém access token para autorização aos endpoints restritos.', 'https://apidadosabertos.saude.gov.br/autenticacao/login', 1, 'Obtém token de acesso para utilizar api DEMAS'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    273, 273, 11, 'Revogar a autorização para acesso aos endpoints restritos', 'https://apidadosabertos.saude.gov.br/autenticacao/logout', 'Revogar a autorização para acesso aos endpoints restritos.', 'https://apidadosabertos.saude.gov.br/autenticacao/logout', 1, 'Revogar a autorização para acesso aos endpoints restritos.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    274, 274, 11, 'Obtém todos os tipos de unidade', 'https://apidadosabertos.saude.gov.br/cnes/tipounidades', 'Obtém todos os tipos de unidade.', 'https://apidadosabertos.saude.gov.br/cnes/tipounidades', 0, 'Obtém todos os tipos de unidade Cadastro Nacional de Estabelecimentos de Saúde'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    275, 275, 11, 'Obtém tipo de unidade utilizando o código do tipo da unidade', 'https://apidadosabertos.saude.gov.br/cnes/tipounidades/1
', 'Obtém tipo de unidade utilizando o código do tipo da unidade.', 'https://apidadosabertos.saude.gov.br/cnes/tipounidades/1
', 0, 'Obtém tipo de unidade utilizando o código do tipo da unidade '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    276, 276, 11, 'Obtém todos os estabelecimentos', 'https://apidadosabertos.saude.gov.br/cnes/estabelecimentos', 'Obtém todos os estabelecimentos.', 'https://apidadosabertos.saude.gov.br/cnes/estabelecimentos', 0, 'Obtém todos os estabelecimentos do  Cadastro Nacional de Estabelecimentos de Saúde'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    277, 277, 11, 'Obtém estabelecimento utilizando o código CNES', 'https://apidadosabertos.saude.gov.br/cnes/estabelecimentos/19046', 'Obtém estabelecimento utilizando o código CNES.', 'https://apidadosabertos.saude.gov.br/cnes/estabelecimentos/19046', 0, 'Dados de um estabelecimento utilizando o código CNES.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    278, 278, 11, 'Obtém lista de parâmetros de vigilância das instituições', 'https://apidadosabertos.saude.gov.br/sisagua/vigilancia-parametro-basicos', 'Obtém lista de parâmetros de vigilância das instituições', 'https://apidadosabertos.saude.gov.br/sisagua/vigilancia-parametro-basicos', 1, 'Dados de lista de parâmetros de vigilância das instituições'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    279, 279, 11, 'Obtém lista de parâmetros de controle semestral', 'https://apidadosabertos.saude.gov.br/sisagua/controle-semestral', 'Obtém lista de parâmetros de controle semestral', 'https://apidadosabertos.saude.gov.br/sisagua/controle-semestral', 1, 'Lista de parâmetros de controle semestral'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    280, 280, 11, 'Obtém lista de parâmetros de controle mensal coletado das instituições', 'https://apidadosabertos.saude.gov.br/sisagua/controle-mensal-parametro-basicos', 'Obtém lista de parâmetros de controle mensal coletado das instituições', 'https://apidadosabertos.saude.gov.br/sisagua/controle-mensal-parametro-basicos', 1, 'Lista de parâmetros de controle mensal coletado das instituições'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    281, 281, 11, 'Obtém informações de acompanhamento de estado nutricional', 'https://apidadosabertos.saude.gov.br/sisvan/estado-nutricional', 'Obtém informações de acompanhamento de estado nutricional.', 'https://apidadosabertos.saude.gov.br/sisvan/estado-nutricional', 0, 'Informações de acompanhamento de estado nutricional.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    282, 282, 11, 'Obtém todos os projetos', 'https://apidadosabertos.saude.gov.br/plataformabr/projetos', 'Obtém todos os projetos.', 'https://apidadosabertos.saude.gov.br/plataformabr/projetos', 1, 'Todos os projetos.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    283, 283, 11, 'Obtém projeto utilizando o número CAAE - Certificado de Apresentação de Apreciação Ética', 'https://apidadosabertos.saude.gov.br/plataformabr/projetos/{numero_caae}', 'Obtém projeto utilizando o número CAAE (Certificado de Apresentação de Apreciação Ética).', 'https://apidadosabertos.saude.gov.br/plataformabr/projetos/123', 1, 'Projeto utilizando o número CAAE (Certificado de Apresentação de Apreciação Ética).'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    284, 284, 12, 'Notificações de síndrome gripal', 'https://elasticsearch-saps.saude.gov.br/desc-esus-notifica-estado-*/_search', 'O Ministério da Saúde, por meio da Secretaria de Vigilância em Saúde e Ambiente (SVSA), implementou, devido à pandemia, a vigilância da Síndrome Gripal (SG) de casos leves e moderados suspeitos de covid-19.', 'https://elasticsearch-saps.saude.gov.br/desc-esus-notifica-estado-*/_search', 1, 'Notificações de Síndrome Gripal'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    285, 285, 13, 'Compras sem licitação - Consulta básica', 'http://compras.dados.gov.br/compraSemLicitacao/v1/compras_slicitacao.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Fornece uma lista de compras sem licitação.', 'http://compras.dados.gov.br/compraSemLicitacao/v1/compras_slicitacao.json?co_uasg=112408&dt_ano_aviso_licitacao=2019', 1, 'Lista de compras sem licitação.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    286, 286, 13, 'Itens sem licitação - Consulta básica', 'http://compras.dados.gov.br/compraSemLicitacao/v1/itens_compras_slicitacao.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Fornece uma lista de compras sem licitação, a partir de dados de um item informado.', 'http://compras.dados.gov.br/compraSemLicitacao/v1/itens_compras_slicitacao.json?co_conjunto_materiais=314551', 1, 'Lista de compras sem licitação, a partir de dados de um item informado.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    287, 287, 13, 'Compras sem licitação - Consulta detalhada', 'http://compras.dados.gov.br/compraSemLicitacao/id/compra_slicitacao/{id}.{formato}', 'Fornece detalhes sobre uma Compra sem Licitação.', 'https://compras.dados.gov.br/compraSemLicitacao/doc/compra_slicitacao/4706060.json', 1, 'Detalhes sobre uma Compra sem Licitação.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    288, 288, 13, 'Itens sem licitação - Consulta detalhada', 'http://compras.dados.gov.br/compraSemLicitacao/id/item_slicitacao/{id}/itens/{item}.{formato}', 'Fornece detalhes sobre um item.', 'https://compras.dados.gov.br/compraSemLicitacao/doc/item_slicitacao/00000000004843872/itens/00000000100000213801.json', 1, 'Detalhes sobre um item licitado'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    289, 289, 13, 'Contratos - Consulta básica', 'http://compras.dados.gov.br/contratos/v1/contratos.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Fornece uma lista das informações relacionadas aos registros de Contratos.

', 'https://compras.dados.gov.br/contratos/v1/contratos.json?uasg=20001&order_by=data_assinatura&order=desc', 0, 'Informações relacionadas aos registros de Contratos'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    290, 290, 13, 'Aditivos de contrato - Consulta básica', 'http://compras.dados.gov.br/contratos/id/contrato/{id}/aditivos.{formato}', 'Fornece uma lista das informações relacionadas aos registros de aditivos de Contratos.', 'https://compras.dados.gov.br/contratos/doc/contrato/16001750000032019/aditivos.json', 0, 'Informações relacionadas aos registros de aditivos de Contratos.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    291, 291, 13, 'Apostilamentos de contrato - Consulta básica', 'http://compras.dados.gov.br/contratos/id/contrato/{id}/apostilamentos.{formato}', 'Fornece uma lista das informações relacionadas aos registros de Apostilamento de Contratos.', 'https://compras.dados.gov.br/contratos/doc/contrato/17032550000062017/apostilamentos.json', 0, 'Informações relacionadas aos registros de Apostilamento de Contratos.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    292, 292, 13, 'Tipos de contrato - Consulta básica', 'http://compras.dados.gov.br/contratos/v1/tipos_contrato.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Fornece uma lista com informações relacionadas aos tipos de contrato existentes no cadastro de contratos.', 'https://compras.dados.gov.br/contratos/v1/tipos_contrato.json?descricao=ARRENDAMENTO', 0, 'Informações relacionadas aos tipos de contrato existentes no cadastro de contratos.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    293, 293, 13, 'Cronogramas - Consulta básica', 'https://compras.dados.gov.br/docs/contratos/v1/cronogramas.html', 'Retorna uma relação de cronogramas cadastrados.', 'Erro 500', 1, 'Retorna uma relação de cronogramas cadastrados.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    294, 294, 13, 'Eventos de contrato - Consulta básica', 'ttp://compras.dados.gov.br/contratos/id/contrato/{id}/eventos.{formato}', 'Fornece uma lista das informações relacionadas aos registros de Eventos de Contrato', 'https://compras.dados.gov.br/contratos/id/contrato/25005750000472008/eventos.json', 0, 'Informações relacionadas aos registros de Eventos de Contrato'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    295, 295, 13, 'Contratos -  Informações detalhadas', 'http://compras.dados.gov.br/contratos/id/contrato/{id}.{formato}

', 'Fornece dados detalhados de um contrato selecionado.', 'http://compras.dados.gov.br/contratos/id/contrato/15403250000042019.json', 0, 'Dados detalhados de contratos selecionado.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    296, 296, 13, 'Aditivos de contrato -  Informações detalhadas', 'http://compras.dados.gov.br/contratos/id/contrato/{id}/aditivos/{aditivo}.{formato}', 'Fornece dados detalhados de um contrato aditivo selecionado.', 'http://compras.dados.gov.br/contratos/id/contrato/12019650000202015/aditivos/55000052019.json', 0, 'Dados detalhados de um contrato aditivo selecionado.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    297, 297, 13, 'Apostilamentos de contrato -  Informações detalhadas', 'http://compras.dados.gov.br/contratos/id/contrato/{id}/apostilamentos/{apostilamento}.{formato}', 'Fornece dados detalhados de um contrato de apostilamento selecionado.', 'http://compras.dados.gov.br/contratos/id/contrato/39500150000112016/apostilamentos/00000000000000002.json', 0, 'Dados detalhados de um contrato de apostilamento selecionado.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    298, 298, 13, 'Tipos de contrato -  Informações detalhadas', 'http://compras.dados.gov.br/contratos/id/tipo_contrato/{id}.{formato}', 'Fornece dados detalhados de um tipo de contrato selecionado.', 'http://compras.dados.gov.br/contratos/id/tipo_contrato/50.json', 0, 'Dados detalhados de um tipo de contrato selecionado.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    299, 299, 13, 'Cronogramas - Informações detalhadas', 'https://compras.dados.gov.br/docs/contratos/cronograma.html', 'Fornece dados detalhados de um cronograma selecionado.', 'Erro 500', 1, 'Dados detalhados de um cronograma selecionado.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    300, 300, 13, 'Eventos de contrato -  Informações detalhadas', 'http://compras.dados.gov.br/contratos/id/contrato/{id}/eventos/{evento}.{formato}', 'Fornece dados detalhados de um evento de contrato selecionado', 'http://compras.dados.gov.br/contratos/id/contrato/15316350001162014/eventos/1.json', 0, 'Dados detalhados de um evento de contrato selecionado'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    301, 301, 13, 'Contratos - Consultas básicas', 'ttp://compras.dados.gov.br/comprasContratos/v1/contratos.{formato}', 'Retorna uma relação de contratos cadastrados.', 'http://compras.dados.gov.br/comprasContratos/v1/contratos.json', 1, 'Relação de contratos cadastrados.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    302, 302, 13, 'Cronogramas - Consultas básicas', 'http://compras.dados.gov.br/comprasContratos/id/contrato/{id}/cronogramas.{formato}', 'Retorna uma relação de cronogramas cadastrados.', 'http://compras.dados.gov.br/comprasContratos/id/contrato/136100/cronogramas.json', 1, 'Relação de cronogramas cadastrados.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    303, 303, 13, 'Despesas acessórias  - Consultas básicas', 'http://compras.dados.gov.br/comprasContratos/id/contrato/{id}/despesas_acessorias.{formato}', 'Retorna uma relação de despesas acessórias cadastrados.', 'http://compras.dados.gov.br/comprasContratos/id/contrato/84650/despesas_acessorias.json', 0, 'Despesas acessórias cadastrados.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    304, 304, 13, 'Empenhos  - Consultas básicas', 'http://compras.dados.gov.br/comprasContratos/id/contrato/{id}/empenhos.{formato}', 'Retorna uma relação de empenhos cadastrados.', 'http://compras.dados.gov.br/comprasContratos/id/contrato/50500/empenhos.json', 0, 'Empenhos cadastrados.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    305, 305, 13, 'Faturas  - Consultas básicas', 'http://compras.dados.gov.br/comprasContratos/id/contrato/{id}/faturas.{formato}', 'Retorna uma relação de faturas cadastrados.', 'http://compras.dados.gov.br/comprasContratos/id/contrato/36939/faturas.json', 0, 'Faturas cadastrados.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    306, 306, 13, 'Garantias  - Consultas básicas', 'http://compras.dados.gov.br/comprasContratos/id/contrato/{id}/garantias.{formato}', 'Retorna uma relação de garantias cadastrados.', 'http://compras.dados.gov.br/comprasContratos/id/contrato/105754/garantias.json', 0, 'Garantias cadastrados.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    307, 307, 13, 'Históricos  - Consultas básicas', 'http://compras.dados.gov.br/comprasContratos/id/contrato/{id}/historicos.{formato}', 'Retorna uma relação de históricos cadastrados.', 'http://compras.dados.gov.br/comprasContratos/id/contrato/136100/historicos.json', 0, 'Históricos cadastrados.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    308, 308, 13, 'Itens - Consultas básicas', 'http://compras.dados.gov.br/comprasContratos/id/contrato/{id}/itens_compras_contratos.{formato}', 'Retorna uma relação de itens de contratos cadastrados.', 'http://compras.dados.gov.br/comprasContratos/id/contrato/136100/itens_compras_contratos.json', 1, 'Itens de contratos cadastrados.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    309, 309, 13, 'Prepostos  - Consultas básicas', 'http://compras.dados.gov.br/comprasContratos/id/contrato/{id}/prepostos.{formato}', 'Retorna uma relação de prepostos cadastrados.', 'http://compras.dados.gov.br/comprasContratos/id/contrato/119441/prepostos.json', 0, 'Prepostos cadastrados.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    310, 310, 13, 'Responsáveis - Consultas básicas', 'http://compras.dados.gov.br/comprasContratos/id/contrato/{id}/responsaveis.{formato}', 'Retorna uma relação de responsáveis cadastrados.', 'http://compras.dados.gov.br/comprasContratos/id/contrato/2268/responsaveis.json', 0, 'Responsáveis cadastrados.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    311, 311, 13, 'Terceirizados  - Consultas básicas', 'http://compras.dados.gov.br/comprasContratos/id/contrato/{id}/terceirizados.{formato}', 'Retorna uma relação de terceirizados cadastrados.', 'http://compras.dados.gov.br/comprasContratos/id/contrato/4198/terceirizados.json', 0, 'Terceirizados cadastrados.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    312, 312, 13, 'Contrato - Informações detalhadas', 'http://compras.dados.gov.br/comprasContratos/id/contrato/{id}.{formato}', 'Fornece dados detalhados de um contrato selecionado.', 'http://compras.dados.gov.br/comprasContratos/id/contrato/114325.json', 0, 'Dados detalhados de um contrato selecionado.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    313, 313, 13, 'Cronograma - Informações detalhadas', 'http://compras.dados.gov.br/comprasContratos/id/contrato/{id}/cronogramas/{cronograma}.{formato}', 'Fornece dados detalhados de um cronograma selecionado.', 'http://compras.dados.gov.br/comprasContratos/id/contrato/136100/cronogramas/28589500.json', 1, 'Dados detalhados de um cronograma selecionado.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    314, 314, 13, 'Despesa acessórias  - Informações detalhadas', 'http://compras.dados.gov.br/comprasContratos/id/contrato/{id}/despesas_acessorias/{despesa_acessoria}.{formato}', 'Fornece dados detalhados de uma despesa acessória selecionada.', 'http://compras.dados.gov.br/comprasContratos/id/contrato/84650/despesas_acessorias/215.json', 0, 'Dados detalhados de uma despesa acessória selecionada.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    315, 315, 13, 'Empenho - Informações detalhadas', 'http://compras.dados.gov.br/comprasContratos/id/contrato/{id}/empenhos/{empenho}.{formato}', 'Fornece dados detalhados de um empenho selecionado.', 'http://compras.dados.gov.br/comprasContratos/id/contrato/2629/empenhos/8415275.json', 1, 'Dados detalhados de um empenho selecionado.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    316, 316, 13, 'Fatura - Informações detalhadas', 'http://compras.dados.gov.br/comprasContratos/id/contrato/{id}/faturas/{fatura}.{formato}', 'Fornece dados detalhados de uma fatura selecionada.', 'http://compras.dados.gov.br/comprasContratos/id/contrato/94113/faturas/78330.json', 0, 'Dados detalhados de uma fatura selecionada.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    317, 317, 13, 'Garantia - Informações detalhadas', 'http://compras.dados.gov.br/comprasContratos/id/contrato/{id}/garantias/{garantia}.{formato}', 'Fornece dados detalhados de uma garantia selecionada.', 'http://compras.dados.gov.br/comprasContratos/id/contrato/115090/garantias/8423.json', 0, 'Dados detalhados de uma garantia selecionada.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    318, 318, 13, 'Histórico - Informações detalhadas', 'http://compras.dados.gov.br/comprasContratos/id/contrato/{id}/historicos/{historico}.{formato}', 'Fornece dados detalhados de um histórico selecionado.', 'http://compras.dados.gov.br/comprasContratos/id/contrato/93390/historicos/337465.json', 0, 'Dados detalhados de um histórico selecionado.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    319, 319, 13, 'Item - Informações detalhadas', 'http://compras.dados.gov.br/comprasContratos/id/contrato/{id}/itens_compras_contratos/{item_compras_contratos}.{formato}', 'Fornece dados detalhados de um item de contrato selecionado.', 'https://compras.dados.gov.br/comprasContratos/doc/contrato/136100/itens_compras_contratos/853152.json', 0, 'Informações Detalhadas da compra de um item'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    320, 320, 13, 'Preposto - Informações detalhadas', 'http://compras.dados.gov.br/comprasContratos/id/contrato/{id}/prepostos/{preposto}.{formato}', 'Fornece dados detalhados de um preposto selecionado.', 'http://compras.dados.gov.br/comprasContratos/id/contrato/44820/prepostos/2665.json', 0, 'Dados de um Preposto referente a um contrato'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    321, 321, 13, 'Responsável - Informações detalhadas', 'http://compras.dados.gov.br/comprasContratos/id/contrato/{id}/responsaveis/{responsavel}.{formato}', 'Fornece dados detalhados de um responsável selecionado.', 'http://compras.dados.gov.br/comprasContratos/id/contrato/84390/responsaveis/41285.json', 0, 'Dados do responsável por um contrato'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    322, 322, 13, 'Terceirizado - Informações detalhadas', 'http://compras.dados.gov.br/comprasContratos/id/contrato/{id}/terceirizados/{terceirizado}.{formato}', 'Fornece dados detalhados de um terceirizado selecionado.', 'http://compras.dados.gov.br/comprasContratos/id/contrato/3140/terceirizados/4325.json', 0, 'Dados de um tercerizado contratado via contrato'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    323, 323, 13, 'Âmbitos de ocorrência - Consultas básicas', 'http://compras.dados.gov.br/fornecedores/v1/ambitos_ocorrencia.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Fornece uma lista com informações relacionadas aos âmbitos de ocorrência.', 'http://compras.dados.gov.br/fornecedores/v1/ambitos_ocorrencia.json?descricao=administração', 0, 'Lista âmbitos de ocorrência no cadastro de fornecedores'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    324, 324, 13, 'CNAES  - Consultas básicas', 'http://compras.dados.gov.br/fornecedores/v1/cnaes.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Fornece uma lista com informações relacionadas aos códigos da Classificação Nacional de Atividade Econômica - CNAE.', 'http://compras.dados.gov.br/fornecedores/v1/cnaes.json?descricao=CULTIVO', 0, 'Lista classificações do CNAE - Classificação Nacional de Atividade Econômica'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    325, 325, 13, 'Fornecedores - Consultas básicas', 'http://compras.dados.gov.br/fornecedores/v1/fornecedores.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Retorna lista de fornecedores de acordo com os parâmetros informados inicialmentes.', 'http://compras.dados.gov.br/fornecedores/v1/fornecedores.json?uf=DF ', 1, 'Informações básicas de fornecedores'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    326, 326, 13, 'Linhas de fornecimento - Consultas básicas', 'http://compras.dados.gov.br/fornecedores/v1/linhas_fornecimento.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Retorna dados sobre linhas de fornecimento e fornecedores relacionados.', 'http://compras.dados.gov.br/fornecedores/v1/linhas_fornecimento.json?nome=Metrologia ', 0, 'Dados sobre linha de fornecimento e fornecedores relacionados'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    327, 327, 13, 'Municípios - Consultas básicas', 'http://compras.dados.gov.br/fornecedores/v1/municipios.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Retorna dados sobre municípios de acordo com parâmetros informados, com possibilidade de relacionar os fornecedores e unidades cadastradoras do município selecionado.', 'http://compras.dados.gov.br/fornecedores/v1/municipios.json?uf=PE', 0, 'Informnações sobre municipios'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    328, 328, 13, 'Naturezas jurídicas - Consultas básicas', 'http://compras.dados.gov.br/fornecedores/v1/naturezas_juridicas.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Retorna lista de naturezas jurídicas através de parâmetros informados, com possibilidade de consultar dados de fornecedores relacionados com uma natureza jurídica selecionada.', 'http://compras.dados.gov.br/fornecedores/v1/naturezas_juridicas.json?descricao=sociedade', 0, 'Lista naturezas jurídicas'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    329, 329, 13, 'Ocorrências de fornecedores - Consultas básicas', 'http://compras.dados.gov.br/fornecedores/v1/ocorrencias_fornecedores.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Retorna lista com ocorrências registradas por fornecedor, de acordo com parâmetros informados.', 'http://compras.dados.gov.br/fornecedores/v1/ocorrencias_fornecedores.json?cnpj=72523863000154', 0, 'Informações básicas das ocorrências dos fornecedores '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    330, 330, 13, 'Portes de empresa - Consultas básicas', 'http://compras.dados.gov.br/fornecedores/v1/portes_empresa.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Fornece lista de portes de fornecedores com possibilidade de consultar dados de fornecedores relacionados com um porte selecionado.', 'http://compras.dados.gov.br/fornecedores/v1/portes_empresa.json?descricao=empresa ', 0, 'Lista tipos de portes de empresa possíveis'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    331, 331, 13, 'Prazos de ocorrência - Consultas básicas', 'http://compras.dados.gov.br/fornecedores/v1/prazos_ocorrencia.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Fornece uma lista com informações relacionadas aos prazos de ocorrência.', 'http://compras.dados.gov.br/fornecedores/v1/prazos_ocorrencia.json?descricao=anos', 0, 'Informações de prazos de ocorrências existentes no cadastro de fornecedores'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    332, 332, 13, 'Ramos de negócio - Consultas básicas', 'http://compras.dados.gov.br/fornecedores/v1/ramos_negocio.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Fornece lista com ramos de negócio de fornecedores, com possibilidade de consultar dados de fornecedores relacionados com um ramo selecionado.', 'http://compras.dados.gov.br/fornecedores/v1/ramos_negocio.json?descricao=atividade', 0, 'Lista ramos de negócios'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    333, 333, 13, 'Tipos de ocorrência - Consultas básicas', 'http://compras.dados.gov.br/fornecedores/v1/tipos_ocorrencia.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Retorna lista com tipos de ocorrências.', 'http://compras.dados.gov.br/fornecedores/v1/tipos_ocorrencia.json?descricao=Legado ', 0, 'Lista tipos de ocorrências existentes para os fornecedores'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    334, 334, 13, 'Âmbito de ocorrência - Informações detalhadas', 'http://compras.dados.gov.br/fornecedores/id/ambito_ocorrencia/{id}.{formato}', 'Fornece uma descrição detalhada relacionada a um âmbito de ocorrência informado.', 'http://compras.dados.gov.br/fornecedores/id/ambito_ocorrencia/2.json', 0, 'Dados de um âmbito de ocorrência específico'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    335, 335, 13, 'CNAE - Informações detalhadas', 'http://compras.dados.gov.br/fornecedores/id/cnae/{id}.{formato}', 'Fornece descrição detalhada do Código Nacional de Atividade Econômica – CNAE do fornecedor selecionado.', 'http://compras.dados.gov.br/fornecedores/id/cnae/111303.json', 1, 'Dados de uma classificação do CNAE'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    336, 336, 13, 'Fornecedor PF - Informações detalhadas', 'http://compras.dados.gov.br/fornecedores/id/fornecedor_pf/{id}.{formato}', 'Fornece dados detalhados de um fornecedor Pessoa Física cadastrado no SICAF', 'http://compras.dados.gov.br/fornecedores/id/fornecedor_pf/65555.json', 0, 'Dados de um fornecedor PF específico'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    337, 337, 13, 'Fornecedor PJ - Informações detalhadas', 'http://compras.dados.gov.br/fornecedores/id/fornecedor_pj/{cnpj}.{formato}', 'Fornece dados detalhados de um fornecedor Pessoa Jurídica cadastrado no SICAF.', 'http://compras.dados.gov.br/fornecedores/id/fornecedor_pj/00000000000191.json', 0, 'Todos os dados de um fornecedor PJ específico.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    338, 338, 13, 'Linha de fornecimento - Informações detalhadas', 'http://compras.dados.gov.br/fornecedores/id/linha_fornecimento/{id}.{formato}', 'Fornece uma descrição detalhada da linha de fornecimento de produtos e serviços.', 'http://compras.dados.gov.br/fornecedores/id/linha_fornecimento/2406.json', 0, 'Dados de uma linha de fornecimento específica'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    339, 339, 13, 'Município - Informações detalhadas', 'http://compras.dados.gov.br/fornecedores/id/municipio/{id}.{formato}', 'Fornece a descrição do município da localidade do fornecedor.', 'http://compras.dados.gov.br/fornecedores/id/municipio/25313.json', 0, 'Informações sobre um município específico'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    340, 340, 13, 'Natureza jurídica - Informações detalhadas', 'http://compras.dados.gov.br/fornecedores/id/natureza_juridica/{id}.{formato}', 'Fornece a descrição da natureza jurídica do fornecedor.', 'http://compras.dados.gov.br/fornecedores/id/natureza_juridica/21.json', 0, 'Dados de uma natureza jurídica'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    341, 341, 13, 'Ocorrência de fornecedor - Informações detalhadas', 'http://compras.dados.gov.br/fornecedores/id/ocorrencia_fornecedor/{id}.{formato}', 'Fornece dados relativos às ocorrências sofridas pelo fornecedor e registradas no SICAF.', 'http://compras.dados.gov.br/fornecedores/id/ocorrencia_fornecedor/254323.json', 0, 'Todos os dados disponíveis de ocorrências de fornecedores'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    342, 342, 13, 'Porte de empresa - Informações detalhadas', 'http://compras.dados.gov.br/fornecedores/id/porte_empresa/{id}.{formato}', 'Fornece dados sobre o porte do fornecedor.', 'http://compras.dados.gov.br/fornecedores/id/porte_empresa/3.json', 0, 'Informações sobre um porte de empresa específico'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    343, 343, 13, 'Prazo de ocorrência - Informações detalhadas', 'http://compras.dados.gov.br/fornecedores/id/prazo_ocorrencia/{id}.{formato}', 'Fornece uma descrição detalhada relacionada a um prazo de ocorrência informado.', 'http://compras.dados.gov.br/fornecedores/id/prazo_ocorrencia/1.json', 0, 'Dados de um prazo de ocorrência'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    344, 344, 13, 'Ramo de negócio  - Informações detalhadas', 'http://compras.dados.gov.br/fornecedores/id/ramo_negocio/{id}.{formato}', 'Fornece uma descrição detalhada relacionada a um ramos de negócio informado.', 'http://compras.dados.gov.br/fornecedores/id/ramo_negocio/53.json', 0, 'Dados de um ramo de negócio'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    345, 345, 13, 'Tipo de ocorrência  - Informações detalhadas', 'http://compras.dados.gov.br/fornecedores/id/tipo_ocorrencia/{id}.{formato}', 'Fornece dados detalhados sobre os tipos de ocorrências relacionadas com fornecedores e que estejam cadastradas no SICAF.', 'http://compras.dados.gov.br/fornecedores/id/tipo_ocorrencia/8.json', 0, 'Dados de um tipo de ocorrência específico'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    346, 346, 13, 'IRPS - Consultas básicas', 'http://compras.dados.gov.br/licitacoes/v1/irps.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Retorna uma relação de intenção de registro de preços cadastrados.', 'http://compras.dados.gov.br/licitacoes/v1/irps.json?uasg=153229 ', 0, 'Lista das informações relacionadas aos registros do IRP'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    347, 347, 13, 'Itens de IRP - Consultas básicas', 'http://compras.dados.gov.br/licitacoes/id/irp/{id}/itens.{formato}', 'Retorna uma relação de itens de uma intenção de registro de preços cadastrada.', 'http://compras.dados.gov.br/licitacoes/id/irp/153229000012008/itens.json', 0, 'Lista das informações relacionadas aos registros do Item de IRP.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    348, 348, 13, 'Participante do item de IRP - Consultas básicas', 'http://compras.dados.gov.br/licitacoes/id/irp/{id}/itens/{item}/participantes.{formato}', 'Retorna uma relação de UASGs participantes de um item de uma intenção de registro de preços.', 'http://compras.dados.gov.br/licitacoes/id/irp/070008000152012/itens/20/participantes.json', 0, 'Informações do registros do participante do item de IRP.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    349, 349, 13, 'Licitações - Consultas básicas', 'http://compras.dados.gov.br/licitacoes/v1/licitacoes.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Fornece dados sobre licitações cadastradas.', 'http://compras.dados.gov.br/licitacoes/v1/licitacoes.json?uasg=389144', 1, 'Lista de licitações e suas informações'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    350, 350, 13, 'Itens de licitação - Consultas básicas', 'http://compras.dados.gov.br/licitacoes/id/licitacao/{id}/itens.{formato}', 'Fornece dados sobre itens de uma licitação cadastrada.', 'http://compras.dados.gov.br/licitacoes/id/licitacao/15322901000011999/itens.json', 1, 'Informações relacionadas aos registros do Item de uma licitação'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    351, 351, 13, 'Modalidades de licitação - Consultas básicas', 'http://compras.dados.gov.br/licitacoes/v1/modalidades_licitacao.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Retorna uma lista de Modalidades de Licitação.', 'http://compras.dados.gov.br/licitacoes/v1/modalidades_licitacao.json?descricao=CONCORRÊNCIA ', 0, 'Lista modalidades de licitações disponíveis'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    352, 352, 13, 'Órgãos - Consultas básicas', 'http://compras.dados.gov.br/licitacoes/v1/orgaos.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Retorna uma lista de Órgãos.', 'http://compras.dados.gov.br/licitacoes/v1/orgaos.json?nome=TRIBUNAL', 0, 'Lista órgãos'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    353, 353, 13, 'Preços praticados - Consultas básicas', 'http://compras.dados.gov.br/licitacoes/v1/precos_praticados.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Retorna uma lista de dados sobre os preços praticados nas licitações, obtidos através do SISPP.', 'http://compras.dados.gov.br/licitacoes/v1/precos_praticados.json?uasg=153229', 1, 'Lista preços praticados'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    354, 354, 13, 'Itens de preço praticado - Consultas básicas', 'http://compras.dados.gov.br/licitacoes/id/preco_praticado/{id}/itens.{formato}', 'Retorna uma lista de dados sobre os itens de preços praticados nas licitações, obtidos através do SISPP.', 'http://compras.dados.gov.br/licitacoes/id/preco_praticado/04000105000762005/itens.json', 0, 'Lista itens de um preço praticado'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    355, 355, 13, 'Registros de preço - Consultas básicas', 'http://compras.dados.gov.br/licitacoes/v1/registros_preco.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Fornece uma lista de dados sobre registros dos preços.', 'http://compras.dados.gov.br/licitacoes/v1/registros_preco.json?uasg=153229 ', 0, 'Lista informações relacionadas aos registros do SISRP.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    356, 356, 13, 'Itens de registro de preço - Consultas básicas', 'http://compras.dados.gov.br/licitacoes/id/registro_preco/{id}/itens.{formato}', 'Fornece uma lista de dados sobre itens de registros dos preços.', 'http://compras.dados.gov.br/licitacoes/id/registro_preco/01000105000012018/itens.json', 0, 'Informações relacionadas aos registros de um Item do SISRP.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    357, 357, 13, 'Fornecedores de item de registro de preço - Consultas básicas', 'http://compras.dados.gov.br/licitacoes/id/registro_preco/{id}/itens/{item}/fornecedores.{formato}', 'Fornece uma lista de dados sobre fornecedores de item de registros dos preços.', 'http://compras.dados.gov.br/licitacoes/id/registro_preco/11009605000172008/itens/2/fornecedores.json', 1, 'Lista de Fornecedores de item de Registro de Preço'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    358, 358, 13, 'Renegociações de fornecedor de item de registro de preço - Consultas básicas', 'http://compras.dados.gov.br/licitacoes/id/registro_preco/{id}/itens/{item}/fornecedores/{classificacao_fornecedor}/renegociacoes.{formato}', 'Fornece uma lista de dados sobre renegociações de fornecedor de item de registros dos preços.', 'http://compras.dados.gov.br/licitacoes/id/registro_preco/11009605000172008/itens/2/fornecedores/1/renegociacoes.json', 1, 'Lista de Renegociações de um Fornecedor de Item de Registro de Preço'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    359, 359, 13, 'UASGS - Consultas básicas', 'http://compras.dados.gov.br/licitacoes/v1/uasgs.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Fornece uma lista com informações relacionadas às UASGs(Unidades de Administração de Serviços Gerais )', 'http://compras.dados.gov.br/licitacoes/v1/uasgs.json?cep=38064790', 0, 'Informações das Unidades de Administração de Serviços Gerais '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    360, 360, 13, 'RDC - Consultas básicas', 'http://compras.dados.gov.br/licitacoes/v1/rdcs.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Fornece uma lista com informações relacionadas às RDCs(Regime Diferenciado de Contratação)', 'http://compras.dados.gov.br/licitacoes/v1/rdcs.json?numero_aviso=12019', 0, 'Informações sobre licitações do tipo  Regime Diferenciado de Contratação'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    361, 361, 13, 'IRP', 'http://compras.dados.gov.br/licitacoes/id/irp/{id}.{formato}', 'Fornece dados detalhados de uma intenção de registro de preços selecionada.', 'http://compras.dados.gov.br/licitacoes/id/irp/153229000012008.json', 0, 'Detalhes de uma intenção de registro de preços'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    362, 362, 13, 'Item de IRP', 'http://compras.dados.gov.br/licitacoes/id/irp/{id}/itens/{item}.{formato}', 'Fornece dados detalhados de um item de intenção de registro de preços selecionada.', 'http://compras.dados.gov.br/licitacoes/id/irp/153229000012008/itens/1.json', 0, 'Dados detalhados de um item de intenção de registro'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    363, 363, 13, 'Participante do item de IRP', 'http://compras.dados.gov.br/licitacoes/id/irp/{id}/itens/{item}/participantes/{participante}.{formato}', 'Fornece dados detalhados de um participante de item de intenção de registro de preços selecionado.', 'http://compras.dados.gov.br/licitacoes/id/irp/070008000152012/itens/20/participantes/153080.json', 1, 'Detalhe do participante do item de IRP.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    364, 364, 13, 'Licitação', 'http://compras.dados.gov.br/licitacoes/id/licitacao/{id}.{formato}', 'Retorna dados detalhados de uma licitação selecionada.', 'http://compras.dados.gov.br/licitacoes/id/licitacao/15303605000302018.json', 1, 'Dados sobre uma licitação'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    365, 365, 13, 'Item de licitação', 'http://compras.dados.gov.br/licitacoes/id/licitacao/{id}/itens/{item}.{formato}', 'Retorna dados detalhados de um item de licitação selecionada.', 'http://compras.dados.gov.br/licitacoes/id/licitacao/15322901000011999/itens/1.json', 1, 'Dados sobre o item de uma licitação'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    366, 366, 13, 'Modalidade de licitação', 'http://compras.dados.gov.br/licitacoes/id/modalidade_licitacao/{id}.{formato}', 'Retorna dados detalhados de uma modalidade de licitação.', 'http://compras.dados.gov.br/licitacoes/id/modalidade_licitacao/03.json', 0, 'Dados de uma modalidade de licitação'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    367, 367, 13, 'Órgão', 'http://compras.dados.gov.br/licitacoes/id/orgao/{id}.{formato}', 'Retorna dados detalhados de um órgão.', 'http://compras.dados.gov.br/licitacoes/id/orgao/1000.json', 0, 'Dados de um órgão específico'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    368, 368, 13, 'Preço praticado', 'http://compras.dados.gov.br/licitacoes/id/preco_praticado/{id}.{formato}', 'Retorna dados detalhados sobre os preços praticados.', 'http://compras.dados.gov.br/licitacoes/id/preco_praticado/04000105000762005.json', 0, 'Informações sobre um preço praticado específico'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    369, 369, 13, 'Item de preço praticado', 'http://compras.dados.gov.br/licitacoes/id/preco_praticado/{id}/itens/{item}.{formato}', 'Retorna dados detalhados sobre um item de preços praticados.', 'http://compras.dados.gov.br/licitacoes/id/preco_praticado/04000105000762005/itens/1.json', 0, 'Informações sobre um item de preço praticado'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    370, 370, 13, 'Registro de preço', 'http://compras.dados.gov.br/licitacoes/id/registro_preco/{id}.{formato}', 'Retorna dados detalhados sobre os registros de preço.', 'http://compras.dados.gov.br/licitacoes/id/registro_preco/12007105000552012.json', 1, 'Informações sobre o registro de um preço'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    371, 371, 13, 'Item de registro de preço', 'http://compras.dados.gov.br/licitacoes/id/registro_preco/{id}/itens/{item}.{formato}', 'Retorna dados detalhados sobre um item de registros de preço.', 'http://compras.dados.gov.br/licitacoes/id/registro_preco/15305205001222013/itens/1.json', 0, 'Dados de um item de registro de preço'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    372, 372, 13, 'Fornecedor de item de registro de preço', 'http://compras.dados.gov.br/licitacoes/id/registro_preco/{id}/itens/{item}/fornecedores/{classificacao_fornecedor}.{formato}', 'Retorna dados detalhados sobre um fornecedor de item de registros de preço.', 'http://compras.dados.gov.br/licitacoes/id/registro_preco/11009605000172008/itens/2/fornecedores/1.json', 1, 'Informações sobre um fornecedor de um item'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    373, 373, 13, 'Renegociação de fornecedor de item de registro de preço', 'http://compras.dados.gov.br/licitacoes/id/registro_preco/{id}/itens/{item}/fornecedores/{classificacao_fornecedor}/renegociacoes/{renegociacao}.{formato}', 'Retorna dados detalhados sobre uma renegociação de fornecedor de item de registros de preço.', 'http://compras.dados.gov.br/licitacoes/id/registro_preco/11009605000172008/itens/2/fornecedores/1/renegociacoes/1.json', 1, 'Renegociação do fornecedor de item'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    374, 374, 13, 'UASG', 'http://compras.dados.gov.br/licitacoes/id/uasg/{id}.{formato}', 'Fornece uma descrição detalhada relacionada a uma UASG informado.', 'http://compras.dados.gov.br/licitacoes/id/uasg/120041.json', 1, 'Dados de uma Unidade de Administração de Serviços Gerais '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    375, 375, 13, 'RDC', 'http://compras.dados.gov.br/licitacoes/id/rdc/{id}.{formato}', 'Fornece uma descrição detalhada relacionada a um RDC informado.', 'http://compras.dados.gov.br/licitacoes/id/rdc/27507599000012017.json', 0, 'Informações de uma licitação do tipo RDC'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    376, 376, 13, 'Pregões  - Consultas básicas', 'http://compras.dados.gov.br/pregoes/v1/pregoes.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Fornece uma lista das informações relacionadas aos registros dos pregões.', 'http://compras.dados.gov.br/pregoes/v1/pregoes.json?nu_pregao=12019', 0, 'Lista pregões'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    377, 377, 13, 'Tipos Pregão   - Consultas básicas', 'http://compras.dados.gov.br/pregoes/v1/tipos_pregao.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Fornece uma lista das informações relacionadas aos registros dos tipos dos pregões.', 'http://compras.dados.gov.br/pregoes/v1/pregoes.json?ds_tipo_pregao=eletronico&nu_pregao=322019', 0, 'Lista tipos de pregões'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    378, 378, 13, 'Situações Pregão  - Consultas básicas', 'http://compras.dados.gov.br/pregoes/v1/situacoes_pregao.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Fornece uma lista das informações relacionadas aos registros de situações dos pregões.', 'http://compras.dados.gov.br/pregoes/v1/pregoes.json?ds_situacao_pregao=homologado&nu_pregao=62019', 0, 'Lista situação dos pregões'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    379, 379, 13, 'Órgãos Pregão - Consultas básicas', 'http://compras.dados.gov.br/pregoes/v1/orgaos_pregao.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Fornece uma lista das informações relacionadas aos registros de órgãos dos pregões.', 'http://compras.dados.gov.br/pregoes/v1/pregoes.json?co_uasg=389144', 0, 'Informações dos registros de órgãos dos pregões.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    380, 380, 13, 'Objetos Pregão - Consultas básicas', 'http://compras.dados.gov.br/pregoes/v1/objetos_pregao.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Fornece uma lista das informações relacionadas aos registros de objetos dos pregões.', 'http://compras.dados.gov.br/pregoes/v1/pregoes.json?tx_objeto=Objeto&nu_pregao=172019', 0, 'Informações sobre os objetos dos pregões.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    381, 381, 13, 'Itens Pregão - Consultas básicas', 'http://compras.dados.gov.br/pregoes/id/pregao/{id}/itens.{formato}', 'Fornece uma lista de informações sobre um ou mais itens de um pregão.', 'http://compras.dados.gov.br/pregoes/id/pregao/1530740900092006/itens.json', 1, 'Lista informações de um ou mais itens de um pregão.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    382, 382, 13, 'Pregão - Consultas detalhadas', 'http://compras.dados.gov.br/pregoes/id/pregao/{id}.{formato}', 'Fornece detalhes sobre um pregão.', 'http://compras.dados.gov.br/pregoes/id/pregao/1530740000032019.json', 0, 'Detalhes de um pregão'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    383, 383, 13, 'Item Pregão - Consultas detalhadas', 'http://compras.dados.gov.br/pregoes/id/pregao/{id}/itens/{item}.{formato}', 'Fornece detalhes sobre um item.', 'http://compras.dados.gov.br/pregoes/id/pregao/1530740900092006/itens/0000709104.json', 0, 'Detalhes de um item de um pregão'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    384, 384, 13, 'Classes - Consultas básicas', 'http://compras.dados.gov.br/materiais/v1/classes.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Fornece uma lista das informações sobre serviços relacionados à classe do material informado.', 'https://compras.dados.gov.br/materiais/v1/classes.json?descricao=NAVIOS', 0, 'Informações sobre a classe do material informado'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    385, 385, 13, 'Grupos - Consultas básicas', 'http://compras.dados.gov.br/materiais/v1/grupos.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Fornece uma lista das informações sobre serviços relacionados ao grupo do material informado.', 'https://compras.dados.gov.br/materiais/v1/grupos.json?descricao=NAVIOS', 0, 'Informações sobre grupo do material informado'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    386, 386, 13, 'PDMS - Consultas básicas', 'http://compras.dados.gov.br/materiais/v1/pdms.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Fornece uma lista das informações sobre serviços relacionados ao Padrão Descritivo de Material.', 'https://compras.dados.gov.br/materiais/v1/pdms.json?descricao=PAPEL', 0, 'Lista informações sobre Padrão Descritivo de Material informado'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    387, 387, 13, 'Materiais  - Consultas básicas', 'http://compras.dados.gov.br/materiais/v1/materiais.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Fornece uma lista das informações relacionadas aos materiais cadastrados no CATMAT.', 'https://compras.dados.gov.br/materiais/v1/materiais.json?grupo=84', 1, 'Informações dos materiais cadastrados no CATMAT'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    388, 388, 13, 'Classe - Informações detalhadas', 'http://compras.dados.gov.br/materiais/id/classe/{id}.{formato}', 'Todos os dados disponíveis de uma classe.', 'https://compras.dados.gov.br/materiais/doc/classe/1905.json', 0, 'Dados disponíveis de uma classe do material'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    389, 389, 13, 'Grupo - Informações detalhadas', 'http://compras.dados.gov.br/materiais/id/grupo/{id}.{formato}', 'Todos os dados disponíveis de um grupo.', 'https://compras.dados.gov.br/materiais/doc/grupo/11.json', 0, 'Dados de um grupo do material'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    390, 390, 13, 'PDM - Informações detalhadas', 'http://compras.dados.gov.br/materiais/id/pdm/{id}.{formato}', 'Todos os dados disponíveis de um PDM.', 'http://compras.dados.gov.br/materiais/id/pdm/00001.json', 1, 'Dados de um Padrão Descritivo de Material '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    391, 391, 13, 'Material - Informações detalhadas', 'http://compras.dados.gov.br/materiais/id/material/{id}.{formato}', 'Todos os dados disponíveis de um material cadastrado no CATMAT', 'https://compras.dados.gov.br/materiais/doc/material/000227505.json', 1, 'Dados de um material cadastrado no CATMAT.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    392, 392, 13, 'PGC - Consultas básicas', 'http://compras.dados.gov.br/pgc/v1/pgcs.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Fornece uma lista do PGC.', 'http://compras.dados.gov.br/pgc/v1/pgcs.json?co_item=19&co_tipo_item=m', 1, 'Dados de  Planejamento e Gerenciamento de Contratações'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    393, 393, 13, 'PGC - Informações detalhadas', 'http://compras.dados.gov.br/pgc/id/pgc/{id}.{formato}', 'Fornece detalhes sobre um item do PGC.', 'http://compras.dados.gov.br/pgc/id/pgc/202111240800467253.json', 1, 'Dados de um item específico de Planejamento e Gerenciamento de Contratações'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    394, 394, 13, 'Seções - Consultas básicas', 'http://compras.dados.gov.br/servicos/v1/secoes.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Fornece uma lista das informações relacionadas à seção informada do serviço.', 'https://compras.dados.gov.br/servicos/v1/secoes.json?descricao=ALOJAMENTO', 0, 'Lista seções sobre serviços '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    395, 395, 13, 'Divisões - Consultas básicas', 'http://compras.dados.gov.br/servicos/v1/divisoes.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Fornece uma lista das informações relacionadas à divisão informada do serviço.', 'https://compras.dados.gov.br/servicos/v1/divisoes.json?descricao=TRANSPORTE', 0, 'Lista divisões sobre serviços '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    396, 396, 13, 'Grupos - Consultas básicas', 'http://compras.dados.gov.br/servicos/v1/grupos.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Fornece uma lista das informações relacionados ao grupo informado do serviço.', 'https://compras.dados.gov.br/servicos/v1/grupos.json?descricao=TRANSPORTE', 0, 'Lista grupos sobre serviços '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    397, 397, 13, 'Classes - Consultas básicas', 'http://compras.dados.gov.br/servicos/v1/classes.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Fornece uma lista das informações relacionadas à classe do serviço.', 'https://compras.dados.gov.br/servicos/v1/classes.json?descricao=PONTES', 0, 'Dados sobre clases dos serviços '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    398, 398, 13, 'Subclasses - Consultas básicas', 'http://compras.dados.gov.br/servicos/v1/subclasses.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Fornece uma lista das informações relacionadas à subclasse do serviço.', 'https://compras.dados.gov.br/servicos/v1/subclasses.json?descricao=PONTES', 0, 'Dados sobre subclasses dos serviços'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    399, 399, 13, 'Serviços - Consultas básicas', 'http://compras.dados.gov.br/servicos/v1/servicos.{formato}?{parametro1=valor1}&{parametro2=valor2}&{parametroN=valorN}', 'Fornece uma lista das informações relacionadas aos serviços cadastrados no Catálogo de Serviços.', 'https://compras.dados.gov.br/servicos/v1/servicos.json?grupo=542', 0, 'Lista serviços cadastrados no CATSER'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    400, 400, 13, 'Seções - Informações detalhadas', 'http://compras.dados.gov.br/servicos/id/secao/{id}.{formato', 'Fornece uma descrição detalhada relacionada a uma seção informada.', 'http://compras.dados.gov.br/servicos/id/secao/5.json', 0, 'Dados sobre uma seção de serviço'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    401, 401, 13, 'Divisões - Informações detalhadas', 'http://compras.dados.gov.br/servicos/id/divisao/{id}.{formato}', 'Fornece uma descrição detalhada relacionada a uma divisão informada.', 'http://compras.dados.gov.br/servicos/id/divisao/54.json', 0, 'Dados de uma divisão de serviço'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    402, 402, 13, 'Grupos - Informações detalhadas', 'http://compras.dados.gov.br/servicos/id/grupo/{id}.{formato}', 'Fornece uma descrição detalhada relacionada a um grupo informado.', 'http://compras.dados.gov.br/servicos/id/grupo/541.json', 0, 'Dados de um grupo de serviço'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    403, 403, 13, 'Classes - Informações detalhadas', 'http://compras.dados.gov.br/servicos/id/classe/{id}.{formato}', 'Fornece uma descrição detalhada relacionada a uma classe informada.', 'http://compras.dados.gov.br/servicos/id/classe/5411.json', 0, 'Dados de uma classe de serviço'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    404, 404, 13, 'Subclasses - Informações detalhadas', 'http://compras.dados.gov.br/servicos/id/subclasse/{id}.{formato}', 'Fornece uma descrição detalhada relacionada a uma subclasse informada.', 'http://compras.dados.gov.br/servicos/id/subclasse/54111.json', 0, 'Dados de uma subclasse de um serviço'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    405, 405, 13, 'Serviços - Informações detalhadas', 'http://compras.dados.gov.br/servicos/id/servico/{id}.{formato}', 'Fornece uma descrição detalhada relacionada a um serviço informado.', 'http://compras.dados.gov.br/servicos/id/servico/000022896.json', 0, 'Dados de um serviço específico '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    406, 406, 14, 'Contratos', 'https://pncp.gov.br/api/consulta/v1/contratos', 'Consultar Contratos por Data de Publicação', 'https://pncp.gov.br/api/consulta/v1/contratos?dataInicial=20230102&dataFinal=20230102&pagina=1', 0, 'Informações de contratos por data de publicação'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    407, 407, 14, 'Contratações - Publicação', 'https://pncp.gov.br/api/consulta/v1/contratacoes/publicacacao', 'Consultar Contratações por data de Publicação', 'https://pncp.gov.br/api/consulta/v1/contratacoes/publicacao?dataInicial=20230102&dataFinal=20230130&codigoModalidadeContratacao=8&pagina=1', 0, 'Dados de contratações por data de publicação'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    408, 408, 14, 'Proposta', 'https://pncp.gov.br/api/consulta/v1/contratacoes/proposta', 'Consultar Contratações com Recebimento de Propostas Aberto', 'https://pncp.gov.br/api/consulta/v1/contratacoes/proposta?dataFinal=20231027&pagina=1', 1, 'Contratações com recebimento aberto de proposta '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    409, 409, 14, 'Atas', 'https://pncp.gov.br/api/consulta/v1/atas', 'Consultar Ata de Registro de Preço por Período de Vigência', 'https://pncp.gov.br/api/consulta/v1/atas?dataInicial=20230101&dataFinal=20230102&pagina=1', 0, 'Ata de registro de preço por período de vigência'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    410, 410, 14, 'Usuário ', 'https://pncp.gov.br/api/consulta/v1/pca/usuario', 'Consulta Itens de PCA por Ano do PCA, Usuário e Classificação Superior', 'https://pncp.gov.br/api/consulta/v1/pca/usuario?anoPca=2023&idUsuario=208&pagina=1', 1, 'Itens de PCA por ano, usuário e classificação'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    411, 411, 14, 'PCA', 'https://pncp.gov.br/api/consulta/v1/pca/', 'Consulta Itens de PCA por Ano do PCA e Classificação Superior', 'https://pncp.gov.br/api/consulta/v1/pca/?anoPca=2023&codigoClassificacaoSuperior=1&pagina=1', 0, 'Itens de PCA por ano e classificação'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    412, 412, 15, 'Projetos Pronac', 'http://api.salic.cultura.gov.br/v1/projetos/{PRONAC}', 'Busca um projeto por meio de seu número PRONAC', 'http://api.salic.cultura.gov.br/v1/projetos/233666', 0, 'Dados de um um projeto do Programa Nacional de Apoio à Cultura'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    413, 413, 15, 'Projetos', 'http://api.salic.cultura.gov.br/v1/projetos/', 'Busca projetos dado uma combinação de valores diversos de pesquisa', 'http://api.salic.cultura.gov.br/v1/projetos/', 0, 'Lista todos os projetos'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    414, 414, 15, 'Projetos áreas', 'http://api.salic.cultura.gov.br/v1/projetos/areas', 'Retorna todas as áreas disponíveis', 'http://api.salic.cultura.gov.br/v1/projetos/areas', 0, 'Lista áreas do projetos'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    415, 415, 15, 'Projetos segmentos', 'http://api.salic.cultura.gov.br/v1/projetos/segmentos', 'Retorna todos os segmentos disponíveis', 'http://api.salic.cultura.gov.br/v1/projetos/segmentos', 0, 'Lista segmentos'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    416, 416, 15, 'Propostas', 'http://api.salic.cultura.gov.br/v1/propostas/', 'Busca propostas dado uma combinação de valores diversos de pesquisa', 'http://api.salic.cultura.gov.br/v1/propostas/', 0, 'Informações de propostas de projetos'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    417, 417, 15, 'Proposta por ID', 'http://api.salic.cultura.gov.br/v1/propostas/{id}/', 'Dados detalhados de uma proposta', 'http://api.salic.cultura.gov.br/v1/propostas/1/', 0, 'Informações de uma proposta de projeto'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    418, 418, 15, 'Incentivadores', 'http://api.salic.cultura.gov.br/v1/incentivadores/', 'Busca incentivadores dado uma combinação de valores diversos de pesquisa', 'http://api.salic.cultura.gov.br/v1/incentivadores/', 0, 'Lista incentivadores'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    419, 419, 15, 'Incentivador por ID', 'http://api.salic.cultura.gov.br/v1/incentivadores/{incentivador_id}', 'Busca incentivadores dado uma combinação de valores diversos de pesquisa', 'http://api.salic.cultura.gov.br/v1/incentivadores/924b95fdd2fccb4c6212a0eb4ec3f7155ecc56a916b4cd8b304862', 0, 'Informações de um incentivador de projetos'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    420, 420, 15, 'Doações por incentivador', 'http://api.salic.cultura.gov.br/v1/incentivadores/{incentivador_id}/doacoes', 'Dado o id de um incentivador, retorna informações relativas a todas as doações por ele feitas', 'http://api.salic.cultura.gov.br/v1/incentivadores/924b95fdd2fccb4c6212a0eb4ec3f7155ecc56a916b4cd8b304862/doacoes/', 0, 'Informações de doações de um incentivador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    421, 421, 15, 'Fornecedores', 'http://api.salic.cultura.gov.br/v1/fornecedores/', 'Busca fornecedores dado uma combinação de valores diversos de pesquisa', 'http://api.salic.cultura.gov.br/v1/fornecedores/', 0, 'Lista fornecedores'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    422, 422, 15, 'Fornecedor por ID', 'http://api.salic.cultura.gov.br/v1/fornecedores/{fornecedor_id}', 'Busca fornecedores dado uma combinação de valores diversos de pesquisa', 'http://api.salic.cultura.gov.br/v1/fornecedores/6bf85a4fe302cdc962ce2b47dc362cd88b03fd9f00eb1186ff19de1a9d39', 0, 'Dados de um fornecedor específico'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    423, 423, 15, 'Produtos por fornecedor por ID', 'http://api.salic.cultura.gov.br/v1/fornecedores/{fornecedor_id}/produtos/', 'Dado o id de um fornecedor, retorna informações relativas a todas os ítens ou serviços fornecidos por ele', 'http://api.salic.cultura.gov.br/v1/fornecedores/6bf85a4fe302cdc962ce2b47dc362cd88b03fd9f00eb1186ff19de1a9d39/produtos/', 0, 'Dados de produtos de um fornecedor'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    424, 424, 15, 'Proponentes', 'http://api.salic.cultura.gov.br/v1/proponentes/', 'Busca proponentes dado uma combinação de valores diversos de pesquisa', 'http://api.salic.cultura.gov.br/v1/proponentes/', 0, 'Lista Proponentes'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    425, 425, 15, 'Proponente por ID', 'http://api.salic.cultura.gov.br/v1/proponentes/{proponente_id}', 'Busca proponentes dado um id fornecido', 'http://api.salic.cultura.gov.br/v1/proponentes/e27a32606cdbe92f520b05a4b8816565898c55e13cee047f3934cf', 0, 'Informações de um proponente'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    426, 426, 16, 'Blocos', 'https://dadosabertos.camara.leg.br/api/v2/blocos', 'Lista de dados sobre os blocos partidários', 'https://dadosabertos.camara.leg.br/api/v2/blocos?ordem=ASC&ordenarPor=nome', 0, 'Lista blocos partidários'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    427, 427, 16, 'Bloco por ID', 'https://dadosabertos.camara.leg.br/api/v2/blocos/{id}', 'Informações sobre um bloco partidário específico', 'https://dadosabertos.camara.leg.br/api/v2/blocos/584', 0, 'Dados de um bloco partidário'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    428, 428, 16, 'Deputados', 'https://dadosabertos.camara.leg.br/api/v2/deputados', 'Listagem e busca dos Deputados', 'https://dadosabertos.camara.leg.br/api/v2/deputados?ordem=ASC&ordenarPor=nome', 0, 'Lista deputados'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    429, 429, 16, 'Deputado por ID', 'https://dadosabertos.camara.leg.br/api/v2/deputados/{id}', 'Retorna os dados cadastrais de um parlamentar identificado por {id} que, em algum momento da história e por qualquer período, entrou em exercício na Câmara.', 'https://dadosabertos.camara.leg.br/api/v2/deputados/220645', 0, 'Dados de um deputado'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    430, 430, 16, 'Despesas de um deputado', 'https://dadosabertos.camara.leg.br/api/v2/deputados/{id}/despesas', 'Dá acesso aos registros de pagamentos e reembolsos feitos pela Câmara em prol do deputado identificado por {id}, a título da Cota para Exercício da Atividade Parlamentar, a chamada "cota parlamentar".', 'https://dadosabertos.camara.leg.br/api/v2/deputados/220645/despesas?ordem=ASC&ordenarPor=ano', 0, 'Despesas de um deputado'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    431, 431, 16, 'Discursos de um deputado', 'https://dadosabertos.camara.leg.br/api/v2/deputados/{id}/discursos', 'Retorna uma lista de informações sobre os pronunciamentos feitos pelo deputado identificado por {id} que tenham sido registrados, em quaisquer eventos, nos sistemas da Câmara.', 'https://dadosabertos.camara.leg.br/api/v2/deputados/220645/discursos?ordenarPor=dataHoraInicio&ordem=ASC', 0, 'Discursos de um deputado'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    432, 432, 16, 'Eventos de um deputado', 'https://dadosabertos.camara.leg.br/api/v2/deputados/{id}/eventos', 'Retorna uma lista de objetos evento nos quais a participação do parlamentar identificado por {id} era ou é prevista.', 'https://dadosabertos.camara.leg.br/api/v2/deputados/220645/eventos?ordem=ASC&ordenarPor=dataHoraInicio', 1, 'Eventos de um deputado'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    433, 433, 16, 'Frentes de um deputado', 'https://dadosabertos.camara.leg.br/api/v2/deputados/{id}/frentes', 'Retorna uma lista de informações básicas sobre as frentes parlamentares das quais o parlamentar identificado por {id} seja membro, ou, no caso de frentes existentes em legislaturas anteriores, tenha encerrado a legislatura como integrante.', 'https://dadosabertos.camara.leg.br/api/v2/deputados/220645/frentes', 0, 'Frentes de um deputado'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    434, 434, 16, 'Histórico - Deputados', 'https://dadosabertos.camara.leg.br/api/v2/deputados/{id}/historico', 'Retorna uma listagem com as diferentes situações de exercício parlamentar do deputado identificado por {id}, mesmo que a alteração registrada não tenha afetado o andamento do mandato.', 'https://dadosabertos.camara.leg.br/api/v2/deputados/220593/historico', 0, 'Histórico de movimentação de um deputado'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    435, 435, 16, 'Mandato externo de um deputado', 'https://dadosabertos.camara.leg.br/api/v2/deputados/{id}/mandatoExterno', 'Retorna uma lista em que cada item traz informações básicas sobre um cargo para o qual o parlamentar identificado por {id} tenha sido eleito, em sua carreira política fora da Câmara dos Deputados. Estes dados são fornecidos pelo Tribunal Superior Eleitoral', 'https://dadosabertos.camara.leg.br/api/v2/deputados/220645/mandatoExterno', 1, 'Informações de outros cargos de um deputado'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    436, 436, 16, 'Ocupações de um deputado', 'https://dadosabertos.camara.leg.br/api/v2/deputados/{id}/ocupacoes', 'Enumera as atividades profissionais ou ocupacionais que o deputado identificado por {id} já teve em sua carreira e declarou à Câmara dos Deputados.', 'https://dadosabertos.camara.leg.br/api/v2/deputados/220645/ocupacoes', 1, 'Ocupações e atividades profissionais de um deputado'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    437, 437, 16, 'Deputado por ID - Órgão', 'https://dadosabertos.camara.leg.br/api/v2/deputados/{id}/orgaos', 'Retorna uma lista de órgãos, como as comissões e procuradorias, dos quais o deputado identificado por {id} participa ou participou durante um intervalo de tempo.', 'https://dadosabertos.camara.leg.br/api/v2/deputados/220645/orgaos?ordem=ASC&ordenarPor=dataInicio', 0, 'Lista órgãos que um deputado participa ou participou de comissões'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    438, 438, 16, 'Profissões de um deputado', 'https://dadosabertos.camara.leg.br/api/v2/deputados/{id}/profissoes', 'Retorna uma lista de dados sobre profissões que o parlamentar identificado por {id} declarou à Câmara que já exerceu ou que pode exercer pela sua formação e/ou experiência.', 'https://dadosabertos.camara.leg.br/api/v2/deputados/220645/profissoes', 1, 'Profissões que um deputado possuiu ou pode exercer;'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    439, 439, 16, 'Líderes filtrando por ID - Legistaturas', 'https://dadosabertos.camara.leg.br/api/v2/legislaturas/{id}/lideres', 'Retorna uma lista de parlamentares que ocuparam cargos de liderança ao longo da legislatura {id}', 'https://dadosabertos.camara.leg.br/api/v2/legislaturas/220645/lideres', 1, 'Lista deputados que foram líderes'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    440, 440, 16, 'Legislatura - Mesa filtrando por ID', 'https://dadosabertos.camara.leg.br/api/v2/legislaturas/{id}/mesa', 'Retorna uma lista com dados básicos sobre todos os deputados que ocuparam algum posto na Mesa Diretora da Câmara em algum período de tempo dentro da legislatura identificada por {id}.', 'https://dadosabertos.camara.leg.br/api/v2/legislaturas/220645/mesa', 1, 'Dados sobre todos os deputados que ocuparam cargo na  Mesa Diretora da Câmara'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    441, 441, 16, 'Código situação deputados', 'https://dadosabertos.camara.leg.br/api/v2/referencias/deputados/codSituacao', 'Retorna uma lista de siglas e descrições dos possíveis estados em que um deputado pode estar em relação ao seu exercício parlamentar: Exercício, Fim de Mandato, Afastado, etc.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/deputados/codSituacao', 0, 'Lista códigos de situações que um deputado pode ter'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    442, 442, 16, 'Situações deputado', 'https://dadosabertos.camara.leg.br/api/v2/referencias/situacoesDeputado', 'Retorna uma lista de siglas e descrições dos possíveis estados em que um deputado pode estar em relação ao seu exercício parlamentar: Exercício, Fim de Mandato, Afastado, etc.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/situacoesDeputado', 0, 'Lista situações que um deputado se classifica'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    443, 443, 16, 'Eventos', 'https://dadosabertos.camara.leg.br/api/v2/eventos', 'Retorna uma lista cujos elementos trazem informações básicas sobre eventos dos órgãos legislativos da Câmara, previstos ou já ocorridos, em um certo intervalo de tempo.', 'https://dadosabertos.camara.leg.br/api/v2/eventos?ordem=ASC&ordenarPor=dataHoraInicio', 1, 'Lista eventos ocorridos e previstos da câmara'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    444, 444, 16, 'Eventos filtrando por ID', 'https://dadosabertos.camara.leg.br/api/v2/eventos/{id}', 'Retorna um conjunto detalhado de informações sobre o evento da Câmara identificado por id.', 'https://dadosabertos.camara.leg.br/api/v2/eventos/69159', 0, 'Dados de um evento da câmara'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    445, 445, 16, 'Eventos Deputados filtrando por ID', 'https://dadosabertos.camara.leg.br/api/v2/eventos/{id}/deputados', 'Retorna uma lista de dados resumidos sobre deputados participantes do evento identificado por {id}.', 'https://dadosabertos.camara.leg.br/api/v2/eventos/69159/deputados', 0, 'Lista dados de deputados que participaram de um evento'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    446, 446, 16, 'Eventos - Órgãos filtrando por ID', 'https://dadosabertos.camara.leg.br/api/v2/eventos/{id}/orgaos', 'Retorna uma lista em que cada item é um conjunto mínimo de dados sobre o(s) órgão(s) responsável(veis) pelo evento identificado por {id}', 'https://dadosabertos.camara.leg.br/api/v2/eventos/69159/orgaos', 0, 'Lista dados do órgão responsável pelo evento'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    447, 447, 16, 'Eventos- Pauta filtrando por ID', 'https://dadosabertos.camara.leg.br/api/v2/eventos/{id}/pauta', 'Se o evento {id} for de caráter deliberativo (uma reunião ordinária, por exemplo) este serviço retorna a lista de proposições previstas para avaliação pelos parlamentares. Cada item identifica, se as informações estiverem disponíveis, a proposição avaliada, o regime de preferência para avaliação, o relator e seu parecer, o resultado da apreciação e a votação realizada.', 'https://dadosabertos.camara.leg.br/api/v2/eventos/69159/pauta', 1, 'Lista de proposições previstas para avaliação pelos parlamentares'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    448, 448, 16, 'Eventos - Votações filtrando por ID', 'https://dadosabertos.camara.leg.br/api/v2/eventos/{id}}votacoes', 'Retorna uma lista de dados básicos sobre votações que tenham sido realizadas no evento identificado por {id}', 'https://dadosabertos.camara.leg.br/api/v2/eventos/69159/votacoes', 1, 'Lista de dados básicos sobre votações que tenham sido realizadas no evento'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    449, 449, 16, 'Código situação evento', 'https://dadosabertos.camara.leg.br/api/v2/referencias/eventos/codSituacaoEvento', 'Retorna uma lista de identificadores numéricos, siglas e descrições dos estados em que eventos como uma reunião podem se encontrar, como Em Andamento, Cancelada e Encerrada.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/eventos/codSituacaoEvento', 0, 'Lista situações para os eventos'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    450, 450, 16, 'Código tipo de evento', 'https://dadosabertos.camara.leg.br/api/v2/referencias/eventos/codTipoEvento', 'Retorna uma lista de identificadores numéricos, siglas e descrições dos tipos de eventos ocorridos na Câmara, tais como Audiência Pública, Comissão Geral e Palestra, entre outros.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/eventos/codTipoEvento', 0, 'Lista tipos de eventos da câmara'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    451, 451, 16, 'Situações eventos', 'https://dadosabertos.camara.leg.br/api/v2/referencias/situacoesEvento', 'Retorna uma lista de identificadores numéricos, siglas e descrições dos estados em que eventos como uma reunião podem se encontrar, como Em Andamento, Cancelada e Encerrada.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/situacoesEvento', 0, 'Lista situações para os eventos'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    452, 452, 16, 'Tipos eventos', 'https://dadosabertos.camara.leg.br/api/v2/referencias/tiposEvento', 'Retorna uma lista de identificadores numéricos, siglas e descrições dos tipos de eventos ocorridos na Câmara, tais como Audiência Pública, Comissão Geral e Palestra, entre outros.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/tiposEvento', 0, 'Lista tipos de eventos da câmara'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    453, 453, 16, 'Frentes', 'https://dadosabertos.camara.leg.br/api/v2/frentes', 'Retorna uma lista de informações sobre uma frente parlamentar - um agrupamento oficial de parlamentares em torno de um determinado tema ou proposta.', 'https://dadosabertos.camara.leg.br/api/v2/frentes', 0, 'Lista Frentes parlamentares'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    454, 454, 16, 'Frentes filtrando por Id ', 'https://dadosabertos.camara.leg.br/api/v2/frentes/{id}', 'Este recurso traz informações detalhadas sobre a frente parlamentar identificada por {id}.', 'https://dadosabertos.camara.leg.br/api/v2/frentes/54537', 0, 'Informações de uma frente parlamentar'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    455, 455, 16, 'Membros frentes por Id', 'https://dadosabertos.camara.leg.br/api/v2/frentes/{id}/membros', 'Uma lista dos deputados participantes da frente parlamentar identificada por {id} e os papéis que exerceram nessa frente (signatário, coordenador ou presidente).', 'https://dadosabertos.camara.leg.br/api/v2/frentes/54537/membros', 0, 'Membros de uma frente parlamentar'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    456, 456, 16, 'Grupos', 'https://dadosabertos.camara.leg.br/api/v2/grupos', 'Este endpoint retorna uma lista em que cada item representa um dos grupos interparlamentares em que a Câmara teve representantes. As informações incluem nome, a resolução que criou o grupo e seu ano de publicação, e as mais recentes informações sobre situação, presidente e ofício de instalação.', 'https://dadosabertos.camara.leg.br/api/v2/grupos', 0, 'Lista grupos interparlamentares'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    457, 457, 16, 'Grupos filtrando por ID', 'https://dadosabertos.camara.leg.br/api/v2/grupos/{id}', 'Todo o conjunto de informações disponíveis sobre o grupo parlamentar identificado por {id}. Além dos retornados por /grupos, há dados sobre o projeto de resolução que levou à criação do grupo, identificadores do mais recente documento e/ou ofício de instalação do grupo, datas de sua apresentação e de sua publicação, e identificação do autor do ofício.', 'https://dadosabertos.camara.leg.br/api/v2/grupos/1', 0, 'Informações de um grupo interparlamentar'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    458, 458, 16, 'Histórico - Grupos por ID', 'https://dadosabertos.camara.leg.br/api/v2/grupos/{id}/historico', 'Uma lista contendo todos os "retratos" das informações sujeitas a mudanças sobre o grupo parlamentar identificado por {id} — por exemplo, todos os ofícios de instalação dos grupos apresentados a cada legislatura desde sua criação, e eventuais substituições de presidentes.', 'https://dadosabertos.camara.leg.br/api/v2/grupos/1/historico', 0, 'Histórico de um grupo interparlamentar'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    459, 459, 16, 'Membros - Grupos por ID', 'https://dadosabertos.camara.leg.br/api/v2/grupos/{id}/membros', 'Retorna uma lista de deputados ou senadores que são ou foram participantes do grupo interparlamentar identificado por {id}. Podem ser utilizados os parâmetros dataInicio e/ou dataFim para definir de qual período se deseja saber quem foram os participantes.', 'https://dadosabertos.camara.leg.br/api/v2/grupos/1/membros?ordem=ASC&ordenarPor=idLegislatura', 1, 'Membros de um grupo interparlamentar'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    460, 460, 16, 'Legislatura', 'https://dadosabertos.camara.leg.br/api/v2/legislaturas?ordem=DESC&ordenarPor=id', 'Este serviço retorna uma lista em que cada item contém as informações básicas sobre um desses períodos.', 'https://dadosabertos.camara.leg.br/api/v2/legislaturas?ordem=DESC&ordenarPor=id', 0, 'Lista de legislaturas'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    461, 461, 16, 'Legislaturas filtrando por ID', 'https://dadosabertos.camara.leg.br/api/v2/legislaturas/{id}', 'Retorna informações adicionais sobre o período de atividades da Câmara identificado por {id}.', 'https://dadosabertos.camara.leg.br/api/v2/legislaturas/57', 0, 'Informações de uma legislatura'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    462, 462, 16, 'Líderes - Legislaturas filtrando por ID', 'https://dadosabertos.camara.leg.br/api/v2/legislaturas/{id}/lideres', 'Retorna uma lista de parlamentares que ocuparam cargos de liderança ao longo da legislatura {id}. Cada item identifica um parlamentar, uma bancada (partido, bloco ou lideranças de situação e oposição), o título de liderança exercido e o período de exercício do parlamentar nesta posição.', 'https://dadosabertos.camara.leg.br/api/v2/legislaturas/57/lideres', 0, 'Líderes de uma legislatura'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    463, 463, 16, 'Mesa - Legislaturas filtrando por ID', 'https://dadosabertos.camara.leg.br/api/v2/legislaturas/{id}/mesa', 'Retorna uma lista com dados básicos sobre todos os deputados que ocuparam algum posto na Mesa Diretora da Câmara em algum período de tempo dentro da legislatura identificada por {id}.', 'https://dadosabertos.camara.leg.br/api/v2/legislaturas/57/mesa', 0, 'Lista deputados que ocuparam a mesa Diretora da Câmara durante uma legislatura'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    464, 464, 16, 'Partidos', 'https://dadosabertos.camara.leg.br/api/v2/partidos', 'Retorna uma lista de dados básicos sobre os partidos políticos que têm ou já tiveram deputados na Câmara.', 'https://dadosabertos.camara.leg.br/api/v2/partidos?ordem=ASC&ordenarPor=sigla', 1, 'Lista Partidos'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    465, 465, 16, 'Partidos - Filtrando por ID', 'https://dadosabertos.camara.leg.br/api/v2/partidos/{id}', 'Retorna informações detalhadas sobre um partido', 'https://dadosabertos.camara.leg.br/api/v2/partidos/36839', 0, 'Informações de um partido'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    466, 466, 16, 'Líderes - Partidos filtrando por ID', 'https://dadosabertos.camara.leg.br/api/v2/partidos/{id}/lideres', 'Retorna uma lista de deputados que ocupam ou ocuparam cargos de líder ou vice-líder do partido {id} num intervalo de tempo opcional, com a identificação do cargo e o período em que o tiveram.', 'https://dadosabertos.camara.leg.br/api/v2/partidos/36839/lideres', 1, 'Deputados líderes de um partido'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    467, 467, 16, 'Membros - Partidos filtrando por ID', 'https://dadosabertos.camara.leg.br/api/v2/partidos/{id}/membros', 'Retorna uma lista de deputados que estão ou estiveram em exercício pelo partido {id}.', 'https://dadosabertos.camara.leg.br/api/v2/partidos/36839/membros', 0, 'Deputados Membros de um partído'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    468, 468, 16, 'Proposições', 'https://dadosabertos.camara.leg.br/api/v2/proposicoes?ordem=ASC&ordenarPor=id', 'Lista de informações básicas sobre projetos de lei, resoluções, medidas provisórias, emendas, pareceres e todos os outros tipos de proposições na Câmara.', 'https://dadosabertos.camara.leg.br/api/v2/proposicoes?ordem=ASC&ordenarPor=id', 0, 'Lista Preposções'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    469, 469, 16, 'Proposições filtrando por ID', 'https://dadosabertos.camara.leg.br/api/v2/proposicoes/{id}', 'Informações detalhadas de uma proposição específica', 'https://dadosabertos.camara.leg.br/api/v2/proposicoes/276180', 0, 'Informações de uma preposição'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    470, 470, 16, 'Autores - Proposições filtrando por ID', 'https://dadosabertos.camara.leg.br/api/v2/proposicoes/{id}}/autores', 'Retorna uma lista em que cada item identifica uma pessoa ou entidade que é autora da proposição identificada por {id}. Além de deputados, também podem ser autores de proposições os senadores, a sociedade civil, assembleias legislativas e os poderes Executivo e Judiciário.', 'https://dadosabertos.camara.leg.br/api/v2/proposicoes/276180/autores', 0, 'Lista autores de uma preposição'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    471, 471, 16, 'Relacionadas - Proposições filtrando por ID', 'https://dadosabertos.camara.leg.br/api/v2/proposicoes/{id}/relacionadas', 'Lista de informações básicas sobre proposições que de alguma forma se relacionam com a proposição identificada por {id}, como pareceres, requerimentos, substitutivos, etc.', 'https://dadosabertos.camara.leg.br/api/v2/proposicoes/276180/relacionadas', 0, 'Lista preposições que se relacionam a uma preposição'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    472, 472, 16, 'Temas - Proposições filtrando por ID', 'https://dadosabertos.camara.leg.br/api/v2/proposicoes/{id/temas', 'Lista em que cada item traz informações sobre uma área temática à qual a proposição identificada por {id} se relaciona, segundo classificação oficial do Centro de Documentação e Informação da Câmara', 'https://dadosabertos.camara.leg.br/api/v2/proposicoes/276180/temas', 0, 'Temas relacionados a uma preposição'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    473, 473, 16, 'Tramitações - Proposições filtrando por ID', 'https://dadosabertos.camara.leg.br/api/v2/proposicoes/{id}/tramitacoes', 'Lista que traz, como cada item, um "retrato" de informações que podem ser alteradas a cada etapa de tramitação na vida de uma proposição (como regime de tramitação e situação) e informações sobre o que causou esse novo estado.', 'https://dadosabertos.camara.leg.br/api/v2/proposicoes/276180/tramitacoes', 0, 'Informações de tramitação de uma preposição'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    474, 474, 16, 'Votações - Proposições filtrando por ID', 'https://dadosabertos.camara.leg.br/api/v2/proposicoes/{id}/votacoes?ordem=DESC&ordenarPor=dataHoraRegistro', 'Retorna uma lista de identificadores básicos sobre as votações na Câmara que tiveram a proposição {id} como objeto ou como afetada pelos seus resultados. Dados complementares sobre cada votação listada podem ser obtidos no recurso /votacoes/{id}.', 'https://dadosabertos.camara.leg.br/api/v2/proposicoes/276180/votacoes?ordem=DESC&ordenarPor=dataHoraRegistro', 0, 'Informações de votações de uma preposição'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    475, 475, 16, 'Código situação - Proposições', 'https://dadosabertos.camara.leg.br/api/v2/referencias/proposicoes/codSituacao', 'Uma lista de identificadores das diversas situações de tramitação em que uma proposição pode se encontrar, como Encaminhada à Publicação, Aguardando Análise, Devolvida ao Autor, etc.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/proposicoes/codSituacao', 0, 'Lista situações de proposições'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    476, 476, 16, 'Código temas - Proposições', 'https://dadosabertos.camara.leg.br/api/v2/referencias/proposicoes/codTema', 'Uma lista de identificadores numéricos e nome dos temas que uma proposição pode apresentar.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/proposicoes/codTema', 0, 'Lista temas de proposições'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    477, 477, 16, 'Código tipo autor - Proposições', 'https://dadosabertos.camara.leg.br/api/v2/referencias/proposicoes/codTipoAutor', 'Uma lista de códigos numéricos e descritores dos tipos de parlamentares, órgãos da Câmara e instituições que podem ser autores de proposições.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/proposicoes/codTipoAutor', 0, 'Lista Tipos de autores de proposições'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    478, 478, 16, 'Código tipo tramitação - Proposições', 'https://dadosabertos.camara.leg.br/api/v2/referencias/proposicoes/codTipoTramitacao', 'Uma lista de identificadores numéricos, siglas e descrições dos tipos de tramitações em que uma proposição pode se encontrar, como Apensação, Despacho, Devolução ao autor, etc.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/proposicoes/codTipoTramitacao', 0, 'Lista Tipos de tramitação de proposições'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    479, 479, 16, 'Sigla tipo proposições  - Proposições', 'https://dadosabertos.camara.leg.br/api/v2/referencias/proposicoes/siglaTipo', 'Uma lista de identificadores numéricos, siglas e descrições dos tipos de proposições que existem ou já existiram no Congresso, tais como PEC, Requerimento, Emenda de Plenário e outros.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/proposicoes/siglaTipo', 0, 'Lista tipos de proposições'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    480, 480, 16, 'Situação proposição - Proposições', 'https://dadosabertos.camara.leg.br/api/v2/referencias/situacoesProposicao', 'Uma lista de identificadores das diversas situações de tramitação em que uma proposição pode se encontrar, como Encaminhada à Publicação, Aguardando Análise, Devolvida ao Autor, etc.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/situacoesProposicao', 0, 'Lista situações de proposições'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    481, 481, 16, 'Tipos autor  - Proposições', 'https://dadosabertos.camara.leg.br/api/v2/referencias/tiposAutor', 'Uma lista de códigos numéricos e descritores dos tipos de parlamentares, órgãos da Câmara e instituições que podem ser autores de proposições.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/tiposAutor', 0, 'Lista Tipos de autores de proposições'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    482, 482, 16, 'Tipos proposição - Proposições', 'https://dadosabertos.camara.leg.br/api/v2/referencias/tiposProposicao', 'Uma lista de identificadores numéricos, siglas e descrições dos tipos de proposições que existem ou já existiram no Congresso, tais como PEC, Requerimento, Emenda de Plenário e outros.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/tiposProposicao', 0, 'Lista tipos de proposições'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    483, 483, 16, 'Tipos tramitação - Proposições', 'https://dadosabertos.camara.leg.br/api/v2/referencias/tiposTramitacao', 'Uma lista de identificadores numéricos, siglas e descrições dos tipos de tramitações em que uma proposição pode se encontrar, como Apensação, Despacho, Devolução ao autor, etc.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/tiposTramitacao', 0, 'Lista Tipos de tramitação de proposições'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    484, 484, 16, 'Deputados - Referências', 'https://dadosabertos.camara.leg.br/api/v2/referencias/deputados', 'Retorna, como valor do elemento "dados", um objeto em que cada elemento tem o nome de um parâmetro aplicável ao endpoint /deputados.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/deputados', 0, 'Lista todas as informações da api com dados de deputados'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    485, 485, 16, 'Código situação - Referências', 'https://dadosabertos.camara.leg.br/api/v2/referencias/deputados/codSituacao', 'Retorna uma lista de siglas e descrições dos possíveis estados em que um deputado pode estar em relação ao seu exercício parlamentar: Exercício, Fim de Mandato, Afastado, etc.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/deputados/codSituacao', 0, 'Lista siglas e descrições dos possíveis estados em relação ao exercício parlamentar'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    486, 486, 16, 'Código tipo profissao  - Referências', 'https://dadosabertos.camara.leg.br/api/v2/referencias/deputados/codTipoProfissao', 'Retorna uma lista dos títulos de profissões registradas na Câmara dos Deputados (em masculino) e seus códigos.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/deputados/codTipoProfissao', 0, 'Lista Tipos de profissões dos deputados'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    487, 487, 16, 'Sigla UF - Referências', 'https://dadosabertos.camara.leg.br/api/v2/referencias/deputados/siglaUF', 'Retorna uma lista de siglas e nomes das unidades de federação brasileiras, usados principalmente para indicar onde um parlamentar foi eleito.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/deputados/siglaUF', 0, 'Lista estados'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    488, 488, 16, 'Tipo de despesas - Deputados - Referências', 'https://dadosabertos.camara.leg.br/api/v2/referencias/deputados/tipoDespesa', 'Retorna uma lista de códigos e nomes das possíveis despesas de Cota Parlamentar: COMBUSTÍVEIS E LUBRIFICANTES., TELEFONIA, SERVIÇOS POSTAIS, etc.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/deputados/tipoDespesa', 0, 'Lista tipos de despesas'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    489, 489, 16, 'Eventos - Referências', 'https://dadosabertos.camara.leg.br/api/v2/referencias/eventos', 'Retorna, como valor do elemento "dados", um objeto em que cada elemento tem o nome de um parâmetro aplicável ao endpoint /eventos. ', 'https://dadosabertos.camara.leg.br/api/v2/referencias/eventos', 0, 'Lista todas as informações sobre eventos'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    490, 490, 16, 'Código situação evento - Referências', 'https://dadosabertos.camara.leg.br/api/v2/referencias/eventos/codSituacaoEvento', 'Retorna uma lista de identificadores numéricos, siglas e descrições dos estados em que eventos como uma reunião podem se encontrar, como Em Andamento, Cancelada e Encerrada.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/eventos/codSituacaoEvento', 0, 'Lista informações sobre situação de eventos'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    491, 491, 16, 'Código tipo evento - Referências', 'https://dadosabertos.camara.leg.br/api/v2/referencias/eventos/codTipoEvento', 'Retorna uma lista de identificadores numéricos, siglas e descrições dos tipos de eventos ocorridos na Câmara, tais como Audiência Pública, Comissão Geral e Palestra, entre outros.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/eventos/codTipoEvento', 0, 'Lista informações sobre tipos de eventos'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    492, 492, 16, 'Órgãos - Referências', 'https://dadosabertos.camara.leg.br/api/v2/referencias/orgaos', 'Retorna, como valor do elemento "dados", um objeto em que cada elemento tem o nome de um parâmetro aplicável ao endpoint /órgãos. ', 'https://dadosabertos.camara.leg.br/api/v2/referencias/orgaos', 0, 'Lista todas as informações sobre órgãos'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    493, 493, 16, 'Código situação - Referências', 'https://dadosabertos.camara.leg.br/api/v2/referencias/orgaos/codSituacao', 'Retorna uma lista de identificadores numéricos, títulos e descrições das situações possíveis para órgãos em operação na Câmara, como Em funcionamento, Extinta, Pronta para criação, etc.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/orgaos/codSituacao', 0, 'Lista situações '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    494, 494, 16, 'Código tipo órgão - Referências', 'https://dadosabertos.camara.leg.br/api/v2/referencias/orgaos/codTipoOrgao', 'Retorna uma lista de identificadores numéricos, siglas e descrições dos tipos de órgãos legislativos ou representados na Câmara, tais como as comissões permanentes, CPIs, procuradorias, etc.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/orgaos/codTipoOrgao', 0, 'Lista tipos de órgãos'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    495, 495, 16, 'Proposições - Referências', 'https://dadosabertos.camara.leg.br/api/v2/referencias/proposicoes', 'Retorna, como valor do elemento "dados", um objeto em que cada elemento tem o nome de um parâmetro aplicável ao endpoint /proposições.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/proposicoes', 0, 'Lista todas as informações sobre preposições'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    496, 496, 16, 'Código situação preposições - Referências', 'https://dadosabertos.camara.leg.br/api/v2/referencias/proposicoes/codSituacao', 'Uma lista de identificadores das diversas situações de tramitação em que uma proposição pode se encontrar, como Encaminhada à Publicação, Aguardando Análise, Devolvida ao Autor, etc.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/proposicoes/codSituacao', 0, 'Lista as situações de proposições'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    497, 497, 16, 'Código tema preposições - Referências', 'https://dadosabertos.camara.leg.br/api/v2/referencias/proposicoes/codTema', 'Uma lista de identificadores numéricos e nome dos temas que uma proposição pode apresentar.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/proposicoes/codTema', 0, 'Lista temas disponíveis para preposições'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    498, 498, 16, 'Código tipo autor - Referências', 'https://dadosabertos.camara.leg.br/api/v2/referencias/proposicoes/codTipoAutor', 'Uma lista de códigos numéricos e descritores dos tipos de parlamentares, órgãos da Câmara e instituições que podem ser autores de proposições.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/proposicoes/codTipoAutor', 0, 'Lista Tipos de autores de proposições'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    499, 499, 16, 'Código tipo tramitação - Referências', 'https://dadosabertos.camara.leg.br/api/v2/referencias/proposicoes/codTipoTramitacao', 'Uma lista de identificadores numéricos, siglas e descrições dos tipos de tramitações em que uma proposição pode se encontrar, como Apensação, Despacho, Devolução ao autor, etc.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/proposicoes/codTipoTramitacao', 0, 'Lista Tipos de tramitação de proposições'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    500, 500, 16, 'Sigla tipo - Referências', 'https://dadosabertos.camara.leg.br/api/v2/referencias/proposicoes/siglaTipo', 'Uma lista de identificadores numéricos, siglas e descrições dos tipos de proposições que existem ou já existiram no Congresso, tais como PEC, Requerimento, Emenda de Plenário e outros.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/proposicoes/siglaTipo', 0, 'Lista siglas de tipos de preposições'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    501, 501, 16, 'Situações deputado - Referências', 'https://dadosabertos.camara.leg.br/api/v2/referencias/situacoesDeputado', 'Retorna uma lista de siglas e descrições dos possíveis estados em que um deputado pode estar em relação ao seu exercício parlamentar: Exercício, Fim de Mandato, Afastado, etc.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/situacoesDeputado', 0, 'Lista siglas de situações de deputados'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    502, 502, 16, 'Situação evento - Referências', 'https://dadosabertos.camara.leg.br/api/v2/referencias/situacoesEvento', 'Retorna uma lista de identificadores numéricos, siglas e descrições dos estados em que eventos como uma reunião podem se encontrar, como Em Andamento, Cancelada e Encerrada.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/situacoesEvento', 0, 'Lista siglas de eventos '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    503, 503, 16, 'Situações órgão', 'https://dadosabertos.camara.leg.br/api/v2/referencias/situacoesOrgao', 'Retorna uma lista de identificadores numéricos, títulos e descrições das situações possíveis para órgãos em operação na Câmara, como Em funcionamento, Extinta, Pronta para criação, etc.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/situacoesOrgao', 0, 'Lista situações do órgão em operação na câmara'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    504, 504, 16, 'Situações proposição - Referências', 'https://dadosabertos.camara.leg.br/api/v2/referencias/situacoesProposicao', 'Uma lista de identificadores das diversas situações de tramitação em que uma proposição pode se encontrar, como Encaminhada à Publicação, Aguardando Análise, Devolvida ao Autor, etc.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/situacoesProposicao', 0, 'Lista situações em que uma proposição pode se encontrar'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    505, 505, 16, 'Tipos autor - Referências', 'https://dadosabertos.camara.leg.br/api/v2/referencias/tiposAutor', 'Uma lista de códigos numéricos e descritores dos tipos de parlamentares, órgãos da Câmara e instituições que podem ser autores de proposições.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/tiposAutor', 0, 'Lista Tipos de parlamentares que podem ser  autores de proposições'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    506, 506, 16, 'Tipos eventos - Referências', 'https://dadosabertos.camara.leg.br/api/v2/referencias/tiposEvento', 'Retorna uma lista de identificadores numéricos, siglas e descrições dos tipos de eventos ocorridos na Câmara, tais como Audiência Pública, Comissão Geral e Palestra, entre outros.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/tiposEvento', 0, 'Lista tipos de eventos ocorridos'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    507, 507, 16, 'Tipos órgãos - Referências', 'https://dadosabertos.camara.leg.br/api/v2/referencias/tiposOrgao', 'Retorna uma lista de identificadores numéricos, siglas e descrições dos tipos de órgãos legislativos ou representados na Câmara, tais como as comissões permanentes, CPIs, procuradorias, etc.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/tiposOrgao', 0, 'Lista tipos de órgãos legislativos'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    508, 508, 16, 'Tipos proposição - Referências', 'https://dadosabertos.camara.leg.br/api/v2/referencias/tiposProposicao', 'Uma lista de identificadores numéricos, siglas e descrições dos tipos de proposições que existem ou já existiram no Congresso, tais como PEC, Requerimento, Emenda de Plenário e outros.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/tiposProposicao', 0, 'Lista tipos de proposições que existem ou já existiram no Congresso'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    509, 509, 16, 'Tipos tramitações  - Referências', 'https://dadosabertos.camara.leg.br/api/v2/referencias/tiposTramitacao', 'Uma lista de identificadores numéricos, siglas e descrições dos tipos de tramitações em que uma proposição pode se encontrar, como Apensação, Despacho, Devolução ao autor, etc.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/tiposTramitacao', 0, 'Lista tipos de tramitações em que uma proposição pode se encontrar'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    510, 510, 16, 'UF - Referências', 'https://dadosabertos.camara.leg.br/api/v2/referencias/uf', 'Retorna uma lista de siglas e nomes das unidades de federação brasileiras, usados principalmente para indicar onde um parlamentar foi eleito.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/uf', 0, 'Lista de siglas e nomes das unidades de federação '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    511, 511, 16, 'Votações', 'https://dadosabertos.camara.leg.br/api/v2/votacoes?ordem=DESC&ordenarPor=dataHoraRegistro', 'Retorna uma lista de informações básicas sobre as votações ocorridas em eventos dos diversos órgãos da Câmara.', 'https://dadosabertos.camara.leg.br/api/v2/votacoes?ordem=DESC&ordenarPor=dataHoraRegistro', 0, 'Lista votações diversas'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    512, 512, 16, 'Votações filtrando por ID', 'Lideres filtrando por ID - Legistaturas', 'Retorna um conjunto detalhado de dados sobre a votação identificada por {id}, tais como as proposições que podem ter sido o objeto da votação e os efeitos de tramitação de outras proposições que eventualmente tenham sido cadastrados em consequência desta votação.', 'https://dadosabertos.camara.leg.br/api/v2/votacoes/2372071-13', 0, 'Informações sobre uma votação'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    513, 513, 16, 'Votações filtrando por ID', 'https://dadosabertos.camara.leg.br/api/v2/votacoes/{id}/orientacoes', 'Se a votação identificada por {id} teve orientações, este recurso retorna uma lista em que cada item contém os identificadores de um partido, bloco ou liderança, e o posicionamento ou voto que foi recomendado aos seus parlamentares.', 'https://dadosabertos.camara.leg.br/api/v2/votacoes/2372071-13/orientacoes', 0, 'Orientações de uma votação'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    514, 514, 16, 'Votos - Votações filtrando por ID', 'https://dadosabertos.camara.leg.br/api/v2/votacoes/{id}/votos', 'Se {id} é o identificador de uma votação da Câmara nominal que não tenha sido secreta, este endpoint retorna uma lista em que cada item contém os identificadores básicos de um deputado e o voto ou posicionamento que ele registrou.', 'https://dadosabertos.camara.leg.br/api/v2/votacoes/2372071-13/votos', 0, 'Votos de uma votação'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    515, 515, 16, 'Órgãos', 'https://dadosabertos.camara.leg.br/api/v2/orgaos?ordem=ASC&ordenarPor=id', 'Retorna uma lista de informações básicas sobre os órgãos legislativos e seus identificadores, tipos e descrições.', 'https://dadosabertos.camara.leg.br/api/v2/orgaos?ordem=ASC&ordenarPor=id', 0, 'Lista órgãos legislativos'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    516, 516, 16, 'Órgãos filtrando por ID ', 'https://dadosabertos.camara.leg.br/api/v2/orgaos/{id}', 'Retorna todas as informações disponíveis sobre o órgão da Câmara identificado por id.', 'https://dadosabertos.camara.leg.br/api/v2/orgaos/4', 0, 'Informações de um órgão'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    517, 517, 16, 'Eventos - Órgãos filtrando por ID', 'https://dadosabertos.camara.leg.br/api/v2/orgaos/{id}}/eventos?ordem=ASC&ordenarPor=dataHoraInicio', 'Retorna uma lista de informações resumidas dos eventos realizados (ou a realizar) pelo órgão legislativo identificado por {id}.', 'https://dadosabertos.camara.leg.br/api/v2/orgaos/81/eventos?ordem=ASC&ordenarPor=dataHoraInicio', 0, 'Informações de eventos de um órgão'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    518, 518, 16, 'Membros - Órgãos filtrando por ID', 'https://dadosabertos.camara.leg.br/api/v2/orgaos/{id}/membros', 'Retorna uma lista de dados resumidos que identificam cada parlamentar e o cargo ou posição que ocupa ou ocupou no órgão parlamentar identificado por {id} durante um certo período de tempo.', 'https://dadosabertos.camara.leg.br/api/v2/orgaos/4/membros', 0, 'Membros de um órgão'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    519, 519, 16, 'Votações - Órgãos filtrando por ID', 'https://dadosabertos.camara.leg.br/api/v2/orgaos/{id}/votacoes?ordem=DESC&ordenarPor=dataHoraRegistro', 'Retorna uma lista de dados básicos de votações que tenham sido realizadas em eventos realizados no órgão {id}.', 'https://dadosabertos.camara.leg.br/api/v2/orgaos/4/votacoes?ordem=DESC&ordenarPor=dataHoraRegistro', 0, 'Votações de um órgão'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    520, 520, 16, 'Código situação - Órgãos filtrando por ID', 'https://dadosabertos.camara.leg.br/api/v2/referencias/orgaos/codSituacao', 'Retorna uma lista de identificadores numéricos, títulos e descrições das situações possíveis para órgãos em operação na Câmara, como Em funcionamento, Extinta, Pronta para criação, etc.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/orgaos/codSituacao', 0, 'Situação de um órgão'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    521, 521, 16, 'Situações órgão - Órgãos filtrando por ID', 'https://dadosabertos.camara.leg.br/api/v2/referencias/situacoesOrgao', 'Retorna uma lista de identificadores numéricos, títulos e descrições das situações possíveis para órgãos em operação na Câmara, como Em funcionamento, Extinta, Pronta para criação, etc.', 'https://dadosabertos.camara.leg.br/api/v2/referencias/situacoesOrgao', 0, 'Situação de um órgão'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    522, 522, 16, 'Situações órgão - Órgãos filtrando por ID', 'https://dadosabertos.camara.leg.br/api/v2/legislaturas/57/lideres', 'Retorna uma lista de parlamentares que ocuparam cargos de liderança ao longo da legislatura {id}. Cada item identifica um parlamentar, uma bancada (partido, bloco ou lideranças de situação e oposição), o título de liderança exercido e o período de exercício do parlamentar nesta posição.', 'https://dadosabertos.camara.leg.br/api/v2/legislaturas/57/lideres', 0, 'Líderes de uma legislatura'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    523, 523, 16, 'Líderes - Partidos filtrando por ID', 'https://dadosabertos.camara.leg.br/api/v2/partidos/{id}/lideres', 'Situações Órgão- órgãos filtrando por ID', 'https://dadosabertos.camara.leg.br/api/v2/partidos/36844/lideres', 0, 'Líderes de um partido '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    524, 524, 17, 'Consulta viagens por período', 'https://api.portaldatransparencia.gov.br/api-de-dados/viagens', 'Consulta viagens por período', 'https://api.portaldatransparencia.gov.br/api-de-dados/viagens?dataIdaDe=01%2F09%2F2023&dataIdaAte=30%2F09%2F2023&dataRetornoDe=01%2F09%2F2023&dataRetornoAte=30%2F09%2F2023&codigoOrgao=26276&pagina=1', 0, 'Informações sobre viagens por período'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    525, 525, 17, 'Consulta uma viagem pelo ID', 'https://api.portaldatransparencia.gov.br/api-de-dados/viagens/{id }', 'Consulta uma viagem pelo ID', 'https://api.portaldatransparencia.gov.br/api-de-dados/viagens/495801256', 0, 'Informações de uma viagem'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    526, 526, 17, 'Consulta viagens por CPF', 'https://api.portaldatransparencia.gov.br/api-de-dados/viagens-por-cpf', 'Consulta viagens por CPF', 'https://api.portaldatransparencia.gov.br/api-de-dados/viagens-por-cpf?cpf=01971135755&pagina=1', 0, 'Informações de viagens por CPF'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    527, 527, 17, 'Consulta situações dos imóveis funcionais', 'https://api.portaldatransparencia.gov.br/api-de-dados/situacao-imovel', 'Consulta situações dos imóveis funcionais', 'https://api.portaldatransparencia.gov.br/api-de-dados/situacao-imovel', 0, 'Dados de situação dos imóveis funcionais'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    528, 528, 17, 'Consulta relação de ocupantes', 'https://api.portaldatransparencia.gov.br/api-de-dados/permissionarios?pagina=1', 'Consulta relação de ocupantes', 'https://api.portaldatransparencia.gov.br/api-de-dados/permissionarios?pagina=1', 0, 'Dados de relação de ocupantes'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    529, 529, 17, 'Consulta relação de imóveis', 'https://api.portaldatransparencia.gov.br/api-de-dados/imoveis?pagina=1', 'Consulta relação de imóveis', 'https://api.portaldatransparencia.gov.br/api-de-dados/imoveis?pagina=1', 0, 'Dados da relação de imóveis'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    530, 530, 17, 'Consulta todos servidores do Poder Executivo Federal', 'https://api.portaldatransparencia.gov.br/api-de-dados/servidores', 'Consulta todos servidores do Poder Executivo Federal', 'https://api.portaldatransparencia.gov.br/api-de-dados/servidores?orgaoServidorExercicio=26276&pagina=1', 0, 'Lista servidores Federais'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    531, 531, 17, 'Consulta um servidor do Poder Executivo Federal pelo ID', 'https://api.portaldatransparencia.gov.br/api-de-dados/servidores/{id}', 'Consulta um servidor do Poder Executivo Federal pelo idServidorAposentadoPensionista', 'https://api.portaldatransparencia.gov.br/api-de-dados/servidores/74314488', 0, 'Dados de um servidor Federal'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    532, 532, 17, 'Consulta remunerações de um servidor do Poder Executivo Federal pelo CPF ou ID e mês/ano', 'https://api.portaldatransparencia.gov.br/api-de-dados/servidores/remuneracao', 'Consulta remunerações de um servidor do Poder Executivo Federal pelo CPF ou idServidorAposentadoPensionista e mês/ano', 'https://api.portaldatransparencia.gov.br/api-de-dados/servidores/remuneracao?id=74314488&mesAno=202301&pagina=1', 0, 'Dados de remuneração de um servidor federal pelo CPF'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    533, 533, 17, 'Consulta de servidores agregados por órgão', 'https://api.portaldatransparencia.gov.br/api-de-dados/servidores/por-orgao', 'Consulta de servidores agregados por órgão', 'https://api.portaldatransparencia.gov.br/api-de-dados/servidores/por-orgao?pagina=1', 0, 'Lista servidores Agregados por órgão'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    534, 534, 17, 'Código da função ou cargo de confiança', 'https://api.portaldatransparencia.gov.br/api-de-dados/servidores/funcoes-e-cargos?pagina=1', 'Código da Função ou Cargo de Confiança', 'https://api.portaldatransparencia.gov.br/api-de-dados/servidores/funcoes-e-cargos?pagina=1', 0, 'Informações de uma função ou cargo de confiança'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    535, 535, 17, 'Consulta PEPs', 'https://api.portaldatransparencia.gov.br/api-de-dados/peps', 'Consulta PEPs', 'https://api.portaldatransparencia.gov.br/api-de-dados/peps?dataFimExercicioDe=01%2F01%2F2023&pagina=1', 0, 'Consulta informações de PEPs'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    536, 536, 17, 'Consulta os registros Seguro Defeso', 'https://api.portaldatransparencia.gov.br/api-de-dados/seguro-defeso-por-municipio', 'Consulta os registros Seguro Defeso', 'https://api.portaldatransparencia.gov.br/api-de-dados/seguro-defeso-por-municipio?mesAno=202301&codigoIbge=3106200&pagina=1', 0, 'Lista registros de Seguro Defeso'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    537, 537, 17, 'Consulta os registros Seguro Defeso por CPF/NIS', 'https://api.portaldatransparencia.gov.br/api-de-dados/seguro-defeso-codigo', 'Consulta os registros Seguro Defeso por CPF/NIS', 'https://api.portaldatransparencia.gov.br/api-de-dados/seguro-defeso-codigo?codigo=10859427215&pagina=1', 0, 'Lista registros de Seguro Defeso por CPF'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    538, 538, 17, 'Consulta os registros Seguro Defeso dos Beneficiários por município e mês/ano', 'https://api.portaldatransparencia.gov.br/api-de-dados/seguro-defeso-beneficiario-por-municipio', 'Consulta os registros Seguro Defeso dos Beneficiários por Município e Mês/Ano', 'https://api.portaldatransparencia.gov.br/api-de-dados/seguro-defeso-beneficiario-por-municipio?mesAno=202301&codigoIbge=3106200&pagina=1', 0, 'Lista registros de seguro defeso dos beneficiários por município e mês/ano'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    539, 539, 17, 'Consulta os registros Garantia - Safra', 'https://api.portaldatransparencia.gov.br/api-de-dados/safra-por-municipio', 'Consulta os registros Garantia-Safra', 'https://api.portaldatransparencia.gov.br/api-de-dados/safra-por-municipio?mesAno=202306&codigoIbge=2925931&pagina=1', 0, 'Lista Registros garantia-safra'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    540, 540, 17, 'Consulta os registros Garantia - Safra por CPF/NIS', 'https://api.portaldatransparencia.gov.br/api-de-dados/safra-codigo-por-cpf-ou-nis', 'Consulta os registros Garantia-Safra por CPF/NIS', 'https://api.portaldatransparencia.gov.br/api-de-dados/safra-codigo-por-cpf-ou-nis?codigo=16131096954&pagina=1', 0, 'Lista Registros garantia-safra por CPF'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    541, 541, 17, 'Consulta os registros Garantia - Safra dos beneficiários por município e mês/ano', 'https://api.portaldatransparencia.gov.br/api-de-dados/safra-beneficiario-por-municipio', 'Consulta os registros Garantia-Safra dos beneficiários por município e mês/ano', 'https://api.portaldatransparencia.gov.br/api-de-dados/safra-beneficiario-por-municipio?mesAno=202201&codigoIbge=2300200&pagina=1', 0, 'Dados dos beneficiários do Garantia safra por município e mês/ano'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    542, 542, 17, 'Consulta os registros Programa de Erradicação do Trabalho Infantil', 'https://api.portaldatransparencia.gov.br/api-de-dados/peti-por-municipio', 'Consulta os registros Programa de Erradicação do Trabalho Infantil', 'https://api.portaldatransparencia.gov.br/api-de-dados/peti-por-municipio?mesAno=202204&codigoIbge=5201108&pagina=1', 0, 'Dados do programa de erradicação do trabalho infantil'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    543, 543, 17, 'Consulta os registros Programa de Erradicação do Trabalho Infantil por CPF/NIS', 'https://api.portaldatransparencia.gov.br/api-de-dados/peti-por-cpf-ou-nis', 'Consulta os registros Programa de Erradicação do Trabalho Infantil por CPF/NIS', 'https://api.portaldatransparencia.gov.br/api-de-dados/peti-por-cpf-ou-nis?codigo=20033342568&pagina=1', 0, 'Dados do programa de erradicação do trabalho infantil por CPF'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    544, 544, 17, 'Consulta os registros PETI dos beneficiários por município e mês/ano', 'https://api.portaldatransparencia.gov.br/api-de-dados/peti-beneficiario-por-municipio', 'Consulta os registros PETI dos beneficiários por município e mês/ano', 'https://api.portaldatransparencia.gov.br/api-de-dados/peti-beneficiario-por-municipio?mesAno=202205&codigoIbge=5201108&pagina=1', 0, 'Dados dos beneficiários do PETI'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    545, 545, 17, 'Consulta os registros de benefício de prestação continuada por município', 'https://api.portaldatransparencia.gov.br/api-de-dados/bpc-por-municipio', 'Consulta os registros de Benefício de Prestação Continuada por Município', 'https://api.portaldatransparencia.gov.br/api-de-dados/bpc-por-municipio?mesAno=202306&codigoIbge=2927408&pagina=1', 0, 'Dados do benefício de Prestação continuada por município'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    546, 546, 17, 'Consulta os registros de benefício de prestação continuada por CPF/NIS', 'https://api.portaldatransparencia.gov.br/api-de-dados/bpc-por-cpf-ou-nis', 'Consulta os registros de Benefício de Prestação Continuada por CPF/NIS', 'https://api.portaldatransparencia.gov.br/api-de-dados/bpc-por-cpf-ou-nis?codigo=29327474287&pagina=1', 0, 'Dados benefício de prestação continuada por CPF'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    547, 547, 17, 'Consulta os registros de benefício de prestação continuada dos beneficiários por município e mês/ano', 'https://api.portaldatransparencia.gov.br/api-de-dados/bpc-beneficiario-por-municipio', 'Consulta os registros de Benefício de Prestação Continuada dos Beneficiários por Município e Mês/Ano', 'https://api.portaldatransparencia.gov.br/api-de-dados/bpc-beneficiario-por-municipio?mesAno=202306&codigoIbge=2408003&pagina=1', 0, 'Dados dos beneficiários de Prestação continuada por município'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    548, 548, 17, 'Consulta as parcelas sacadas pelo Bolsa Família pelo NIS', 'https://api.portaldatransparencia.gov.br/api-de-dados/bolsa-familia-sacado-por-nis', 'Consulta as parcelas sacadas pelo Bolsa Família pelo NIS', 'https://api.portaldatransparencia.gov.br/api-de-dados/bolsa-familia-sacado-por-nis?nis=20114231286&anoMesCompetencia=202009&pagina=1', 0, 'Informações sobre parcelas sacadas do bolsa família por NIS'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    549, 549, 17, 'Consulta as parcelas do Bolsa Família sacado dos beneficiários por município e mês/ano', 'https://api.portaldatransparencia.gov.br/api-de-dados/bolsa-familia-sacado-beneficiario-por-municipio', 'Consulta as parcelas do Bolsa Família Sacado dos Beneficiários por Município e Mês/Ano', 'https://api.portaldatransparencia.gov.br/api-de-dados/bolsa-familia-sacado-beneficiario-por-municipio?mesAno=202009&codigoIbge=2609600&pagina=1', 0, 'Dados de parcelas sacadas do bolsa familia por município e mês/ano'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    550, 550, 17, 'Consulta as parcelas do Bolsa Família por município', 'https://api.portaldatransparencia.gov.br/api-de-dados/bolsa-familia-por-municipio', 'Consulta as parcelas do Bolsa Família por Município', 'https://api.portaldatransparencia.gov.br/api-de-dados/bolsa-familia-por-municipio?mesAno=202009&codigoIbge=2609600&pagina=1', 0, 'Dados de parcelas sacadas do bolsa familia por município'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    551, 551, 17, 'Consulta as parcelas disponibilizadas pelo Bolsa Família pelo CPF/NIS', 'https://api.portaldatransparencia.gov.br/api-de-dados/bolsa-familia-disponivel-por-cpf-ou-nis', 'Consulta as parcelas disponibilizadas pelo Bolsa Família pelo CPF/NIS', 'https://api.portaldatransparencia.gov.br/api-de-dados/bolsa-familia-disponivel-por-cpf-ou-nis?codigo=20114231286&anoMesReferencia=202009&pagina=1', 0, 'Dados de parcelas disponíveis para um beneficiário'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    552, 552, 17, 'Consulta as parcelas do Bolsa Família disponível dos beneficiários por município e mês/ano', 'https://api.portaldatransparencia.gov.br/api-de-dados/bolsa-familia-disponivel-beneficiario-por-municipio', 'Consulta as parcelas do Bolsa Família Disponível dos Beneficiários por Município e Mês/Ano', 'https://api.portaldatransparencia.gov.br/api-de-dados/bolsa-familia-disponivel-beneficiario-por-municipio?mesAno=202009&codigoIbge=2609600&pagina=1', 0, 'Dados de parcelas disponíveis para os beneficiários por município e mês/ano'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    553, 553, 17, 'Consulta os registros de auxílio emergencial por município', 'https://api.portaldatransparencia.gov.br/api-de-dados/auxilio-emergencial-por-municipio', 'Consulta os registros de auxílio emergencial por Município', 'https://api.portaldatransparencia.gov.br/api-de-dados/auxilio-emergencial-por-municipio?mesAno=202302&codigoIbge=2111607&pagina=1', 0, 'Informações sobre auxilio emergencial por município'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    554, 554, 17, 'Consulta os registros de auxílio emergencial por CPF/NIS', 'https://api.portaldatransparencia.gov.br/api-de-dados/auxilio-emergencial-por-cpf-ou-nis', 'Consulta os registros de auxílio emergencial por CPF/NIS', 'https://api.portaldatransparencia.gov.br/api-de-dados/auxilio-emergencial-por-cpf-ou-nis?codigoBeneficiario=12466839301&pagina=1', 0, 'Dados de auxilio emergencial por CPF'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    555, 555, 17, 'Consulta os registros dos beneficiários por município e mês/ano', 'https://api.portaldatransparencia.gov.br/api-de-dados/auxilio-emergencial-beneficiario-por-municipio?mesAno=202009&codigoIbge=2111607&pagina=1', 'Consulta os registros dos beneficiários por município e mês/ano', 'https://api.portaldatransparencia.gov.br/api-de-dados/auxilio-emergencial-beneficiario-por-municipio?mesAno=202009&codigoIbge=2111607&pagina=1', 0, 'Dados de beneficiários por município e mês/ano'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    556, 556, 17, 'Consulta as parcelas disponibilizadas pelo Auxílio Brasil pelo NIS', 'https://api.portaldatransparencia.gov.br/api-de-dados/auxilio-brasil-sacado-por-nis?nis=16107330462&anoMesReferencia=202301&anoMesCompetencia=202301&pagina=1', 'Consulta as parcelas disponibilizadas pelo Auxílio Brasil pelo NIS', 'https://api.portaldatransparencia.gov.br/api-de-dados/auxilio-brasil-sacado-por-nis?nis=16107330462&anoMesReferencia=202301&anoMesCompetencia=202301&pagina=1', 0, 'Dados do Auxilio Brasil por NIS'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    557, 557, 17, 'Consulta as parcelas do Auxílio Brasil sacado dos beneficiários por município e mês/ano', 'https://api.portaldatransparencia.gov.br/api-de-dados/auxilio-brasil-sacado-beneficiario-por-municipio?mesAno=202301&codigoIbge=1301001&pagina=1', 'Consulta as parcelas do Auxílio Brasil Sacado dos Beneficiários por Município e Mês/Ano', 'https://api.portaldatransparencia.gov.br/api-de-dados/auxilio-brasil-sacado-beneficiario-por-municipio?mesAno=202301&codigoIbge=1301001&pagina=1', 0, 'Parcelas sacadas do auxilio brasil por município e mês/ano'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    558, 558, 17, 'Consulta as parcelas do Auxílio Brasil por município', 'https://api.portaldatransparencia.gov.br/api-de-dados/auxilio-brasil-por-municipio?mesAno=202301&codigoIbge=1301001&pagina=1', 'Consulta as parcelas do Auxílio Brasil por Município', 'https://api.portaldatransparencia.gov.br/api-de-dados/auxilio-brasil-por-municipio?mesAno=202301&codigoIbge=1301001&pagina=1', 0, 'Parcelas disponibilizadas pelo Auxilio brasil por município '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    559, 559, 17, 'Consulta de valores renunciados', 'https://api.portaldatransparencia.gov.br/api-de-dados/renuncias-valor', 'Consulta de Valores Renunciados', 'https://api.portaldatransparencia.gov.br/api-de-dados/renuncias-valor?pagina=1', 0, 'Informações de valores renunciados'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    560, 560, 17, 'Consulta pessoas jurídicas imunes e isentas', 'https://api.portaldatransparencia.gov.br/api-de-dados/renuncias-fiscais-empresas-imunes-isentas', 'Consulta Pessoas Jurídicas Imunes e Isentas', 'https://api.portaldatransparencia.gov.br/api-de-dados/renuncias-fiscais-empresas-imunes-isentas?pagina=1', 0, 'Pessoas Jurídicas imunes e isentas'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    561, 561, 17, 'Consulta pessoas jurídicas habilitadas a benefício fiscal', 'https://api.portaldatransparencia.gov.br/api-de-dados/renuncias-fiscais-empresas-habilitadas-beneficios-fiscais', 'Consulta Pessoas Jurídicas Habilitadas a Benefício Fiscal', 'https://api.portaldatransparencia.gov.br/api-de-dados/renuncias-fiscais-empresas-habilitadas-beneficios-fiscais?pagina=1', 0, 'Pessoas Jurídicas habilitadas a beneficio fiscal'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    562, 562, 17, 'Consulta de órgãos cadastrados no Sistema Integrado de Administração de Pessoal (SIAPE)', 'https://api.portaldatransparencia.gov.br/api-de-dados/orgaos-siape?pagina=1', 'Consulta de órgãos cadastrados no Sistema Integrado de Administração de Pessoal (SIAPE)', 'https://api.portaldatransparencia.gov.br/api-de-dados/orgaos-siape?pagina=1', 0, 'Dados de órgãos cadastrados no SIAPE'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    563, 563, 17, 'Consulta de órgãos cadastrados no Sistema Integrado de Administração Financeira do Governo Federal (SIAFI)', 'https://api.portaldatransparencia.gov.br/api-de-dados/orgaos-siafi', 'Consulta de órgãos cadastrados no Sistema Integrado de Administração Financeira do Governo Federal (SIAFI)', 'https://api.portaldatransparencia.gov.br/api-de-dados/orgaos-siafi?pagina=1', 0, 'Dados de órgãos cadastrados no SIAFI'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    564, 564, 17, 'Consulta todas as notas fiscais eletrônicas (NFe''s) do Poder Executivo Federal', 'https://api.portaldatransparencia.gov.br/api-de-dados/notas-fiscais?cnpjEmitente=05.301.941%2F0003-40&pagina=1', 'Consulta todas as notas fiscais eletrônicas (NFe´s) do Poder Executivo Federal', 'https://api.portaldatransparencia.gov.br/api-de-dados/notas-fiscais?cnpjEmitente=05.301.941%2F0003-40&pagina=1', 0, 'Lista todas as NFE''s do Poder Executivo Federal'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    565, 565, 17, 'Consulta uma nota fiscal eletrônica (NFe) do Poder Executivo Federal pela chave única', 'https://api.portaldatransparencia.gov.br/api-de-dados/notas-fiscais-por-chave', 'Consulta uma nota fiscal eletrônica (NFe) do Poder Executivo Federal pela chave única', 'https://api.portaldatransparencia.gov.br/api-de-dados/notas-fiscais-por-chave?chaveUnicaNotaFiscal=%0915230905054903000179558900023410011490984407', 0, 'Dados de uma nota NFE Federal por chave única'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    566, 566, 17, 'Consulta todas as licitações do Poder Executivo Federal', 'https://api.portaldatransparencia.gov.br/api-de-dados/licitacoes', 'Consulta todas as licitações do Poder Executivo Federal', 'https://api.portaldatransparencia.gov.br/api-de-dados/licitacoes?dataInicial=29%2F05%2F2023&dataFinal=29%2F06%2F2023&codigoOrgao=26439&pagina=1', 0, 'Lista todas as licitações do Poder Executivo Federal'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    567, 567, 17, 'Consulta uma licitação do Poder Executivo Federal pelo ID', 'https://api.portaldatransparencia.gov.br/api-de-dados/licitacoes/{id}', 'Consulta uma licitação do Poder Executivo Federal pelo id', 'https://api.portaldatransparencia.gov.br/api-de-dados/licitacoes/823781039', 0, 'Dados de uma licitação por id'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    568, 568, 17, 'Consulta as unidades gestoras que realizaram licitações', 'https://api.portaldatransparencia.gov.br/api-de-dados/licitacoes/ugs?pagina=1', 'Consulta as Unidades Gestoras que realizaram licitações', 'https://api.portaldatransparencia.gov.br/api-de-dados/licitacoes/ugs?pagina=1', 0, 'Lista Unidades Gestoras que realizam licitações'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    569, 569, 17, 'Consulta uma licitação pelo código da unidade Gestora, número e modalidade', 'https://api.portaldatransparencia.gov.br/api-de-dados/licitacoes/por-ug-modalidade-numero', 'Consulta uma licitação pelo código da Unidade Gestora, número e modalidade', 'https://api.portaldatransparencia.gov.br/api-de-dados/licitacoes/por-ug-modalidade-numero?codigoUG=155021&numero=000852022&codigoModalidade=05', 0, 'Dados de uma licitação por código Unidade Gestora, número e modalidade'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    570, 570, 17, 'Consulta uma licitação pelo número do processo', 'https://api.portaldatransparencia.gov.br/api-de-dados/licitacoes/por-processo', 'Consulta uma licitação pelo número do processo', 'https://api.portaldatransparencia.gov.br/api-de-dados/licitacoes/por-processo?processo=23537013191%2F22-31', 0, 'Dados de uma licitação número do processo'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    571, 571, 17, 'Consulta os participantes de uma licitação', 'https://api.portaldatransparencia.gov.br/api-de-dados/licitacoes/participantes', 'Consulta os participantes de uma licitação', 'https://api.portaldatransparencia.gov.br/api-de-dados/licitacoes/participantes?codigoUG=155021&numero=000852022&codigoModalidade=05&pagina=1', 0, 'Informações de participantes de uma licitação'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    572, 572, 17, 'Consulta as modalidades de licitação', 'https://api.portaldatransparencia.gov.br/api-de-dados/licitacoes/modalidades', 'Consulta as modalidades de licitação', 'https://api.portaldatransparencia.gov.br/api-de-dados/licitacoes/modalidades', 0, 'Lista modalidades de licitação'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    573, 573, 17, 'Consulta os itens licitados pelo ID licitação', 'https://api.portaldatransparencia.gov.br/api-de-dados/licitacoes/itens-licitados', 'Consulta os itens licitados pelo id licitação', 'https://api.portaldatransparencia.gov.br/api-de-dados/licitacoes/itens-licitados?id=837081231&pagina=1', 0, 'Itens licitados de uma licitação'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    574, 574, 17, 'Consulta os empenhos de uma licitação', 'https://api.portaldatransparencia.gov.br/api-de-dados/licitacoes/empenhos', 'Consulta os empenhos de uma licitação', 'https://api.portaldatransparencia.gov.br/api-de-dados/licitacoes/empenhos?codigoUG=155021&numero=000852022&codigoModalidade=05&pagina=1', 0, 'Empenhos de uma licitação'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    575, 575, 17, 'Consulta os contratos relacionados a licitação', 'https://api.portaldatransparencia.gov.br/api-de-dados/licitacoes/contratos-relacionados-licitacao', 'Consulta os contratos relacionados a licitação', 'https://api.portaldatransparencia.gov.br/api-de-dados/licitacoes/contratos-relacionados-licitacao?codigoUG=155021&numero=000852022&codigoModalidade=05', 0, 'Contratos relacionados a uma licitação'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    576, 576, 17, 'Consulta as emendas parlamentares', 'https://api.portaldatransparencia.gov.br/api-de-dados/emendas?pagina=1', 'Consulta as emendas parlamentares', 'https://api.portaldatransparencia.gov.br/api-de-dados/emendas?pagina=1', 0, 'Lista emendas parlamentares'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    577, 577, 17, 'Consulta os documentos relacionados à emenda parlamentar pelo código da emenda', 'https://api.portaldatransparencia.gov.br/api-de-dados/emendas/documentos/202371080006?pagina=1', 'Consulta os documentos relacionados à emenda parlamentar pelo código da emenda', 'https://api.portaldatransparencia.gov.br/api-de-dados/emendas/documentos/202371080006?pagina=1', 0, 'Documentos relacionados à uma emenda '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    578, 578, 17, 'Consulta os tipos de transferências usados nas despesas', 'https://api.portaldatransparencia.gov.br/api-de-dados/despesas/tipo-transferencia', 'Consulta os tipos de transferências usados nas despesas', 'https://api.portaldatransparencia.gov.br/api-de-dados/despesas/tipo-transferencia', 0, 'Tipos de transferências usados nas despesas'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    579, 579, 17, 'Recebimento de recursos por favorecido', 'https://api.portaldatransparencia.gov.br/api-de-dados/despesas/recursos-recebidos', 'Recebimento de recursos por favorecido', 'https://api.portaldatransparencia.gov.br/api-de-dados/despesas/recursos-recebidos?mesAnoInicio=01%2F2023&mesAnoFim=12%2F2023&pagina=1', 0, 'Recursos por favorecido'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    580, 580, 17, 'Consulta as despesas dos órgão do Poder Executivo Federal', 'https://api.portaldatransparencia.gov.br/api-de-dados/despesas/por-orgao', 'Consulta as despesas dos órgão do Poder Executivo Federal', 'https://api.portaldatransparencia.gov.br/api-de-dados/despesas/por-orgao?ano=2023&orgaoSuperior=26000&pagina=1', 0, 'Consultar despesas por órgão do executivo federal'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    581, 581, 17, 'Consulta as despesas do Poder Executivo Federal pela classificação funcional programática', 'https://api.portaldatransparencia.gov.br/api-de-dados/despesas/por-funcional-programatica?ano=2023&subfuncao=841&pagina=1', 'Consulta as despesas do Poder Executivo Federal pela classificação funcional programática', 'https://api.portaldatransparencia.gov.br/api-de-dados/despesas/por-funcional-programatica?ano=2023&subfuncao=841&pagina=1', 0, 'Consultar despesas do executivo federal por classificação funcional programática'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    582, 582, 17, 'Consulta de movimentação líquida anual das despesas do Poder Executivo Federal pela classificação funcional programática', 'https://api.portaldatransparencia.gov.br/api-de-dados/despesas/por-funcional-programatica/movimentacao-liquida?ano=2023&subfuncao=841&pagina=1', 'Consulta de movimentação líquida anual das despesas do Poder Executivo Federal pela classificação funcional programática', 'https://api.portaldatransparencia.gov.br/api-de-dados/despesas/por-funcional-programatica/movimentacao-liquida?ano=2023&subfuncao=841&pagina=1', 0, 'Consultar movimentação líquida anual das despesas do executivo federal pela classificação funcional programática'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    583, 583, 17, 'Consulta plano orçamentário', 'https://api.portaldatransparencia.gov.br/api-de-dados/despesas/plano-orcamentario?ano=2023&pagina=1', 'Consulta Plano orçamentário', 'https://api.portaldatransparencia.gov.br/api-de-dados/despesas/plano-orcamentario?ano=2023&pagina=1', 0, 'Consulta plano orçamentário'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    584, 584, 17, 'Consulta os itens de um empenho', 'https://api.portaldatransparencia.gov.br/api-de-dados/despesas/itens-de-empenho?codigoDocumento=170600000012023NE000001&pagina=1', 'Consulta os itens de um Empenho', 'https://api.portaldatransparencia.gov.br/api-de-dados/despesas/itens-de-empenho?codigoDocumento=170600000012023NE000001&pagina=1', 0, 'Consulta os itens de um empenho'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    585, 585, 17, 'Consulta o histórico de um item de empenho', 'https://api.portaldatransparencia.gov.br/api-de-dados/despesas/itens-de-empenho/historico?codigoDocumento=170600000012023NE000001&sequencial=01&pagina=1', 'Consulta o histórico de um item de empenho', 'https://api.portaldatransparencia.gov.br/api-de-dados/despesas/itens-de-empenho/historico?codigoDocumento=170600000012023NE000001&sequencial=01&pagina=1', 0, 'Histórico de um item de empenho'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    586, 586, 17, 'Consulta favorecidos finais por documento', 'https://api.portaldatransparencia.gov.br/api-de-dados/despesas/favorecidos-finais-por-documento?codigoDocumento=175004000012023NS000917&pagina=1', 'Consulta favorecidos finais por documento', 'https://api.portaldatransparencia.gov.br/api-de-dados/despesas/favorecidos-finais-por-documento?codigoDocumento=175004000012023NS000917&pagina=1', 0, 'Consulta favorecidos finais de um documento'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    587, 587, 17, 'Consulta empenhos impactados por documento/fase', 'https://api.portaldatransparencia.gov.br/api-de-dados/despesas/empenhos-impactados?codigoDocumento=175004000012023NS000917&fase=2&pagina=1', 'Consulta empenhos impactados por documento/fase', 'https://api.portaldatransparencia.gov.br/api-de-dados/despesas/empenhos-impactados?codigoDocumento=175004000012023NS000917&fase=2&pagina=1', 0, 'Empenhos impactados por documento'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    588, 588, 17, 'Consulta todos os documentos de despesas', 'https://api.portaldatransparencia.gov.br/api-de-dados/despesas/documentos?unidadeGestora=175004&gestao=00001&dataEmissao=13%2F01%2F2023&fase=2&pagina=1', 'Consulta todos os documentos de despesas', 'https://api.portaldatransparencia.gov.br/api-de-dados/despesas/documentos?unidadeGestora=175004&gestao=00001&dataEmissao=13%2F01%2F2023&fase=2&pagina=1', 0, 'Todos os documentos de despesas'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    589, 589, 17, 'Consulta um documento pelo código - Unidade gestora + gestão + número do documento', 'https://api.portaldatransparencia.gov.br/api-de-dados/despesas/documentos/175004000012023NS000917', 'Consulta um documento pelo código (Unidade Gestora + Gestão + Número do documento)', 'https://api.portaldatransparencia.gov.br/api-de-dados/despesas/documentos/175004000012023NS000917', 0, 'Consulta um documento pelo código'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    590, 590, 17, 'Consulta os documentos relacionados a um empenho, liquidação ou pagamento', 'https://api.portaldatransparencia.gov.br/api-de-dados/despesas/documentos-relacionados?codigoDocumento=175004000012023NS000917&fase=2', 'Consulta os documentos relacionados a um Empenho, Liquidação ou Pagamento', 'https://api.portaldatransparencia.gov.br/api-de-dados/despesas/documentos-relacionados?codigoDocumento=175004000012023NS000917&fase=2', 0, 'Documentos relacionados a um empenho,liquidação ou pagamento'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    591, 591, 17, 'Consulta empenhos, liquidações e pagamentos emitidos para um favorecido', 'https://api.portaldatransparencia.gov.br/api-de-dados/despesas/documentos-por-favorecido?codigoPessoa=88541354000194&fase=2&ano=2023&pagina=1', 'Consulta Empenhos, Liquidações e Pagamentos emitidos para um favorecido', 'https://api.portaldatransparencia.gov.br/api-de-dados/despesas/documentos-por-favorecido?codigoPessoa=88541354000194&fase=2&ano=2023&pagina=1', 0, 'Empenhos, liquidações e pagamentos emitidos para um favorecido'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    592, 592, 17, 'Consulta de transferências mensal das despesas do Poder Executivo Federal pela classificação funcional programática', 'https://api.portaldatransparencia.gov.br/api-de-dados/coronavirus/transferencias?mesAno=202005&pagina=1', 'Consulta de transferências mensal das despesas do Poder Executivo Federal pela classificação funcional programática', 'https://api.portaldatransparencia.gov.br/api-de-dados/coronavirus/transferencias?mesAno=202005&pagina=1', 0, 'Transferências mensal das despesas do executivo pela classificação funcional programática'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    593, 593, 17, 'Consulta de movimentação líquida mensal das despesas do Poder Executivo Federal pela classificação funcional programática', 'https://api.portaldatransparencia.gov.br/api-de-dados/coronavirus/movimento-liquido-despesa?mesAnoLancamento=202005&pagina=1', 'Consulta de movimentação líquida mensal das despesas do Poder Executivo Federal pela classificação funcional programática', 'https://api.portaldatransparencia.gov.br/api-de-dados/coronavirus/movimento-liquido-despesa?mesAnoLancamento=202005&pagina=1', 0, 'Movimentação líquida mensal das despesas do executivo pela classificação funcional programática'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    594, 594, 17, 'Consulta todos convênios do Poder Executivo Federal', 'https://api.portaldatransparencia.gov.br/api-de-dados/convenios?dataVigenciaInicial=30%2F12%2F2022&dataVigenciaFinal=30%2F06%2F2025&convenente=INST%20INTERAMERICANO%20DE%20COOPERACAO%20PARA%20A%20AGRICULTURA&pagina=1', 'Consulta todos convênios do Poder Executivo Federal', 'https://api.portaldatransparencia.gov.br/api-de-dados/convenios?dataVigenciaInicial=30%2F12%2F2022&dataVigenciaFinal=30%2F06%2F2025&convenente=INST%20INTERAMERICANO%20DE%20COOPERACAO%20PARA%20A%20AGRICULTURA&pagina=1', 0, 'Lista todos os convênios do executivo federal'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    595, 595, 17, 'Consulta os tipos de instrumentos usados nos convênios', 'https://api.portaldatransparencia.gov.br/api-de-dados/convenios/tipo-instrumento', 'Consulta os tipos de instrumentos usados nos convênios', 'https://api.portaldatransparencia.gov.br/api-de-dados/convenios/tipo-instrumento', 0, 'Tipos de instrumentos usados nos convênios do poder executivo'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    596, 596, 17, 'Consulta um convênio do Poder Executivo Federal pelo número do contrato', 'https://api.portaldatransparencia.gov.br/api-de-dados/convenios/numero?numero=677670&pagina=1', 'Consulta um convênio do Poder Executivo Federal pelo número do contrato', 'https://api.portaldatransparencia.gov.br/api-de-dados/convenios/numero?numero=677670&pagina=1', 0, 'Um convênio do executivo federal pelo número do contrato'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    597, 597, 17, 'Consulta um convênio do Poder Executivo Federal pelo número do processo', 'https://api.portaldatransparencia.gov.br/api-de-dados/convenios/numero-processo?numeroProcesso=04156.000012%2F2020-30&pagina=1', 'Consulta um convênio do Poder Executivo Federal pelo número do processo', 'https://api.portaldatransparencia.gov.br/api-de-dados/convenios/numero-processo?numeroProcesso=04156.000012%2F2020-30&pagina=1', 0, 'Um convênio do executivo federal pelo número do processo'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    598, 598, 17, 'Consulta um convênio do Poder Executivo Federal pelo número original do contrato', 'https://api.portaldatransparencia.gov.br/api-de-dados/convenios/numero-original?numeroOriginal=01%2F2020&pagina=1', 'Consulta um convênio do Poder Executivo Federal pelo número original do contrato', 'https://api.portaldatransparencia.gov.br/api-de-dados/convenios/numero-original?numeroOriginal=01%2F2020&pagina=1', 0, 'Um convênio do executivo federal pelo número original do contrato'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    599, 599, 17, 'Consulta um convênio do Poder Executivo Federal pelo ID', 'https://api.portaldatransparencia.gov.br/api-de-dados/convenios/id?id=321727454', 'Consulta um convênio do Poder Executivo Federal pelo id', 'https://api.portaldatransparencia.gov.br/api-de-dados/convenios/id?id=321727454', 0, 'Um convênio do executivo federal pelo id'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    600, 600, 17, 'Consulta os todos contratos do Poder Executivo Federal', 'https://api.portaldatransparencia.gov.br/api-de-dados/contratos?dataInicial=06%2F06%2F2023&dataFinal=06%2F06%2F2073&codigoOrgao=30000&pagina=1', 'Consulta os todos contratos do Poder Executivo Federal', 'https://api.portaldatransparencia.gov.br/api-de-dados/contratos?dataInicial=06%2F06%2F2023&dataFinal=06%2F06%2F2073&codigoOrgao=30000&pagina=1', 0, 'Lista todos os contratos do executivo federal'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    601, 601, 17, 'Consulta os termos aditivos do contrato pelo ID do contrato', 'https://api.portaldatransparencia.gov.br/api-de-dados/contratos/termo-aditivo?id=91725097', 'Consulta os termos aditivos do contrato pelo id do contrato', 'https://api.portaldatransparencia.gov.br/api-de-dados/contratos/termo-aditivo?id=91725097', 0, 'Lista os termos aditivos do contrato pelo id do contrato'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    602, 602, 17, 'Consulta um contrato do Poder Executivo Federal pelo número do processo', '', 'Consulta um contrato do Poder Executivo Federal pelo número do processo', '', 1, 'Busca um contrato do executivo federal pelo número do processo'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    603, 603, 17, 'Consulta um contrato do Poder Executivo Federal pelo número do contrato', 'https://api.portaldatransparencia.gov.br/api-de-dados/contratos/numero?numero=492023&pagina=1', 'Consulta um contrato do Poder Executivo Federal pelo número do contrato', 'https://api.portaldatransparencia.gov.br/api-de-dados/contratos/numero?numero=492023&pagina=1', 0, 'Busca um contrato do executivo federal pelo número do contrato'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    604, 604, 17, 'Consulta os itens contratados pelo ID do contrato', 'https://api.portaldatransparencia.gov.br/api-de-dados/contratos/itens-contratados?id=91725097&pagina=1', 'Consulta os itens contratados pelo id do contrato', 'https://api.portaldatransparencia.gov.br/api-de-dados/contratos/itens-contratados?id=91725097&pagina=1', 0, 'Busca itens de um contrato'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    605, 605, 17, 'Consulta um contrato do Poder Executivo Federal pelo ID', 'https://api.portaldatransparencia.gov.br/api-de-dados/contratos/id?id=91725097', 'Consulta um contrato do Poder Executivo Federal pelo id', 'https://api.portaldatransparencia.gov.br/api-de-dados/contratos/id?id=91725097', 0, 'Dados de um contrato do poder Executivo'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    606, 606, 17, 'Consulta os documentos relacionados a um contrato pelo id do contrato', 'https://api.portaldatransparencia.gov.br/api-de-dados/contratos/documentos-relacionados?id=91725097', 'Consulta os documentos relacionados a um contrato pelo id do contrato', 'https://api.portaldatransparencia.gov.br/api-de-dados/contratos/documentos-relacionados?id=91725097', 0, 'Lista documentos relacionados a um contrato '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    607, 607, 17, 'Consulta um contrato do Poder Executivo Federal pelo CPF/CNPJ do fornecedor', 'https://api.portaldatransparencia.gov.br/api-de-dados/contratos/cpf-cnpj?cpfCnpj=02341470000144&pagina=1', 'Consulta um contrato do Poder Executivo Federal pelo CPF/CNPJ do Fornecedor', 'https://api.portaldatransparencia.gov.br/api-de-dados/contratos/cpf-cnpj?cpfCnpj=02341470000144&pagina=1', 0, 'Busca um contrato por CPF ou CNPJ do fornecedor'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    608, 608, 17, 'Consulta os apostilamentos do contrato pelo ID do contrato', 'https://api.portaldatransparencia.gov.br/api-de-dados/contratos/apostilamento?id=91725097', 'Consulta os apostilamentos do contrato pelo id do contrato', 'https://api.portaldatransparencia.gov.br/api-de-dados/contratos/apostilamento?id=91725097', 0, 'Lista os apostilamentos de um contrato por id'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    609, 609, 17, 'Consulta os registros do CNEP por CNPJ ou CPF sancionado/órgão sancionador/período', 'https://api.portaldatransparencia.gov.br/api-de-dados/cnep?pagina=1', 'Consulta os registros do CNEP por CNPJ ou CPF Sancionado/Órgão Sancionador/Período', 'https://api.portaldatransparencia.gov.br/api-de-dados/cnep?pagina=1', 0, 'Lista os registros do CNEP por CNPJ/CPF  Sancionado/Órgão, Sancionador/Período'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    610, 610, 17, 'Consulta um registro do CNEP pelo ID', 'https://api.portaldatransparencia.gov.br/api-de-dados/cnep/287975', 'Consulta um registro do CNEP pelo id', 'https://api.portaldatransparencia.gov.br/api-de-dados/cnep/287975', 0, 'Busca um registro do CNEP por id'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    611, 611, 17, 'Consulta os registros do CEPIM por CNPJ ou CPF sancionado/órgão superior', 'https://api.portaldatransparencia.gov.br/api-de-dados/cepim?pagina=1', 'Consulta os registros do CEPIM por CNPJ ou CPF Sancionado/Órgão superior', 'https://api.portaldatransparencia.gov.br/api-de-dados/cepim?pagina=1', 0, 'Lista os registros do CEPIM por CNPJ/CPF Sancionado/Órgão superior'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    612, 612, 17, 'Consulta um registro do CEPIM pelo ID', 'https://api.portaldatransparencia.gov.br/api-de-dados/cepim/140715645', 'Consulta um registro do CEPIM pelo id', 'https://api.portaldatransparencia.gov.br/api-de-dados/cepim/140715645', 0, 'Busca um registro do CEPIM por id'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    613, 613, 17, 'Consulta os registros do CEIS por CNPJ ou CPF sancionado/órgão sancionador/período', 'https://api.portaldatransparencia.gov.br/api-de-dados/ceis?pagina=1', 'Consulta os registros do CEIS por CNPJ ou CPF Sancionado/Órgão Sancionador/Período', 'https://api.portaldatransparencia.gov.br/api-de-dados/ceis?pagina=1', 0, 'Lista os registros do CEIS por CNPJ/CPF Sancionado/Órgão Sancionador/Período'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    614, 614, 17, 'Consulta um registro do CEIS pelo ID', 'https://api.portaldatransparencia.gov.br/api-de-dados/ceis/285499', 'Consulta um registro do CEIS pelo id', 'https://api.portaldatransparencia.gov.br/api-de-dados/ceis/285499', 0, 'Busca  um registro do CEIS pelo ID'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    615, 615, 17, 'Consulta os registros do CEAF por CPF/órgão de lotação/período', 'https://api.portaldatransparencia.gov.br/api-de-dados/ceaf?pagina=1', 'Consulta os registros do CEAF por CPF/Órgão de Lotação/Período', 'https://api.portaldatransparencia.gov.br/api-de-dados/ceaf?pagina=1', 0, 'Lista os registros do CEAF por CPF/Órgão de Lotação/Período'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    616, 616, 17, 'Consulta um registro do CEAF pelo ID', 'https://api.portaldatransparencia.gov.br/api-de-dados/ceaf/141911', 'Consulta um registro do CEAF pelo id', 'https://api.portaldatransparencia.gov.br/api-de-dados/ceaf/141911', 0, 'Busca um registro do CEAF pelo id '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    617, 617, 17, 'Consulta os registros de Acordos de Leniência por nome ou CNPJ do sancionado/situação/período', 'https://api.portaldatransparencia.gov.br/api-de-dados/acordos-leniencia?pagina=1', 'Consulta os registros de Acordos de Leniência por Nome ou CNPJ do Sancionado/Situação/Período', 'https://api.portaldatransparencia.gov.br/api-de-dados/acordos-leniencia?pagina=1', 0, 'Lista os registros de Acordos de leniência por nome/CNPJ do Sancionado/Situação/Período'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    618, 618, 17, 'Consulta um registro de Acordo de Leniência pelo ID', 'https://api.portaldatransparencia.gov.br/api-de-dados/acordos-leniencia/1000005', 'Consulta um registro de Acordo de Leniência pelo id', 'https://api.portaldatransparencia.gov.br/api-de-dados/acordos-leniencia/1000005', 0, 'Busca um registro de Acordo de leniência por id'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    619, 619, 17, 'Consulta os registros de cartões de pagamento', 'https://api.portaldatransparencia.gov.br/api-de-dados/cartoes?mesExtratoInicio=01%2F2023&mesExtratoFim=10%2F2023&pagina=1', 'Consulta os registros de Cartões de Pagamento', 'https://api.portaldatransparencia.gov.br/api-de-dados/cartoes?mesExtratoInicio=01%2F2023&mesExtratoFim=10%2F2023&pagina=1', 0, 'Lista os registros de Cartões de Pagamento'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    620, 620, 18, 'Detalha um conjunto de dados', 'https://dados.gov.br/dados/api/publico/conjuntos-dados/{id}', 'Detalha um conjunto de dados - GET', 'https://dados.gov.br/dados/api/publico/conjuntos-dados/93b2740e-329b-4ef6-ab15-0ed59084f78d', 1, 'Detalha um conjunto de dados por id'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    621, 621, 18, 'Atualiza um conjunto de dados - Exclusivo para administradores de organização', 'https://dados.gov.br/dados/api/publico/conjuntos-dados/{id}', 'Atualiza um conjunto de dados (Exclusivo para administradores de organização) - PUT', '', 1, 'EXCLUSIVO PARA  ADMINISTRADORES - Atualiza um conjunto de dados por id '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    622, 622, 18, 'Exclui um conjunto de dados - Exclusivo para administradores de organização', 'https://dados.gov.br/dados/api/publico/conjuntos-dados/{id}', 'Exclui um conjunto de dados (Exclusivo para administradores de organização) - DELETE', '', 1, 'EXCLUSIVO PARA  ADMINISTRADORES - Exclui um conjunto de dados'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    623, 623, 18, 'Atualiza partes de um conjunto de dados - Exclusivo para administradores de organização', 'https://dados.gov.br/dados/api/publico/conjuntos-dados', 'Atualiza partes de um conjunto de dados (Exclusivo para administradores de organização) - PATCH', '', 1, 'EXCLUSIVO PARA  ADMINISTRADORES - Atualiza partes de um conjunto de dados'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    624, 624, 18, 'Lista conjuntos de dados', 'https://dados.gov.br/dados/api/publico/conjuntos-dados', 'Lista conjuntos de dados - GET', 'https://dados.gov.br/dados/api/publico/conjuntos-dados?isPrivado=false&pagina=1', 1, 'Lista os conjuntos de dados'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    625, 625, 18, 'Cria um conjunto de dados - Exclusivo para administradores de organização', 'https://dados.gov.br/dados/api/publico/conjuntos-dados', 'Cria um conjunto de dados (Exclusivo para administradores de organização) - POST', '', 1, 'EXCLUSIVO PARA ADMINISTRADORES - Cria um novo conjunto de dados'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    626, 626, 18, 'Formatos', 'https://dados.gov.br/dados/api/publico/conjuntos-dados/formatos', 'Formatos - GET', 'https://dados.gov.br/dados/api/publico/conjuntos-dados/formatos', 1, 'Lista os Formatos de dados'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    627, 627, 18, 'Resposta de solicitações - Exclusivo para administradores de organização', 'https://dados.gov.br/dados/api/solicitacoes/resposta', 'Resposta de Solicitações (Exclusivo para administradores de organização) - POST', '', 1, 'EXCLUSIVO PARA  ADMINISTRADORES - Lista Resposta de solicitações'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    628, 628, 18, 'Consulta de solicitações', 'https://dados.gov.br/dados/api/solicitacoes', 'Consulta de Solicitações - GET', 'https://dados.gov.br/dados/api/solicitacoes', 1, 'Lista Solicitções'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    629, 629, 18, 'Salvar recurso - Exclusivo para administradores de organização', 'https://dados.gov.br/dados/api/recurso/salvar', 'Salvar Recurso (Exclusivo para administradores de organização) - POST', '', 1, 'EXCLUSIVO PARA  ADMINISTRADORES - Salva um novo Recurso'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    630, 630, 18, 'Excluir recurso - Exclusivo para administradores de organização', 'https://dados.gov.br/dados/api/recurso/{id}', 'Excluir Recurso (Exclusivo para administradores de organização) - DELETE', '', 1, 'EXCLUSIVO PARA  ADMINISTRADORES - Exclui um recurso por id'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    631, 631, 18, 'Consulta de temas', 'https://dados.gov.br/dados/api/temas', 'Consulta de temas - GET', 'https://dados.gov.br/dados/api/temas', 1, 'Lista os temas dos dados'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    632, 632, 18, 'Lista organizações', 'https://dados.gov.br/dados/api/publico/organizacao', 'Lista organizações - GET', 'https://dados.gov.br/dados/api/publico/organizacao?pagina=1', 1, 'Lista as organizações'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    633, 633, 18, 'Detalha uma organização', 'https://dados.gov.br/dados/api/publico/organizacao/{id}', 'Detalha uma organização - GET', 'https://dados.gov.br/dados/api/publico/organizacao/8a92c97c-0b00-42dd-a09a-0cd79cc832a4', 1, 'Busca detalhes de uma organização por id'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    634, 634, 18, 'Listar inventários', 'https://dados.gov.br/dados/api/publico/inventarios', 'Listar inventários - GET', 'https://dados.gov.br/dados/api/publico/inventarios', 1, 'Lista dados de inventários'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    635, 635, 19, 'Agenda de reunião por data', 'https://legis.senado.leg.br/dadosabertos/agendareuniao/{data}', 'Obtém a agenda de reunião das comissões na data informada', 'https://legis.senado.leg.br/dadosabertos/agendareuniao/20240529.json', 0, 'Busca agenda de reunião por data'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    636, 636, 19, 'Agenda de reunião atual', 'https://legis.senado.leg.br/dadosabertos/agendareuniao/atual/iCal', 'Obtém a agenda dos próximos 30 dias a partir da data atual', 'https://legis.senado.leg.br/dadosabertos/agendareuniao/atual/iCal', 1, 'Busca ical da agenda de reunião atual '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    637, 637, 19, 'Agenda de Reunião por mês', 'https://legis.senado.leg.br/dadosabertos/agendareuniao/mes/{MES}', 'Obtém a agenda de reunião das comissões no mês informado', 'https://legis.senado.leg.br/dadosabertos/agendareuniao/mes/202405.json', 1, 'Busca Agenda de reunião por mês'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    639, 639, 19, 'Autores - Tipos', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposAutor', 'Lista os Tipos de Autor', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposAutor.xml', 0, 'Lista tipos de autores legislativos'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    640, 640, 19, 'Lista atual de autores', 'https://legis.senado.leg.br/dadosabertos/dados/ListaAutores', 'Obtém a lista de Senadores autores de proposições', 'https://legis.senado.leg.br/dadosabertos/dados/ListaAutores.xml', 0, 'Lista Senadores autores de Preposição'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    641, 641, 19, 'Lista bloco parlamentar', 'https://legis.senado.leg.br/dadosabertos/dados/ListaBlocoParlamentar.xml', 'Obtém a lista e a composição dos Blocos Parlamentares no Congresso Nacional', 'https://legis.senado.leg.br/dadosabertos/dados/ListaBlocoParlamentar.xml', 0, 'Lista a composição dos blocos parlamentares'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    642, 642, 19, 'Bloco parlamentar por código', 'https://legis.senado.leg.br/dadosabertos/blocoParlamentar/{codigo}', 'Obtém a composição de um bloco parlamentar', 'https://legis.senado.leg.br/dadosabertos/blocoParlamentar/346.json', 0, 'Busca a composição de um bloco parlamentar'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    643, 643, 19, 'Composição de comissão por código', 'https://legis.senado.leg.br/dadosabertos/composicao/comissao/{codigo}', 'Obtém a última composição de uma comissão do Senado', 'https://legis.senado.leg.br/dadosabertos/composicao/comissao/34.json', 0, 'Lista a última composição de uma comissãoo'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    644, 644, 19, 'Matéria distribuição autoria', 'https://legis.senado.leg.br/dadosabertos/materia/distribuicao/autoria', 'Obtém a distribuição de autoria de matérias de um senador. Necessário informar o código do parlamentar.', 'https://legis.senado.leg.br/dadosabertos/materia/distribuicao/autoria.json', 0, 'Distribuição de autoria de matérias por senador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    645, 645, 19, 'Autoria por sigla comissão ', 'https://legis.senado.leg.br/dadosabertos/materia/distribuicao/autoria/{siglaComissao}', 'Obtém a distribuição de autoria de matérias em uma comissão', 'https://legis.senado.leg.br/dadosabertos/materia/distribuicao/autoria/CCJ.json', 0, 'Distribuição de autoria de matérias por comissãoo'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    646, 646, 19, 'Relatória por sigla', 'https://legis.senado.leg.br/dadosabertos/materia/distribuicao/relatoria/{sigla}', 'Obtém a distribuição de relatoria de matérias em uma comissão', 'https://legis.senado.leg.br/dadosabertos/materia/distribuicao/relatoria/CCJ.json', 0, 'Distribuição de relatoria de matérias por comissãoo'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    647, 647, 19, 'Lista glossário', 'https://legis.senado.leg.br/dadosabertos/glossario/lista', 'Lista termos do glossário OBSERVAÇÃO: o glossário está em construção. Até o momento, ele contém apenas os termos da versão 4 dos serviços de matéria (matéria, movimentações, emendas, relatorias e votações).', 'https://legis.senado.leg.br/dadosabertos/glossario/lista.json', 0, 'Lista termos do glossário'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    648, 648, 19, 'Lista legislação', 'https://legis.senado.leg.br/dadosabertos/legislacao/lista', 'Obtém a lista de normas da base do Senado Federal ATENÇÃO: é necessário informar uma das seguintes combinações de parâmetros: "número" ou "tipo" e "número" ou "tipo" e "ano" ou "número" e "ano" O parâmetro "versão" é opcional', 'https://legis.senado.leg.br/dadosabertos/legislacao/lista.json', 0, 'Lista de normas da base do Senado Federal '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    649, 649, 19, 'Temos legislação', 'https://legis.senado.leg.br/dadosabertos/legislacao/termos', 'Obtém a lista de termos do catálogo', 'https://legis.senado.leg.br/dadosabertos/legislacao/termos.json', 0, 'Lista termos do catálogo'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    650, 650, 19, 'Tipos de norma legislação', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposDocumento', 'Obtém a lista de Tipos de Norma', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposDocumento.xml', 0, 'Lista os tipos de normas legislativas'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    651, 651, 19, 'Tipos de publicação legislação', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposAtoPublicacao.xml', 'Obtém a lista de Tipos de Publicação', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposAtoPublicacao.xml', 0, 'Lista os tipos de publicações legislativas'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    652, 652, 19, 'Tipos vide legislação', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposDeclaracao.xml', 'Obtém a lista de tipos de declaração', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposDeclaracao.xml', 0, 'Lista os tipos de declarações '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    653, 653, 19, 'Legislação por código', 'https://legis.senado.leg.br/dadosabertos/legislacao/{codigo}', 'Obtém detalhes de uma norma através do código', 'https://legis.senado.leg.br/dadosabertos/legislacao/397127.json', 0, 'Detalha uma norma pelo código'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    654, 654, 19, 'Detalhe tipos declaração legislação', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposDeclaracaoDetalhe.xml', 'Obtém a lista de detalhes de declaração', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposDeclaracaoDetalhe.xml', 0, 'Lista os tipos de detalhes de declarações legislativas'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    655, 655, 19, 'Legislação por tipo, número e ano ou data de assinatura sequencial', 'https://legis.senado.leg.br/dadosabertos/legislacao/{tipo}{numdata}{anoseq}', 'Obtém detalhes do documento através do tipo/número/ano ou através da data de assinatura/sequencial', 'https://legis.senado.leg.br/dadosabertos/legislacao/RSF/57/1985.json', 0, 'Detalhes do documento através do tipo/número/ano'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    656, 656, 19, 'Comissão tipos de cargos', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposCargo.xml', 'Obtém a lista de tipos de cargo', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposCargo.xmll', 0, 'Lista tipos de cargos'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    657, 657, 19, 'Lista colegiado comissão', 'https://legis.senado.leg.br/dadosabertos/dados/ListaColegiados.xml', 'Obtém a lista geral de colegiados EM ATIVIDADE no Congresso Nacional', 'https://legis.senado.leg.br/dadosabertos/dados/ListaColegiados.xml', 0, 'Lista colegiado em atividade'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    658, 658, 19, 'Lista tipos colegiados comissão', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposColegiado.xmll', 'Obtém a lista de tipos de colegiado', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposColegiado.xml', 0, 'Lista tipos de colegiados'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    659, 659, 19, 'Lista tipo comissão', 'https://legis.senado.leg.br/dadosabertos/comissao/lista/{tipo}', 'Obtém a lista de comissões do Senado Federal por tipo', 'https://legis.senado.leg.br/dadosabertos/comissao/lista/permanente.json', 0, 'Lista comissões por tipo'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    660, 660, 19, 'Documentos por comissão', 'https://legis.senado.leg.br/dadosabertos/comissao/{comissao}/documentos', 'Obtém os documentos de uma comissão. Se não informar o período, serão retornados os documentos apresentados nos últimos 30 dias;', 'https://legis.senado.leg.br/dadosabertos/comissao/cpipandemia/documentos.json', 0, 'Busca documentos de uma comissãoo'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    661, 661, 19, 'Requerimentos por comissão CPI', 'https://legis.senado.leg.br/dadosabertos/comissao/cpi/{comissao}/requerimentos', 'Lista Requerimentos de CPI. Exclusivo para CPIs.', 'https://legis.senado.leg.br/dadosabertos/comissao/cpi/CPIBETS/requerimentos?pagina=0&tamanho=20', 0, 'Lista requerimientos de uma CPI'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    662, 662, 19, 'Lista de comissão', 'https://legis.senado.leg.br/dadosabertos/materia/lista/comissao', 'Obtém a lista de matérias localizadas em comissões. É necessário informar ao menos um dos parâmetros - siglaComissão ou codMateria.', 'https://legis.senado.leg.br/dadosabertos/materia/lista/comissao.json', 0, 'Lista matérias em comissões'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    663, 663, 19, 'Lista de tramitação', 'https://legis.senado.leg.br/dadosabertos/materia/lista/tramitacao', 'Obtém o total das matérias em tramitação no Senado Federal agrupadas por tipo e comissão', 'https://legis.senado.leg.br/dadosabertos/materia/lista/tramitacao.json?sigla=PLS', 0, 'Listas matérias em tramitação'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    665, 665, 19, 'Lista de tramitação por tipo', 'https://legis.senado.leg.br/dadosabertos/materia/lista/tramitacao/{tipo}', 'Obtém a lista de matérias em tramitação por tipo de proposição', 'https://legis.senado.leg.br/dadosabertos/materia/lista/tramitacao.json', 0, 'Lista matérias em tramitação por tipo de preposição'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    667, 667, 19, 'Lista prazo por código de prazo', 'https://legis.senado.leg.br/dadosabertos/materia/lista/prazo/{codPrazo}', 'Obtém a lista de matérias cumprindo prazo em plenário ou comissões. Se quiser que retorne todos os tipos de prazo, informe "0" (zero) para o código do prazo.', 'https://legis.senado.leg.br/dadosabertos/materia/lista/prazo/53708364.json', 0, 'Lista Matérias por código de prazo'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    668, 668, 19, 'Senador partidos', 'https://legis.senado.leg.br/dadosabertos/dados/ListaPartidos.xml', 'Lista os Partidos Políticos', 'https://legis.senado.leg.br/dadosabertos/dados/ListaPartidos.xml', 0, 'Lista partidos políticos'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    669, 669, 19, 'Senador por código', 'https://legis.senado.leg.br/dadosabertos/senador/{codigo}', 'Obtém os detalhes do senador', 'https://legis.senado.leg.br/dadosabertos/senador/5322.json', 0, 'Busca detalhes de um senador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    670, 670, 19, 'Lista senadores afastados', 'https://legis.senado.leg.br/dadosabertos/dados/AfastamentoAtual.xml', 'Obtém a lista dos Senadores atualmente afastados', 'https://legis.senado.leg.br/dadosabertos/dados/AfastamentoAtual.xml', 0, 'Lista de senadores atualmente afastados'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    671, 671, 19, 'Senadores atuais', 'https://legis.senado.leg.br/dadosabertos/senador/lista/atual', 'Obtém a lista de Senadores em Exercício', 'https://legis.senado.leg.br/dadosabertos/senador/lista/atual.json', 0, 'Lista Senadores em exercício'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    672, 672, 19, 'Tipos uso palavra', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposUsoPalavra.xml', 'Lista os tipos de Uso da Palavra', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposUsoPalavra.xml', 0, 'Lista os tipos de uso da palavra'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    673, 673, 19, 'Apartes senador por código', 'https://legis.senado.leg.br/dadosabertos/senador/{codigo}/apartes.json', 'Obtém a relação de apartes do Senador', 'https://legis.senado.leg.br/dadosabertos/senador/4763/apartes.json', 0, 'Busca relação de apartes de um senador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    674, 674, 19, 'Autorias por senador', 'https://legis.senado.leg.br/dadosabertos/senador/{codigo}/autorias', 'Obtém as matérias de autoria de um Senador', 'https://legis.senado.leg.br/dadosabertos/senador/4981/autorias.json', 0, 'Busca autorias de um senador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    675, 675, 19, 'Cargos por código senador', 'https://legis.senado.leg.br/dadosabertos/senador/{codigo}/cargos', 'Obtém a relação de cargos que o senador já ocupou', 'https://legis.senado.leg.br/dadosabertos/senador/5322/cargos.json?indAtivos=s', 0, 'Busca relação de cargos de um senador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    676, 676, 19, 'Comissões por código', 'https://legis.senado.leg.br/dadosabertos/senador/{comissao}/comissoes.json', 'Obtém as comissões de que um Senador é membro', 'https://legis.senado.leg.br/dadosabertos/senador/5322/comissoes.json', 0, 'Busca comissões que integra um senador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    677, 677, 19, 'Discursos por código', 'https://legis.senado.leg.br/dadosabertos/senador/{codigo}/discursos', 'Obtém a relação de discursos do Senador. Se não informar o período, são retornados os discursos dos últimos 30 dias.', 'https://legis.senado.leg.br/dadosabertos/senador/5529/discursos.json', 0, 'Busca discursos de um senador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    678, 678, 19, 'Filiações por código', 'https://legis.senado.leg.br/dadosabertos/senador/{codigo}/filiacoes.json', 'Obtém as filiações partidárias que o Senador já teve', 'https://legis.senado.leg.br/dadosabertos/senador/5322/filiacoes.json', 0, 'Lista histórico de filiações de um senador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    679, 679, 19, 'Histórico por código', 'https://legis.senado.leg.br/dadosabertos/senador/{codigo}/historico.json', 'Obtém todos os detalhes de um parlamentar no(s) mandato(s) como Senador (mandato atual e anteriores, se houver)', 'https://legis.senado.leg.br/dadosabertos/senador/5322/historico.json', 0, 'Busca histórico de mandatos no senado de um senador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    680, 680, 19, 'Histórico acadêmico por código', 'https://legis.senado.leg.br/dadosabertos/senador/{codigo}/historicoAcademico.json', 'Obtém o histórico acadêmico de um Senador', 'https://legis.senado.leg.br/dadosabertos/senador/5322/historicoAcademico.json', 0, 'Busca histórico acadêmico de um senador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    681, 681, 19, 'Liçencas por código', 'https://legis.senado.leg.br/dadosabertos/senador/{codigo}/licencas.json', 'Obtém as licenças de um Senador', 'https://legis.senado.leg.br/dadosabertos/senador/3830/licencas.json', 1, 'Busca licenças de um senador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    682, 682, 19, 'Lideranças por código', 'https://legis.senado.leg.br/dadosabertos/senador/{codigo}/liderancas.json', 'Obtém os cargos de liderança de um Senador', 'https://legis.senado.leg.br/dadosabertos/senador/4981/liderancas.json', 0, 'Lista cargos de liderança politica de um senador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    683, 683, 19, 'Mandatos por código', 'https://legis.senado.leg.br/dadosabertos/senador/{codigo}/mandatos', 'Obtém os mandatos que o Senador já teve', 'https://legis.senado.leg.br/dadosabertos/senador/5322/mandatos.json', 0, 'Lista os mandados de um senador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    684, 684, 19, 'Profissão por código', 'https://legis.senado.leg.br/dadosabertos/senador/{codigo}/profissao.json', 'Obtém a(s) profissão(ões) de um Senador', 'https://legis.senado.leg.br/dadosabertos/senador/4981/profissao.json', 0, 'Busca profissões de um senador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    685, 685, 19, 'Relatorias por código', 'https://legis.senado.leg.br/dadosabertos/senador/{codigo}/relatorias.json', 'Obtém as matérias de relatoria de um Senador', 'https://legis.senado.leg.br/dadosabertos/senador/4981/relatorias.json?comissao=cae', 0, 'Lista as matérias de relatoria de um senador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    686, 686, 19, 'Votações por código', 'https://legis.senado.leg.br/dadosabertos/senador/{codigo}/votacoes.json', 'Obtém as votações de um Senador', 'https://legis.senado.leg.br/dadosabertos/senador/4981/votacoes.json?sigla=pls&tramitando=s', 0, 'Lista as votações de um senador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    687, 687, 19, 'Lista legistatura por legistatura', 'http/legis.senado.leg.br/dadosabertos/senador/lista/legislatura/{legislatura}.json', 'Obtém a lista de Senadores de uma Legislatura', 'https://legis.senado.leg.br/dadosabertos/senador/lista/legislatura/54.json?uf=to', 0, 'Lista os senadores de uma legislatura'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    688, 688, 19, 'Lista legistatura por período', 'https://legis.senado.leg.br/dadosabertos/senador/lista/legislatura/{legislaturaInicio}/{legislaturaFim}.json', 'Obtém a lista de Senadores de um intervalo de Legislaturas', 'https://legis.senado.leg.br/dadosabertos/senador/lista/legislatura/53/54.json?uf=to', 0, 'Lista senadores de uma legislatura por período'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    689, 689, 19, 'Assuntos matéria', 'https://legis.senado.leg.br/dadosabertos/dados/ListaAssuntos.xml', 'Lista assuntos de matéria', 'https://legis.senado.leg.br/dadosabertos/dados/ListaAssuntos.xml', 0, 'Lista os assuntos de matéria'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    690, 690, 19, 'Atualizadas matéria', 'https://legis.senado.leg.br/dadosabertos/materia/atualizadas', 'Lista as matérias que foram incluídas ou sofreram atualização nos últimos dias (o default é 5)', 'https://legis.senado.leg.br/dadosabertos/materia/atualizadas.json?numdias=1', 0, 'Lista matérias que foram atualizadas'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    691, 691, 19, 'Classes matéria', 'https://legis.senado.leg.br/dadosabertos/dados/ListaClassificacoesMateria.xml', 'Lista as classificações de matérias', 'https://legis.senado.leg.br/dadosabertos/dados/ListaClassificacoesMateria.xml', 0, 'Lista as classificações das matérias'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    692, 692, 19, 'Decisões', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposDecisao.xml', 'Lista os Tipos de Decisão', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposDecisao.xml', 0, 'Lista os tipos de decisões'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    693, 693, 19, 'Destinos', 'https://legis.senado.leg.br/dadosabertos/dados/ListaDestinos.xml', 'Lista os Destinos possíveis', 'https://legis.senado.leg.br/dadosabertos/dados/ListaDestinos.xml', 0, 'Lista os tipos de destinos possíveis'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    694, 694, 19, 'Legislatura atual', 'https://legis.senado.leg.br/dadosabertos/materia/legislaturaatual.json?sigla=MPV', 'Lista as matérias que estão em tramitação ou que tramitaram na Legislatura atual. Atenção: para pesquisar por período da última atualização, utilize o serviço de matérias atualizadas.', 'https://legis.senado.leg.br/dadosabertos/materia/legislaturaatual.json?sigla=MPV', 0, 'Lista matérias em tramitação na legislatura atual'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    695, 695, 19, 'Locais', 'https://legis.senado.leg.br/dadosabertos/dados/ListaLocais.xml', 'Lista entes jurídicos possíveis de localização de uma matéria', 'https://legis.senado.leg.br/dadosabertos/dados/ListaLocais.xml', 0, 'Lista entes jurídicos de localização possíveis de uma matéria'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    696, 696, 19, 'Situações', 'https://legis.senado.leg.br/dadosabertos/dados/ListaSituacoes.xml', 'Lista as situações possíveis de matérias', 'https://legis.senado.leg.br/dadosabertos/dados/ListaSituacoes.xml', 0, 'Lista situações possíveis das matérias'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    697, 697, 19, 'Subtipos', 'https://legis.senado.leg.br/dadosabertos/dados/ListaSiglas.xml', 'Lista subtipos e siglas de projetos e matérias', 'https://legis.senado.leg.br/dadosabertos/dados/ListaSiglas.xml', 0, 'Lista os subtipos de projetos e matérias'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    698, 698, 19, 'Tipos comparecimento', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposComparecimento.xml', 'Lista os tipos de comparecimento em votação', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposComparecimento.xml', 0, 'Tipos de comparecimento em votações'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    699, 699, 19, 'Tipos emenda', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposEmenda.xml', 'Lista os tipos de Emenda', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposEmenda.xml', 0, 'Tipos de emendas'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    700, 700, 19, 'Tipos natureza', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposNatureza.xml', 'Lista os tipos de natureza das matérias', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposNatureza.xml', 0, 'Tipos de natureza das matérias'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    701, 701, 19, 'Tipos norma', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposDocumento.xml', 'Lista tipos de Normas Jurídicas', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposDocumento.xml', 0, 'Tipos de normas jurídicas'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    702, 702, 19, 'Tipos prazo', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposPrazo.xml', 'Lista tipos de prazos aos quais projetos e matérias podem estar sujeito', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposPrazo.xml', 0, 'Tipos de Prazos dos projetos/matérias'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    703, 703, 19, 'Tipos turno apresentação', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposTurnoApresentacao.xml', 'Lista os tipos de turno de apresentação de emenda no processo', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposTurnoApresentacao.xml', 0, 'Tipos de turns de apresentação de emendas'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    704, 704, 19, 'Tipos atualizações', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposAtualizacao.xml', 'Obtém os tipos de atualização em matéria que podem ter ocorrido', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposAtualizacao.xml', 0, 'Tipos de atualizações de matérias'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    705, 705, 19, 'Tramitando', 'https://legis.senado.leg.br/dadosabertos/materia/tramitando', 'Lista as matérias que estão em tramitação (não tem informações de comissões)', 'https://legis.senado.leg.br/dadosabertos/materia/tramitando.json?data=20190701', 0, 'Lista matérias em tramitação'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    706, 706, 19, 'Materia por código', 'https://legis.senado.leg.br/dadosabertos/materia/{codigo}', 'Obtém detalhes de uma matéria', 'https://legis.senado.leg.br/dadosabertos/materia/110428.json', 0, 'Busca matéria por código'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    707, 707, 19, 'Atualizações por código', 'https://legis.senado.leg.br/dadosabertos/materia/atualizacoes/{codigo}', 'Obtém as atualizações mais recentes em uma matéria', 'https://legis.senado.leg.br/dadosabertos/materia/atualizacoes/140534.json?numdias=10', 0, 'Busca atualizações de uma matéria'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    708, 708, 19, 'Autoria por código', 'https://legis.senado.leg.br/dadosabertos/materia/autoria/{codigo}', 'Obtém a autoria de uma matéria', 'https://legis.senado.leg.br/dadosabertos/materia/autoria/131506.json', 0, 'Busca autoria de uma matéria'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    709, 709, 19, 'Emenda por código', 'https://legis.senado.leg.br/dadosabertos/materia/emenda/{codigo}', 'Obtém detalhes da emenda', 'https://legis.senado.leg.br/dadosabertos/materia/emenda/7950411.json', 0, 'Busca detalhes de uma emenda'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    710, 710, 19, 'Emendas por código', 'https://legis.senado.leg.br/dadosabertos/materia/emendas/{codigo}', 'Obtém as emendas de uma matéria', 'https://legis.senado.leg.br/dadosabertos/materia/emendas/135064.json', 0, 'Busca emendas de uma matéria'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    711, 711, 19, 'Movimentações por código', 'https://legis.senado.leg.br/dadosabertos/materia/movimentacoes/{codigo}', 'Obtém a movimentação da matéria, incluindo tramitação, prazos, despachos, situação', 'https://legis.senado.leg.br/dadosabertos/materia/movimentacoes/95997.json?dataref=20120210', 0, 'Busca movimentações de uma matéria'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    712, 712, 19, 'Ordia por código', 'https://legis.senado.leg.br/dadosabertos/materia/ordia/{codigo}', 'Obtém as Sessões que a matéria foi incluída em Ordem do Dia', 'https://legis.senado.leg.br/dadosabertos/materia/ordia/116682.json', 0, 'Lista as sessões que uma matéria foi incluída em Ordem do Dia'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    713, 713, 19, 'Relatorias por código matéria', 'https://legis.senado.leg.br/dadosabertos/materia/relatorias/{codigo}', 'Obtém as relatorias de uma matéria', 'https://legis.senado.leg.br/dadosabertos/materia/relatorias/131506.json', 0, 'Busca relatorias de uma matéria'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    714, 714, 19, 'Situação atual por código', 'https://legis.senado.leg.br/dadosabertos/materia/situacaoatual/{codigo}', 'Traz a situação atual e o local da matéria especificada', 'https://legis.senado.leg.br/dadosabertos/materia/situacaoatual/80406.json', 0, 'Busca situação atual de uma matéria'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    715, 715, 19, 'Textos por código', 'https://legis.senado.leg.br/dadosabertos/materia/textos/{codigo}', 'Obtém os textos integrais e a legislação citada de uma matéria', 'https://legis.senado.leg.br/dadosabertos/materia/textos/110428.json', 0, 'Busca textos de uma matéria'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    716, 716, 19, 'Conversão por código', 'https://legis.senado.leg.br/dadosabertos/dados/ListaConversaoTiposPrazo.xml', 'Lista conversão dos tipos de prazos, do sistema antigo (versão 4 do serviço tiposPrazo) para o sistema novo (versão 6)', 'https://legis.senado.leg.br/dadosabertos/dados/ListaConversaoTiposPrazo.xml', 0, 'Lista conversão dos tipos de prazos '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    717, 717, 19, 'Votações por código', 'https://legis.senado.leg.br/dadosabertos/materia/votacoes/137178.json', 'Obtém as votações de uma matéria', 'https://legis.senado.leg.br/dadosabertos/materia/votacoes/137178.json', 0, 'Lista votações de uma matéria'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    718, 718, 19, 'Situação atual de tramitação por data', 'https://legis.senado.leg.br/dadosabertos/materia/situacaoatual/tramitacao/{codigo}', 'Traz a situação atual e o local das matérias que tramitaram na data especificada', 'https://legis.senado.leg.br/dadosabertos/materia/situacaoatual/tramitacao/20140410.json', 0, 'Situação atual de matérias que tramitaram em uma data'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    719, 719, 19, 'Materia por sigla, número e ano', 'https://legis.senado.leg.br/dadosabertos/materia/{sigla}/{numero}/{ano}', 'Obtém os detalhes da última matéria no Senado que corresponde às informações de sigla, número e ano informadas. A partir de fevereiro 2019, os requerimentos de comissões permanentes passam a ser numerados com a mesma sistemática dos requerimentos das comissões temporárias, seguindo, portanto, o padrão: REQ 99/2019 - SIGLA_COMISSÃO. Dessa forma, para se buscar um requerimento de determinada comissão (com ano >= 2019), deve-se informar .../matéria/req/número do requerimento/ano do requerimento?comissão=sigla da comissão', 'https://legis.senado.leg.br/dadosabertos/materia/pls/1/2013.json', 0, 'Busca última materia por sigla, numero e ano'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    720, 720, 19, 'Lista orçamento', 'https://legis.senado.leg.br/dadosabertos/dados/ListaLoteEmendas.xml', 'Obtém a lista dos lotes de emendas orçamentárias', 'https://legis.senado.leg.br/dadosabertos/dados/ListaLoteEmendas.xml', 0, 'Lista lotes de emendas orcamentárias'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    721, 721, 19, 'Lista pesquisa', 'https://legis.senado.leg.br/dadosabertos/materia/pesquisa/lista.json', 'Pesquisa básica de matérias (busca as matérias que satisfazem aos parâmetros informados). Atenção: 1) Se não informar o ano (da matéria ou da norma) nem o período de apresentação, será considerado o ano atual. 2) Para a pesquisa por período de apresentação, o limite é de 1 ano.', 'https://legis.senado.leg.br/dadosabertos/materia/pesquisa/lista.json', 0, 'Lista matérias de acordo com os parâmetros preenchidos'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    722, 722, 19, 'Tipos sessão plenário', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposSessao.xml', 'Lista os tipos de Sessão Plenária', 'https://legis.senado.leg.br/dadosabertos/dados/ListaTiposSessao.xml', 0, 'Lista tipos de sessões plenária'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    723, 723, 19, 'Encontro plenário por código', 'https://legis.senado.leg.br/dadosabertos/plenario/encontro/{codigo}', 'Dados de um encontro. Recupera os dados básicos do Encontro Legislativo bem como os Oradores, Pauta e demais registros quando houver.', '', 1, 'Dados de um encontro plenário'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    724, 724, 19, 'Legislatura por data', 'https://legis.senado.leg.br/dadosabertos/plenario/legislatura/{data}', 'Obtém a legislatura da data informada e suas sessões legislativas', 'https://legis.senado.leg.br/dadosabertos/plenario/legislatura/20130313.json', 0, 'Dados da legislatura e sessões de uma data'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    725, 725, 19, 'Lista legislaturas', 'https://legis.senado.leg.br/dadosabertos/dados/ListaLegislatura.xml', 'Obtém a lista de todas as legislaturas e suas sessões legislativas', 'https://legis.senado.leg.br/dadosabertos/dados/ListaLegislatura.xml', 0, 'Lista todas as legislaturas e suas sessões'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    726, 726, 19, 'Lista lideranças', 'https://legis.senado.leg.br/dadosabertos/dados/Liderancas.xml', 'Obtém a lista das Lideranças no Senado Federal', 'https://legis.senado.leg.br/dadosabertos/dados/Liderancas.xml', 0, 'Lista lideranças no senado'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    727, 727, 19, 'Resultado por data', 'https://legis.senado.leg.br/dadosabertos/plenario/resultado/{data}', 'Obtém o resultado da sessão plenária', 'https://legis.senado.leg.br/dadosabertos/plenario/resultado/20130313.json', 0, 'Resultado de uma sessão plenária'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    728, 728, 19, 'Plenário agenda atual', 'https://legis.senado.leg.br/dadosabertos/plenario/agenda/atual/iCall', 'Obtém a agenda de Plenário 30 dias a partir da data atual', 'https://legis.senado.leg.br/dadosabertos/plenario/agenda/atual/iCal', 0, 'Agenda de plenário 30 dias da data atual'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    729, 729, 19, 'Agenda do plenario por data', 'https://legis.senado.leg.br/dadosabertos/plenario/agenda/dia/{data}', '', 'https://legis.senado.leg.br/dadosabertos/plenario/agenda/dia/20130313.json', 0, 'Busca agenda do plenario por data'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    730, 730, 19, 'Agenda mensal plenário por data', 'https://legis.senado.leg.br/dadosabertos/plenario/agenda/mes/{data}', 'Obtém a agenda do mês a partir da data informada', 'https://legis.senado.leg.br/dadosabertos/plenario/agenda/mes/20240201.json', 0, 'Busca agenda do mês por data'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    731, 731, 19, 'Plenário encontro por código pauta', 'https://legis.senado.leg.br/dadosabertos/plenario/encontro/{codgio}/pauta', 'Itens de Pauta do Encontro Legislativo', 'https://legis.senado.leg.br/dadosabertos/plenario/encontro/319936/pauta.json', 0, 'Lista itens de paula de um encontro'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    732, 732, 19, 'Plenário encontro por código resultado', 'https://legis.senado.leg.br/dadosabertos/plenario/encontro/{codigo}/resultado', 'Resultado de um Encontro Legislativo', 'https://legis.senado.leg.br/dadosabertos/plenario/encontro/319359/resultado.json', 0, 'Resultados de um encontro'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    733, 733, 19, 'Plenário encontro por código resumo', 'https://legis.senado.leg.br/dadosabertos/plenario/encontro/{codgio}/resumo.json', 'Resultado de um Encontro Legislativo', 'https://legis.senado.leg.br/dadosabertos/plenario/encontro/319359/resumo.json', 0, 'Resumo de um encontro'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    734, 734, 19, 'Legislatura por data da sessão', 'https://legis.senado.leg.br/dadosabertos/plenario/legislatura/sessaoLegislativa/{data}.json', 'Obtém a legislatura da data da sessão legislativa informada', 'https://legis.senado.leg.br/dadosabertos/plenario/legislatura/sessaoLegislativa/20130313.json', 0, 'Busca legislatura por data da sessão'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    735, 735, 19, 'Votação por data da sessão', 'https://legis.senado.leg.br/dadosabertos/plenario/lista/votacao/{data}.json', 'Obtém a lista das votações da(s) sessão(ões) que ocorreram na data informada', 'https://legis.senado.leg.br/dadosabertos/plenario/lista/votacao/20130516.json', 0, 'Lista das votações por data da sessão'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    736, 736, 19, 'Resultado por mês pela data informada', 'https://legis.senado.leg.br/dadosabertos/plenario/resultado/mes/{data}.json', 'Obtém o resultado do mês a partir da data informada', 'https://legis.senado.leg.br/dadosabertos/plenario/resultado/mes/20191010.json', 0, 'Busca resultado do mês '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    737, 737, 19, 'Votação nominal por ano', 'https://legis.senado.leg.br/dadosabertos/dados/ListaVotacoes{ano}.xml', 'Obtém a lista das votações nominais por ano. É obrigatório a informação do ano', 'https://legis.senado.leg.br/dadosabertos/dados/ListaVotacoes2016.xml', 0, 'Lista votações nominais de um ano'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    738, 738, 19, 'Orientação bancada da data sessão', 'https://legis.senado.leg.br/dadosabertos/plenario/votacao/orientacaoBancada/{dataSessao}.json', 'Obtém a Orientação de Bancada para votação de matérias da(s) sessão(ões) que ocorreram na data informada', 'https://legis.senado.leg.br/dadosabertos/plenario/votacao/orientacaoBancada/20231212.jsonn', 0, 'Orientação de bancada para votação por data'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    739, 739, 19, 'Discursos por período', 'https://legis.senado.leg.br/dadosabertos/plenario/lista/discursos/{dataInicio}/{dataFim}.json', 'Obtém a lista de discursos da(s) sessão(ões) que ocorreram dentro do período informado', 'https://legis.senado.leg.br/dadosabertos/plenario/lista/discursos/20130301/20130331.json', 0, 'Discursos das sessões por período'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    740, 740, 19, 'Votação por período', 'https://legis.senado.leg.br/dadosabertos/plenario/lista/votacao/{dataInicio}/{dataFim}.json', 'Obtém a lista das votações da(s) sessão(ões) que ocorreram no período informado. O período não pode ser superior a dois meses.', 'https://legis.senado.leg.br/dadosabertos/plenario/lista/votacao/20160401/20160430.json', 0, 'Votações das sessões por período'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    741, 741, 19, 'Orientação bancada por período', 'https://legis.senado.leg.br/dadosabertos/plenario/votacao/orientacaoBancada/{dataInicio}/{dataFim}.json', 'Obtém a Orientação de Bancada para votação de matérias da(s) sessão(ões) que ocorreram no período informado', 'https://legis.senado.leg.br/dadosabertos/plenario/votacao/orientacaoBancada/20231212/20231220.json', 0, 'Orientação de bancada para votação por período'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    742, 742, 19, 'Reunião comissão por código de reunião', 'https://legis.senado.leg.br/dadosabertos/reuniaocomissao/{codigoReuniao}', 'Obtém todos os dados da reunião de comissão, incluindo detalhes dos itens de pauta (autoria, relatoria, resultado, etc.)', 'https://legis.senado.leg.br/dadosabertos/reuniaocomissao/1500.json', 0, 'Lista reuniões de comissãoo incluindo detalhes dos itens'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    743, 743, 19, 'Notas reunião comissão por código de reunião', 'https://legis.senado.leg.br/dadosabertos/reuniaocomissao/notas/{codigoReuniao}', 'Obtém dados sobre as notas taquigráficas da reunião', 'https://legis.senado.leg.br/dadosabertos/reuniaocomissao/notas/1500.json', 0, 'Dados de notas taquigráficas de uma reunião'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    744, 744, 19, 'Item pauta reunião comissão ', 'https://legis.senado.leg.br/dadosabertos/reuniaocomissao/pauta/item/{codigo}', 'Obtém os dados de um item de pauta da reunião', 'https://legis.senado.leg.br/dadosabertos/reuniaocomissao/pauta/item/9369.json', 0, 'Detalhes de um item de pauta de uma reunião'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    745, 745, 19, 'Retorna link para última reunião de uma comissão', 'https://legis.senado.leg.br/dadosabertos/reuniaocomissao/{sigla}/documento/{tipo}', 'Obtém o link para um documento da última reunião de uma comissão', 'https://legis.senado.leg.br/dadosabertos/reuniaocomissao/CAE/documento/resultado.json', 0, 'Link documento da última reunião de uma comissãoo'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    746, 746, 19, 'Notas taquigráficas de uma reunião', 'https://legis.senado.leg.br/dadosabertos/taquigrafia/notas/reuniao/{idReuniao}', 'Notas Taquigráficas de Reuniões de Comissão e/ou outros Colegiados. Recupera os dados estruturados das notas taquigráficas da Reunião.', 'https://legis.senado.leg.br/dadosabertos/taquigrafia/notas/reuniao/11516', 0, 'Lista notas taquigráficas de uma reunião'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    747, 747, 19, 'Notas de sessão taquigrafia por sessão', 'https://legis.senado.leg.br/dadosabertos/taquigrafia/notas/sessao/{idSessao}', 'Notas Taquigráficas de Sessões Plenárias. Recupera os dados estruturados das notas taquigráficas da Sessão.', 'https://legis.senado.leg.br/dadosabertos/taquigrafia/notas/sessao/25496', 0, 'Lista notas taquigráficas de uma  sessão plenária'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    748, 748, 19, 'Videos de uma reunião ', 'https://legis.senado.leg.br/dadosabertos/taquigrafia/videos/reuniao/{idReuniao}', 'Unidades Descritivas (vídeos) de Reuniões de Comissão e/ou outros Colegiados. Recupera as falas dos parlamentares ao longo da Reunião, associadas aos trechos de vídeos que ocorreram.', 'https://legis.senado.leg.br/dadosabertos/taquigrafia/videos/reuniao/11516.json', 0, 'Dados de uma reunião, recuperando falas'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    749, 749, 19, 'Videos de uma sessão por sessão', 'https://legis.senado.leg.br/dadosabertos/taquigrafia/videos/sessao/{idSessao}', 'Unidades Descritivas (vídeos) de Sessões Plenárias. Recupera as falas dos parlamentares ao longo da Sessão, associadas aos trechos de vídeos que ocorreram.', 'https://legis.senado.leg.br/dadosabertos/taquigrafia/videos/sessao/25496.json', 0, 'Dados de votações de comissãoo por sessão, recuperando falas'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    750, 750, 19, 'Votações em comissão por comissão', 'https://legis.senado.leg.br/dadosabertos/votacaoComissao/comissao/{siglaComissao}', 'Obtém as votações em comissões por comissão', 'https://legis.senado.leg.br/dadosabertos/votacaoComissao/comissao/CCJ.json?dataInicio=20170320&dataFim=20170331', 0, 'Dados de votações de comissãoo por comissãoo'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    751, 751, 19, 'Votações em comissão por parlamentar', 'https://legis.senado.leg.br/dadosabertos/votacaoComissao/parlamentar/{codigo}', 'Obtém as votações em comissões por parlamentar', 'https://legis.senado.leg.br/dadosabertos/votacaoComissao/parlamentar/4988.json?comissao=CRE', 0, 'Dados de votações de comissã por parlamentar'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    752, 752, 19, 'Votações em comissão por sigla, número e ano', 'https://legis.senado.leg.br/dadosabertos/votacaoComissao/materia/{sigla}/{numero}/{ano}.json', 'Obtém as votações em comissões por identificação da matéria', 'https://legis.senado.leg.br/dadosabertos/votacaoComissao/materia/PLS/171/2012.json', 0, 'Dados de votações de comissãoo por sigla, número e ano'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    759, 759, 20, 'Estações por código
', 'https://servicodados.ibge.gov.br/api/v1/bdg/estacoes/{estacao}', 'Obtém uma ou mais estações geodésicas através dos códigos de identificação informados.', 'https://servicodados.ibge.gov.br/api/v1/bdg/estacoes/91500%7C4X', 0, 'Dados Estação geodésica por código'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    760, 760, 20, 'Estações por município
', 'https://servicodados.ibge.gov.br/api/v1/bdg/municipio/{geocodigo}/estacoes', 'Obtém as estações geodésicas localizadas em um determinado município do Brasil a partir do respectivo identificador.', 'https://servicodados.ibge.gov.br/api/v1/bdg/municipio/3300100/estacoes', 0, 'Dados Estação geodésica por município'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    761, 761, 20, 'Estações por unidade da federação', 'https://servicodados.ibge.gov.br/api/v1/bdg/estado/{sigla}/estacoes', 'Obtém as estações geodésicas localizadas em uma determinada Unidade da Federação (estado) do Brasil a partir da respectiva sigla.', 'https://servicodados.ibge.gov.br/api/v1/bdg/estado/RJ/estacoes', 0, 'Dados Estação geodésica por Estado '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    762, 762, 20, 'Estações por proximidade
', 'https://servicodados.ibge.gov.br/api/v1/bdg/proximidade/{lat}/{lon}/{km}/estacoes', 'Obtém as estações geodésicas localizadas próximas a coordenada informada, considerando uma distância em Km.', 'https://servicodados.ibge.gov.br/api/v1/bdg/proximidade/-19.938082/-43.906296/100/estacoes', 0, 'Dados Estação geodésica próximas de uma coordenada geográfica'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    763, 763, 20, 'Estações por enquadramento
', 'https://servicodados.ibge.gov.br/api/v1/bdg/enquadramento/{lonW}/{latS}/{lonE}/{latN}/estacoes', 'Obtém as estações geodésicas localizadas no retângulo envolvente definido pelas coordenadas informadas.', 'https://servicodados.ibge.gov.br/api/v1/bdg/enquadramento/-60/-15/-45/-5/estacoes', 0, 'Dados Estação geodésica localizadas no retângulo a partir das coordenadas'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    764, 764, 20, 'Tipos de locais
', 'https://servicodados.ibge.gov.br/api/v1/bdg/local
', 'Obtém uma lista com os tipos de locais em que as estações geodésicas são estabelecidas.', 'https://servicodados.ibge.gov.br/api/v1/bdg/local
', 0, 'Lista os tipos de locais que as estações geodésicas são estabelecidas.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    765, 765, 20, 'Situações', 'https://servicodados.ibge.gov.br/api/v1/bdg/situacao', 'Obtém uma lista com as situações possíveis para as estações geodésicas.', 'https://servicodados.ibge.gov.br/api/v1/bdg/situacao', 0, 'Lista situações possíveis para as estações geodésicas.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    766, 766, 20, 'Tipos de estações', 'https://servicodados.ibge.gov.br/api/v1/bdg/tipo', 'Obtém uma lista com os tipos de estações possíveis no BDG.', 'https://servicodados.ibge.gov.br/api/v1/bdg/tipo', 0, 'Lista os tipos de estações'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    767, 767, 21, 'Calendário por pesquisa', 'https://servicodados.ibge.gov.br/api/v3/calendario/{pesquisa}', 'Obtém o calendário de divulgações de uma pesquisa.', 'https://servicodados.ibge.gov.br/api/v3/calendario/9173', 0, 'Calendário de divulgações de uma pesquisa'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    768, 768, 21, 'Calendário', 'https://servicodados.ibge.gov.br/api/v3/calendario/', 'Obtém o calendário das divulgações', 'https://servicodados.ibge.gov.br/api/v3/calendario/', 0, 'Calendário de todas as divulgações'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    769, 769, 22, 'Classe por identificador', 'https://servicodados.ibge.gov.br/api/v2/cnae/classes/{classe}', 'Obtém o conjunto de classes a partir dos respectivos identificadores.', 'https://servicodados.ibge.gov.br/api/v2/cnae/classes/01113', 0, 'Dados de conjunto de clases por identificador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    770, 770, 22, 'Classes', 'https://servicodados.ibge.gov.br/api/v2/cnae/classes', 'Obtém o conjunto de classes', 'https://servicodados.ibge.gov.br/api/v2/cnae/classes', 0, 'Dados de conjunto de clases'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    771, 771, 22, 'Classes por divisão', 'https://servicodados.ibge.gov.br/api/v2/cnae/divisoes/{divisao}/classes', 'Obtém o conjunto de classes a partir dos identificadores das divisões', 'https://servicodados.ibge.gov.br/api/v2/cnae/divisoes/1/classes', 0, 'Dados de conjunto de clases por código de divisão'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    772, 772, 22, 'Classes por grupo', 'https://servicodados.ibge.gov.br/api/v2/cnae/grupos/{grupo}/classes', 'Obtém o conjunto de classes a partir dos identificadores dos grupos', 'https://servicodados.ibge.gov.br/api/v2/cnae/grupos/11/classes', 0, 'Dados de conjunto de clases por grupo'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    773, 773, 22, 'Divisão por identificador', 'https://servicodados.ibge.gov.br/api/v2/cnae/divisoes/{divisao}', 'Obtém o conjunto de divisões a partir dos respectivos identificadores', 'https://servicodados.ibge.gov.br/api/v2/cnae/divisoes/05', 0, 'Dados de divisões por identificador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    774, 774, 22, 'Divisões', 'https://servicodados.ibge.gov.br/api/v2/cnae/divisoes', 'Obtém o conjunto de divisões.', 'https://servicodados.ibge.gov.br/api/v2/cnae/divisoes', 0, 'Dados de conjunto de divisões'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    775, 775, 22, 'Divisões por seção', 'https://servicodados.ibge.gov.br/api/v2/cnae/secoes/{secao}/divisoes', 'Obtém o conjunto de divisões a partir dos identificadores das seções', 'https://servicodados.ibge.gov.br/api/v2/cnae/secoes/A/divisoes', 0, 'Dados de conjunto de divisões por seção'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    776, 776, 22, 'Grupos por divisão', 'https://servicodados.ibge.gov.br/api/v2/cnae/divisoes/{divisao}/grupos', 'Obtém o conjunto de grupos a partir dos identificadores das divisões', 'https://servicodados.ibge.gov.br/api/v2/cnae/divisoes/01/grupos', 0, 'Dados de conjunto de grupos por divisão'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    777, 777, 22, 'Grupos', 'https://servicodados.ibge.gov.br/api/v2/cnae/grupos ', 'Obtém o conjunto de grupos ', 'https://servicodados.ibge.gov.br/api/v2/cnae/grupos ', 0, 'Dados de conjunto de grupos '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    778, 778, 22, 'Grupo por identificador', 'https://servicodados.ibge.gov.br/api/v2/cnae/grupos/{grupo} ', 'Obtém o conjunto de grupos a partir dos respectivos identificadores', 'https://servicodados.ibge.gov.br/api/v2/cnae/grupos/21', 0, 'Dados de conjunto de grupos por identificador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    779, 779, 22, 'Grupos por seção', 'https://servicodados.ibge.gov.br/api/v2/cnae/secoes/{secao}/grupos', 'Obtém o conjunto de grupos a partir dos identificadores das seções', 'https://servicodados.ibge.gov.br/api/v2/cnae/secoes/B/grupos', 0, 'Dados de conjunto de grupos por seção'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    780, 780, 22, 'Seções', 'https://servicodados.ibge.gov.br/api/v2/cnae/secoes', 'Obtém o conjunto de seções', 'https://servicodados.ibge.gov.br/api/v2/cnae/secoes', 0, 'Dados de conjunto de seções'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    781, 781, 22, 'Seção por identificador', 'https://servicodados.ibge.gov.br/api/v2/cnae/secoes/{secao}', 'Obtém o conjunto de seções a partir dos respectivos identificadores', 'https://servicodados.ibge.gov.br/api/v2/cnae/secoes/A', 0, 'Dados de conjunto de seções por identificador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    782, 782, 22, 'Subclasses por classe', 'https://servicodados.ibge.gov.br/api/v2/cnae/classes/{classe}/subclasses', 'Obtém o conjunto de subclasses a partir dos identificadores das classes', 'https://servicodados.ibge.gov.br/api/v2/cnae/classes/02101/subclasses', 0, 'Dados de conjunto de subclasses por classe'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    783, 783, 22, 'Subclasses por divisão', 'https://servicodados.ibge.gov.br/api/v2/cnae/divisoes/{divisao}/subclasses', 'Obtém o conjunto de subclasses a partir dos identificadores das divisões', 'https://servicodados.ibge.gov.br/api/v2/cnae/divisoes/1/subclasses', 0, 'Dados de conjunto de subclasses por divisão'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    784, 784, 22, 'Subclasses por grupo', 'https://servicodados.ibge.gov.br/api/v2/cnae/grupos/{grupo}/subclasses', 'Obtém o conjunto de subclasses a partir dos identificadores dos grupos', 'https://servicodados.ibge.gov.br/api/v2/cnae/grupos/21/subclasses', 0, 'Dados de conjunto de subclasses por grupo'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    785, 785, 22, 'Subclasses por seção', 'https://servicodados.ibge.gov.br/api/v2/cnae/secoes/{secao}/subclasses', 'Obtém o conjunto de subclasses a partir dos identificadores das seções', 'https://servicodados.ibge.gov.br/api/v2/cnae/secoes/E/subclasses', 0, 'Dados de conjunto de subclasses por seção'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    786, 786, 22, 'Subclasses', 'https://servicodados.ibge.gov.br/api/v2/cnae/subclasses', 'Obtém o conjunto de subclasses', 'https://servicodados.ibge.gov.br/api/v2/cnae/subclasses', 0, 'Dados de conjunto de subclasses'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    787, 787, 22, 'Subclasse por identificador', 'https://servicodados.ibge.gov.br/api/v2/cnae/subclasses/{subclasse}', 'Obtém o conjunto de subclasses a partir dos respectivos identificadores', 'https://servicodados.ibge.gov.br/api/v2/cnae/subclasses/0500301', 0, 'Dados de conjunto de subclasses por identificador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    788, 788, 23, 'Arquivo de Pontos', 'https://servicodados.ibge.gov.br/api/v1/hgeohnor/arquivo', 'Processamento de arquivo com um conjunto de pontos no formato de graus decimais ou graus sexagesimais.', 'curl -X POST -F tcoord=latlon -F arquivo=@arquivo_idlatlon.txt -F email=usuario@email.com https://servicodados.ibge.gov.br/api/v1/hgeohnor/arquivo', 1, 'Processamento de arquivo com um conjunto de  pontos '
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    789, 789, 23, 'Coordenadas do ponto no formato grau decimal', 'https://servicodados.ibge.gov.br/api/v1/hgeohnor/ponto_dec', 'Processamento de um único ponto informando as coordenadas em graus decimais.', 'https://servicodados.ibge.gov.br/api/v1/hgeohnor/ponto_dec?lat=-20&lon=-50', 0, 'Processamento de coordenadas em graus decimais'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    790, 790, 23, 'Coordenadas do ponto no formato grau sexagesimal', 'https://servicodados.ibge.gov.br/api/v1/hgeohnor/ponto_gms', 'Processamento de um único ponto informando as coordenadas em ', 'https://servicodados.ibge.gov.br/api/v1/hgeohnor/ponto_gms?glat=-20&mlat=25&slat=30.000&glon=-51&mlon=20&slon=30.000', 0, 'Processamento de coordenadas em graus sexagesimais.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    791, 791, 23, 'Lista de Pontos', 'https://servicodados.ibge.gov.br/api/v1/hgeohnor/pontos', 'Processamento de um conjunto de pontos no formato grau decimal ou grau sexagesimal.', ' https://servicodados.ibge.gov.br/api/v1/hgeohnor/pontos?pontos=[{"lat":-20.3337673,"lon":-50.5612345},{"lat":-19.1234532,"lon":-51.8456751}]', 0, 'Processamento de um conjunto de pontos - GET'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    792, 792, 23, 'Lista de Pontos', 'https://servicodados.ibge.gov.br/api/v1/hgeohnor/pontos', 'Processamento de um conjunto de pontos no formato grau decimal ou grau sexagesimal.', 'curl -X POST -F pontos=[{"lat":-20.3337673,"lon":-50.5612345},{"lat":-19.1234532,"lon":-51.8456751}] https://servicodados.ibge.gov.br/api/v1/hgeohnor/pontos', 1, 'Processamento de um conjunto de pontos - POST'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    793, 793, 24, 'Distritos', 'https://servicodados.ibge.gov.br/api/v1/localidades/distritos', 'Obtém o conjunto de distritos do Brasil', 'https://servicodados.ibge.gov.br/api/v1/localidades/distritos', 0, 'Lista Distritos do Brasil'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    794, 794, 24, 'Distritos por identificador', 'https://servicodados.ibge.gov.br/api/v1/localidades/distritos/{id}', 'Obtém o conjunto de distritos do Brasil a partir dos respectivos identificadores', 'https://servicodados.ibge.gov.br/api/v1/localidades/distritos/160030312', 0, 'Lista Distritos do Brasil por identificador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    795, 795, 24, 'Distritos por UF', 'https://servicodados.ibge.gov.br/api/v1/localidades/estados/{UF}/distritos', 'Obtém o conjunto de distritos do Brasil a partir dos identificadores das Unidades da Federação', 'https://servicodados.ibge.gov.br/api/v1/localidades/estados/33/distritos', 0, 'Lista Distritos do Brasil por estado'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    796, 796, 24, 'Distritos por mesorregião', 'https://servicodados.ibge.gov.br/api/v1/localidades/mesorregioes/{mesorregiao}/distritos', 'Obtém o conjunto de distritos do Brasil a partir dos identificadores das mesorregiões', 'https://servicodados.ibge.gov.br/api/v1/localidades/mesorregioes/1602/distritos', 0, 'Lista Distritos do Brasil por Mesorregião'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    797, 797, 24, 'Distritos por microrregião', 'https://servicodados.ibge.gov.br/api/v1/localidades/microrregioes/{microrregiao}/distritos', 'Obtém o conjunto de distritos do Brasil a partir dos identificadores das microrregiões', 'https://servicodados.ibge.gov.br/api/v1/localidades/microrregioes/16003/distritos', 0, 'Lista Distritos do Brasil por Microrregião'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    798, 798, 24, 'Distritos por município', 'https://servicodados.ibge.gov.br/api/v1/localidades/municipios/{municipio}/distritos', 'Obtém o conjunto de distritos do Brasil a partir dos identificadores dos municípios', 'https://servicodados.ibge.gov.br/api/v1/localidades/municipios/3550308/distritos', 0, 'Lista Distritos do Brasil por município'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    799, 799, 24, 'Distritos por região imediata', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes-imediatas/{regiao-imediata}/distritos', 'Obtém o conjunto de distritos do Brasil a partir dos identificadores das regiões imediatas', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes-imediatas/310037/distritos', 0, 'Lista Distritos por região imediata'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    800, 800, 24, 'Distritos por região intermediária', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes-intermediarias/{regiao-intermediaria}/distritos', 'Obtém o conjunto de distritos do Brasil a partir dos identificadores das regiões intermediárias', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes-intermediarias/2603/distritos', 0, 'Lista Distritos por região intermediária'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    801, 801, 24, 'Distritos por região', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes/{macrorregiao}/distritos', 'Obtém o conjunto de distritos do Brasil a partir dos identificadores das regiões', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes/3/distritos', 0, 'Lista Distritos por região'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    802, 802, 24, 'Mesorregiões por UF', 'https://servicodados.ibge.gov.br/api/v1/localidades/estados/{UF}/mesorregioes', 'Obtém o conjunto de mesorregiões do Brasil a partir dos identificadores das Unidades da Federação', 'https://servicodados.ibge.gov.br/api/v1/localidades/estados/33/mesorregioes', 0, 'Lista Mesorregiões por Estado'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    803, 803, 24, 'Mesorregiões', 'https://servicodados.ibge.gov.br/api/v1/localidades/mesorregioes ', 'Obtém o conjunto de mesorregiões do Brasil ', 'https://servicodados.ibge.gov.br/api/v1/localidades/mesorregioes ', 0, 'Lista Mesorregiões'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    804, 804, 24, 'Mesorregião por identificador', 'https://servicodados.ibge.gov.br/api/v1/localidades/mesorregioes/{mesorregiao} ', 'Obtém o conjunto de mesorregiões do Brasil a partir dos respectivos identificadores', 'https://servicodados.ibge.gov.br/api/v1/localidades/mesorregioes/3301', 0, 'Lista Mesorregião por identificador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    805, 805, 24, 'Mesorregiões por região', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes/{macrorregiao}/mesorregioes', 'Obtém o conjunto de mesorregiões do Brasil a partir dos identificadores das regiões', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes/3/mesorregioes', 0, 'Lista Mesorregiões por região'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    806, 806, 24, 'Microrregiões por UF', 'https://servicodados.ibge.gov.br/api/v1/localidades/estados/{UF}/microrregioes', 'Obtém o conjunto de microrregiões do Brasil a partir dos identificadores das Unidades da Federação', 'https://servicodados.ibge.gov.br/api/v1/localidades/estados/33/microrregioes', 0, 'Lista Microrregiões por Estado'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    807, 807, 24, 'Microrregiões por mesorregião', 'https://servicodados.ibge.gov.br/api/v1/localidades/mesorregioes/{mesorregiao}/microrregioes', 'Obtém o conjunto de microrregiões do Brasil a partir dos identificadores das mesorregiões', 'https://servicodados.ibge.gov.br/api/v1/localidades/mesorregioes/3303/microrregioes', 0, 'Lista Microrregiões por mesorregião'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    808, 808, 24, 'Microrregiões', 'https://servicodados.ibge.gov.br/api/v1/localidades/microrregioes ', 'Obtém o conjunto de microrregiões do Brasil', 'https://servicodados.ibge.gov.br/api/v1/localidades/microrregioes ', 0, 'Lista Microrregiões'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    809, 809, 24, 'Microrregião por identificador', 'https://servicodados.ibge.gov.br/api/v1/localidades/microrregioes/{microrregiao} ', 'Obtém o conjunto de microrregiões do Brasil a partir dos respectivos identificadores', 'https://servicodados.ibge.gov.br/api/v1/localidades/microrregioes/33007', 0, 'Lista Microrregião por identificador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    810, 810, 24, 'Microrregiões por região', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes/{macrorregiao}/microrregioes', 'Obtém o conjunto de microrregiões do Brasil a partir dos identificadores das regiões', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes/3/microrregioes', 0, 'Lista Microrregiões por região'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    811, 811, 24, 'Municípios por UF', 'https://servicodados.ibge.gov.br/api/v1/localidades/estados/{UF}/municipios', 'Obtém o conjunto de municípios do Brasil a partir dos identificadores das Unidades da Federação', 'https://servicodados.ibge.gov.br/api/v1/localidades/estados/33/municipios', 0, 'Lista Municípios por Estado'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    812, 812, 24, 'Municípios por mesorregião', 'https://servicodados.ibge.gov.br/api/v1/localidades/mesorregioes/{mesorregiao}/municipios', 'Obtém o conjunto de municípios do Brasil a partir dos identificadores das mesorregiões', 'https://servicodados.ibge.gov.br/api/v1/localidades/mesorregioes/3301/municipios', 0, 'Lista Municípios por mesorregião'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    813, 813, 24, 'Municípios por microrregião', 'https://servicodados.ibge.gov.br/api/v1/localidades/microrregioes/{microrregiao}/municipios', 'Obtém o conjunto de municípios do Brasil a partir dos identificadores das microrregiões', 'https://servicodados.ibge.gov.br/api/v1/localidades/microrregioes/33001/municipios', 0, 'Lista Municípios por microrregião'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    814, 814, 24, 'Municípios', 'https://servicodados.ibge.gov.br/api/v1/localidades/municipios ', 'Obtém o conjunto de municípios do Brasil', 'https://servicodados.ibge.gov.br/api/v1/localidades/municipios ', 0, 'Lista Municípios'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    815, 815, 24, 'Município por identificador', 'https://servicodados.ibge.gov.br/api/v1/localidades/municipios/{municipio} ', 'Obtém o conjunto de municípios do Brasil a partir dos respectivos identificadores', 'https://servicodados.ibge.gov.br/api/v1/localidades/municipios/1600303', 0, 'Lista Município por identificador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    816, 816, 24, 'Municípios por região imediata', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes-imediatas/{regiao-imediata}/municipios', 'Obtém o conjunto de municípios do Brasil a partir dos identificadores das regiões imediatas', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes-imediatas/310055/municipios', 0, 'Lista Municípios por região imediata'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    817, 817, 24, 'Municípios por região intermediária', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes-intermediarias/{regiao-intermediaria}/municipios', 'Obtém o conjunto de municípios do Brasil a partir dos identificadores das regiões intermediárias', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes-intermediarias/5202/municipios', 0, 'Lista Municípios por região intermediária'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    818, 818, 24, 'Municípios por região', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes/{macrorregiao}/municipios', 'Obtém o conjunto de municípios do Brasil a partir dos identificadores das regiões', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes/3/municipios', 0, 'Lista Municípios por região'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    819, 819, 24, 'Países', 'https://servicodados.ibge.gov.br/api/v1/localidades/paises', 'Obtém o conjunto de países', 'https://servicodados.ibge.gov.br/api/v1/localidades/paises', 0, 'Lista Países'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    820, 820, 24, 'País por identificador', 'https://servicodados.ibge.gov.br/api/v1/localidades/paises/{pais}', 'Obtém o conjunto de países a partir dos respectivos identificadores', 'https://servicodados.ibge.gov.br/api/v1/localidades/paises/76', 0, 'Lista País por identificador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    821, 821, 24, 'Regiões', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes', 'Obtém o conjunto de regiões do Brasil', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes', 0, 'Lista Regiões'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    822, 822, 24, 'Região por identificador', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes/{macrorregiao}', 'Obtém o conjunto de regiões do Brasil a partir dos respectivos identificadores', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes/1', 0, 'Lista Região por identificador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    823, 823, 24, 'Regiões imediatas por UF', 'https://servicodados.ibge.gov.br/api/v1/localidades/estados/{UF}/regioes-imediatas', 'Obtém o conjunto de regiões imediatas do Brasil a partir dos identificadores das Unidades da Federação', 'https://servicodados.ibge.gov.br/api/v1/localidades/estados/33/regioes-imediatas', 0, 'Lista Regiões imediatas por Estado'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    824, 824, 24, 'Regiões imediatas', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes-imediatas', 'Obtém o conjunto de regiões imediatas do Brasil ', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes-imediatas', 0, 'Lista Regiões imediatas'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    825, 825, 24, 'Regiões imediatas por identificador', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes-imediatas/{regiao-imediata}', 'Obtém o conjunto de regiões imediatas do Brasil a partir dos respectivos identificadores', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes-imediatas/170008', 0, 'Lista Regiões imediatas por identificador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    826, 826, 24, 'Regiões imediatas por regiões intermediárias', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes-intermediarias/{regiao-intermediaria}/regioes-imediatas', 'Obtém o conjunto de regiões imediatas do Brasil a partir dos identificadores das regiões intermediárias', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes-intermediarias/2203/regioes-imediatas', 0, 'Lista Regiões imediatas por regiões intermediárias'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    827, 827, 24, 'Regiões imediatas por região', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes/{macrorregiao}/regioes-imediatas', 'Obtém o conjunto de regiões imediatas do Brasil a partir dos identificadores das regiões', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes/3/regioes-imediatas', 0, 'Lista Regiões imediatas por região'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    828, 828, 24, 'Regiões integradas de desenvolvimento', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes-integradas-de-desenvolvimento', 'Obtém o conjunto de regiões integradas de desenvolvimento do Brasil', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes-integradas-de-desenvolvimento', 0, 'Lista Regiões integradas de desenvolvimento'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    829, 829, 24, 'Regiões integradas de desenvolvimento por identificador', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes-integradas-de-desenvolvimento/{regiao-integrada-de-desenvolvimento}', 'Obtém o conjunto de regiões integradas de desenvolvimento a partir dos respectivos identificadores', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes-integradas-de-desenvolvimento/07801', 0, 'Lista Regiões integradas de desenvolvimento por identificador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    830, 830, 24, 'Regiões intermediárias por UF', 'https://servicodados.ibge.gov.br/api/v1/localidades/estados/{UF}/regioes-intermediarias', 'Obtém o conjunto de regiões intermediárias do Brasil a partir dos identificadores das Unidades da Federação', 'https://servicodados.ibge.gov.br/api/v1/localidades/estados/33/regioes-intermediarias', 0, 'Lista Regiões intermediárias por Estado'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    831, 831, 24, 'Regiões intermediárias
', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes-intermediarias', 'Obtém o conjunto de regiões intermediárias do Brasil', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes-intermediarias', 0, 'Lista Regiões intermediárias'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    832, 832, 24, 'Região intermediária por identificador', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes-intermediarias/{regiao-intermediaria}', 'Obtém o conjunto de regiões intermediárias do Brasil a partir dos respectivos identificadores', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes-intermediarias/1102', 0, 'Lista Região intermediária por identificador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    833, 833, 24, 'Regiões intermediárias por região', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes/{macrorregiao}/regioes-intermediarias', 'Obtém o conjunto de regiões intermediárias do Brasil a partir dos identificadores das regiões', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes/3/regioes-intermediarias', 0, 'Lista Regiões intermediárias por região'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    834, 834, 24, 'Regiões metropolitanas por UF
', 'https://servicodados.ibge.gov.br/api/v1/localidades/estados/{UF}/regioes-metropolitanas', 'Obtém o conjunto de regiões metropolitanas do Brasil a partir dos identificadores das Unidades da Federação', 'https://servicodados.ibge.gov.br/api/v1/localidades/estados/33/regioes-metropolitanas', 0, 'Lista Regiões metropolitanas por Estado'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    835, 835, 24, 'Regiões metropolitanas por região
', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes/{macrorregiao}/regioes-metropolitanas', 'Obtém o conjunto de regiões metropolitanas do Brasil a partir dos identificadores das regiões', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes/3/regioes-metropolitanas', 0, 'Lista Regiões metropolitanas por região'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    836, 836, 24, 'Regiões metropolitanas', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes-metropolitanas', 'Obtém o conjunto de regiões metropolitanas do Brasil', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes-metropolitanas', 0, 'Lista Regiões metropolitanas'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    837, 837, 24, 'Regiões metropolitanas por identificador', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes-metropolitanas/{regiao-metropolitana}', 'Obtém o conjunto de regiões metropolitanas a partir dos respectivos identificadores', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes-metropolitanas/00201', 0, 'Lista Regiões metropolitanas por identificador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    838, 838, 24, 'Subdistritos por distrito', 'https://servicodados.ibge.gov.br/api/v1/localidades/distritos/{distrito}/subdistritos', 'Obtém o conjunto de subdistritos do Brasil a partir dos identificadores dos distritos', 'https://servicodados.ibge.gov.br/api/v1/localidades/distritos/110020505/subdistritos', 0, 'Lista Subdistritos por distrito'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    839, 839, 24, 'Subdistritos por UF', 'https://servicodados.ibge.gov.br/api/v1/localidades/estados/{UF}/subdistritos', 'Obtém o conjunto de subdistritos do Brasil a partir dos identificadores das Unidades da Federação', 'https://servicodados.ibge.gov.br/api/v1/localidades/estados/33/subdistritos', 0, 'Lista Subdistritos por Estado'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    840, 840, 24, 'Subdistritos por mesorregião', 'https://servicodados.ibge.gov.br/api/v1/localidades/mesorregioes/{mesorregiao}/subdistritos', 'Obtém o conjunto de subdistritos do Brasil a partir dos identificadores das mesorregiões', 'https://servicodados.ibge.gov.br/api/v1/localidades/mesorregioes/4305/subdistritos', 0, 'Lista Subdistritos por mesorregião'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    841, 841, 24, 'Subdistritos por microrregião', 'https://servicodados.ibge.gov.br/api/v1/localidades/microrregioes/{microrregiao}/subdistritos', 'Obtém o conjunto de subdistritos do Brasil a partir dos identificadores das microrregiões', 'https://servicodados.ibge.gov.br/api/v1/localidades/microrregioes/11001/subdistritos', 0, 'Lista Subdistritos por microrregião'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    842, 842, 24, 'Subdistritos por município', 'https://servicodados.ibge.gov.br/api/v1/localidades/municipios/{municipio}/subdistritos', 'Obtém o conjunto de subdistritos do Brasil a partir dos identificadores dos municípios', 'https://servicodados.ibge.gov.br/api/v1/localidades/municipios/3304557/subdistritos', 0, 'Lista Subdistritos por município'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    843, 843, 24, 'Subdistritos por região imediata', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes-imediatas/{regiao-imediata}/subdistritos', 'Obtém o conjunto de subdistritos do Brasil a partir dos identificadores das regiões imediatas', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes-imediatas/230007/subdistritos', 0, 'Lista Subdistritos por região imediata'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    844, 844, 24, 'Subdistritos por região', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes/{macrorregiao}/subdistritos', 'Obtém o conjunto de subdistritos do Brasil a partir dos identificadores das regiões ', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes/3/subdistritos', 0, 'Lista Subdistritos por região'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    845, 845, 24, 'Subdistritos', 'https://servicodados.ibge.gov.br/api/v1/localidades/subdistritos', 'Obtém o conjunto de subdistritos do Brasil', 'https://servicodados.ibge.gov.br/api/v1/localidades/subdistritos', 0, 'Lista Subdistritos'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    846, 846, 24, 'Subdistritos por identificador
', 'https://servicodados.ibge.gov.br/api/v1/localidades/subdistritos/{id}/', 'Obtém o conjunto de subdistritos do Brasil a partir dos respectivos identificadores', 'https://servicodados.ibge.gov.br/api/v1/localidades/subdistritos/53001080517', 0, 'Lista Subdistritos por identificador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    847, 847, 24, 'UFs', 'https://servicodados.ibge.gov.br/api/v1/localidades/estados', 'Obtém o conjunto de Unidades da Federação do Brasil', 'https://servicodados.ibge.gov.br/api/v1/localidades/estados', 0, 'Lista Estados'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    848, 848, 24, 'UF por identificador', 'https://servicodados.ibge.gov.br/api/v1/localidades/estados/{UF}', 'Obtém o conjunto de Unidades da Federação do Brasil a partir dos respectivos identificadores', 'https://servicodados.ibge.gov.br/api/v1/localidades/estados/33', 0, 'Lista Estado por identificador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    849, 849, 24, 'UF por região', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes/{macrorregiao}/estados', 'Obtém o conjunto de Unidades da Federação do Brasil a partir dos identificadores da regiões', 'https://servicodados.ibge.gov.br/api/v1/localidades/regioes/3/estados', 0, 'Lista Estados por região'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    850, 850, 25, 'Por unidade da federação', 'https://servicodados.ibge.gov.br/api/v3/malhas/estados/{id}', 'Obtém a malha referente a uma determinada Unidade da Federação (estado) do Brasil a partir do respectivo identificador. No caso das Unidades da Federação do Brasil, é possível usar a respectiva sigla em vez do identificador', 'https://servicodados.ibge.gov.br/api/v3/malhas/estados/33?formato=application/json', 0, 'Obtém a malha por Estado'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    851, 851, 25, 'Por mesorregião', 'https://servicodados.ibge.gov.br/api/v3/malhas/mesorregioes/{id}', 'Obtém a malha referente a uma determinada mesorregião do Brasil a partir do respectivo identificador.', 'https://servicodados.ibge.gov.br/api/v3/malhas/mesorregioes/3301?formato=application/json', 0, 'Obtém a malha por Estado'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    852, 852, 25, 'Por microrregião', 'https://servicodados.ibge.gov.br/api/v3/malhas/microrregioes/{id}', 'Obtém a malha referente a uma determinada microrregião do Brasil a partir do respectivo identificador.', 'https://servicodados.ibge.gov.br/api/v3/malhas/microrregioes/31007?formato=application/json', 0, 'Obtém a malha por mesorregião'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    853, 853, 25, 'Por município
', 'https://servicodados.ibge.gov.br/api/v3/malhas/municipios/{id}', 'Obtém a malha referente a um determinado município do Brasil a partir do respectivo identificador.', 'https://servicodados.ibge.gov.br/api/v3/malhas/municipios/3304557?formato=application/json', 0, 'Obtém a malha por microrregião'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    854, 854, 25, 'Por país', 'https://servicodados.ibge.gov.br/api/v3/malhas/paises/{id}', 'Obtém a malha referente a um determinado país.', 'https://servicodados.ibge.gov.br/api/v3/malhas/paises/BR?formato=application/json', 0, 'Obtém a malha por município'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    855, 855, 25, 'Por região do Brasil', 'https://servicodados.ibge.gov.br/api/v3/malhas/regioes/{id}', 'Obtém a malha referente a uma determinada região do Brasil a partir do respectivo identificador. No caso das regiões do Brasil, é possível usar a respectiva sigla (N, NE, SE, S, CO) em vez do identificador', 'https://servicodados.ibge.gov.br/api/v3/malhas/regioes/3?formato=application/json', 0, 'Obtém a malha por país'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    856, 856, 25, 'Por região imediata
', 'https://servicodados.ibge.gov.br/api/v3/malhas/regioes-imediatas/{id}', 'Obtém a malha referente a uma determinada região imediata do Brasil a partir do respectivo identificador.', 'https://servicodados.ibge.gov.br/api/v3/malhas/regioes-imediatas/110001?formato=application/json', 0, 'Obtém a malha por região do Brasil'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    857, 857, 25, 'Por região intermediária
', 'https://servicodados.ibge.gov.br/api/v3/malhas/regioes-intermediarias/{id}', 'Obtém a malha referente a uma determinada região intermediária do Brasil a partir do respectivo identificador.', 'https://servicodados.ibge.gov.br/api/v3/malhas/regioes-intermediarias/3502?formato=application/json', 0, 'Obtém a malha por região imediata'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    858, 858, 25, 'Por unidade da federação', 'https://servicodados.ibge.gov.br/api/v3/malhas/estados/{id}/metadados', 'Obtém os metadados da malha referente a uma determinada Unidade da Federação (estado) do Brasil a partir do respectivo identificador. No caso das Unidades da Federação do Brasil, é possível usar a respectiva sigla em vez do identificador', 'https://servicodados.ibge.gov.br/api/v3/malhas/estados/33/metadados', 0, 'Obtém a malha por região intermediária'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    859, 859, 25, 'Por mesorregião
', 'https://servicodados.ibge.gov.br/api/v3/malhas/mesorregioes/{id}/metadados', 'Obtém os metadados da malha referente a uma determinada mesorregião do Brasil a partir do respectivo identificador.', 'https://servicodados.ibge.gov.br/api/v3/malhas/mesorregioes/3301/metadados', 0, 'Obtém metadados da malha por Estado'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    860, 860, 25, 'Por microrregião
', 'https://servicodados.ibge.gov.br/api/v3/malhas/microrregioes/{id}/metadados', 'Obtém os metadados da malha referente a uma determinada microrregião do Brasil a partir do respectivo identificador.', 'https://servicodados.ibge.gov.br/api/v3/malhas/microrregioes/31007/metadados', 0, 'Obtém metadados da malha por mesorregião'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    861, 861, 25, 'Por município', 'https://servicodados.ibge.gov.br/api/v3/malhas/municipios/{id}/metadados', 'Obtém os metadados da malha referente a um determinado município do Brasil a partir do respectivo identificador.', 'https://servicodados.ibge.gov.br/api/v3/malhas/municipios/3304557/metadados', 0, 'Obtém metadados da malha por microrregião'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    862, 862, 25, 'Por país', 'https://servicodados.ibge.gov.br/api/v3/malhas/paises/{id}/metadados', 'Obtém os metadados da malha referente a um determinado país. Na presente versão, só está disponível o Brasil, cujo identificador é BR. À medida que as malhas dos demais países forem disponibilizadas, informaremos através das notas de liberação', 'https://servicodados.ibge.gov.br/api/v3/malhas/paises/BR/metadados', 0, 'Obtém metadados da malha por município'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    863, 863, 25, 'Por região do Brasil
', 'https://servicodados.ibge.gov.br/api/v3/malhas/regioes/{id}/metadados', 'Obtém os metadados da malha referente a uma determinada região do Brasil a partir do respectivo identificador. No caso das regiões do Brasil, é possível usar a respectiva sigla (N, NE, SE, S, CO) em vez do identificador', 'https://servicodados.ibge.gov.br/api/v3/malhas/regioes/3/metadados', 0, 'Obtém metadados da malha por país'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    864, 864, 25, 'Por região imediata', 'https://servicodados.ibge.gov.br/api/v3/malhas/regioes-imediatas/{id}/metadados', 'Obtém os metadados da malha referente a uma determinada região imediata do Brasil a partir do respectivo identificador.', 'https://servicodados.ibge.gov.br/api/v3/malhas/regioes-imediatas/110001/metadados', 0, 'Obtém metadados da malha por região do Brasil'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    865, 865, 25, 'Por região intermediária', 'https://servicodados.ibge.gov.br/api/v3/malhas/regioes-intermediarias/{id}/metadados', 'Obtém os metadados da malha referente a uma determinada região intermediária do Brasil a partir do respectivo identificador.', 'https://servicodados.ibge.gov.br/api/v3/malhas/regioes-intermediarias/3502/metadados', 0, 'Obtém metadados da malha por região imediata'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    866, 866, 26, 'Metadados por pesquisa e período pesquisado
', 'http://servicodados.ibge.gov.br/api/v2/metadados/{pesquisa}/{YYYY}/{MM}/{order}', 'Obtém as ocorrências, na base de metadados, nas quais a pesquisa é citada, em um dado período', 'https://servicodados.ibge.gov.br/api/v2/metadados/AC/2003/', 0, 'Obtém metadados da malha por região intermediária'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    867, 867, 26, 'Períodos
', 'http://servicodados.ibge.gov.br/api/v2/metadados/pesquisas/{pesquisa}/periodos', 'Obtém os períodos pesquisados com metadados associados.', 'http://servicodados.ibge.gov.br/api/v2/metadados/pesquisas/AC/periodos', 0, 'Períodos Pesquisados com metadados'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    868, 868, 26, 'Pesquisas', 'http://servicodados.ibge.gov.br/api/v2/metadados/pesquisas', 'Obtém as pesquisas com metadados associados', 'http://servicodados.ibge.gov.br/api/v2/metadados/pesquisas', 0, 'Obtém as pesquisas com metadados'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    869, 869, 27, 'Frequência por nome', 'https://servicodados.ibge.gov.br/api/v2/censos/nomes/{nome}', 'Obtém a frequência de nascimentos por década para o nome consultado', 'https://servicodados.ibge.gov.br/api/v2/censos/nomes/gabriel', 0, 'Obtém a frequência de nascimentos por nome'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    870, 870, 27, 'Ranking por frequência
', 'https://servicodados.ibge.gov.br/api/v2/censos/nomes/ranking', 'Obtém o ranking dos nomes segundo a frequência de nascimentos por década', 'https://servicodados.ibge.gov.br/api/v2/censos/nomes/ranking', 0, 'Obtém o ranking dos nomes por década'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    871, 871, 28, 'Notícias
', 'http://servicodados.ibge.gov.br/api/v3/noticias/', 'Obtém o conjunto de notícias', 'http://servicodados.ibge.gov.br/api/v3/noticias/', 0, 'Conjunto de notícias'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    872, 872, 29, 'Indicadores
', 'https://servicodados.ibge.gov.br/api/v1/paises/indicadores/{indicadores}', 'Obtém a listagem dos indicadores', 'https://servicodados.ibge.gov.br/api/v1/paises/indicadores/77819|77820', 0, 'Listagem dos indicadores'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    873, 873, 29, 'Indicadores por países
', 'https://servicodados.ibge.gov.br/api/v1/paises/{paises}/indicadores/{indicadores}', 'Obtém os indicadores e os respectivos resultados a partir de um conjunto de países', 'https://servicodados.ibge.gov.br/api/v1/paises/AR|BR/indicadores/77819|77820', 0, 'Indicadores e os respectivos resultados por país'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    874, 874, 29, 'Países', 'https://servicodados.ibge.gov.br/api/v1/paises/{paises}', 'Obtém a listagem dos países e os respectivos perfis', 'https://servicodados.ibge.gov.br/api/v1/paises/AF', 0, 'Listagem de Países'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    875, 875, 30, 'Indicadores por pesquisa', 'https://servicodados.ibge.gov.br/api/v1/pesquisas/{pesquisa}/indicadores/{posicao}', 'Funcionalmente igual à consulta /pesquisas/{pesquisa}/periodos/all/indicadores/{posicao}', 'https://servicodados.ibge.gov.br/api/v1/pesquisas/1/indicadores/29171', 0, 'Indicadores por pesquisa'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    876, 876, 30, 'Indicadores por pesquisa e períodos pesquisados', 'https://servicodados.ibge.gov.br/api/v1/pesquisas/{pesquisa}/periodos/{periodos}/indicadores/{posicao}', 'Obtém o conjunto de indicadores e os respectivos resultados. Observe que os indicadores são vinculados ao período pesquisado e não à pesquisa. Isso se deve ao fato de que indicadores podem ser desmebrados ou mesmo combinados entre diferentes períodos pesquisados. No entanto, o IBGE se esforça para manter a compatibilidade entre os diversos períodos pesquisados, embora nem sempre isso seja possível.', 'https://servicodados.ibge.gov.br/api/v1/pesquisas/1/periodos/2022/indicadores/29171', 0, 'Indicadores por pesquisa e períodos pesquisados'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    877, 877, 30, 'Períodos por pesquisa
', 'https://servicodados.ibge.gov.br/api/v1/pesquisas/{pesquisa}/periodos ', 'Obtém o conjunto de períodos de uma pesquisa a partir do identificador desta', 'https://servicodados.ibge.gov.br/api/v1/pesquisas/1/periodos', 0, 'Períodos por pesquisa'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    878, 878, 30, 'Pesquisas', 'https://servicodados.ibge.gov.br/api/v1/pesquisas', 'Obtém o conjunto de pesquisas. Caso queira restringir o resultado, informe o parâmetro q', 'https://servicodados.ibge.gov.br/api/v1/pesquisas', 0, 'Pesquisas'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    879, 879, 30, 'Pesquisa por identificador', 'https://servicodados.ibge.gov.br/api/v1/pesquisas/{pesquisas}', 'Obtém o conjunto de pesquisas a partir dos respectivos identificadores', 'https://servicodados.ibge.gov.br/api/v1/pesquisas/1', 0, 'Pesquisa por identificador'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    880, 880, 30, 'Ranking por pesquisa e indicadores
', 'https://servicodados.ibge.gov.br/api/v1/pesquisas/{pesquisa}/indicadores/{indicador}/ranking', 'Funcionalmente igual à consulta /pesquisas/{pesquisa}/periodos/all/indicadores/{indicador}/ranking', 'https://servicodados.ibge.gov.br/api/v1/pesquisas/1/indicadores/29171/ranking', 1, 'Ranking por pesquisa e indicadores'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    881, 881, 30, 'Ranking por pesquisa, períodos pesquisados e indicadores
', 'https://servicodados.ibge.gov.br/api/v1/pesquisas/{pesquisa}/periodos/{periodos}/indicadores/{indicador}/ranking', 'Obtém o ranking dos resultados de um dado indicador. Válido apenas para indicadores cujas classes sejam N ou $', 'https://servicodados.ibge.gov.br/api/v1/pesquisas/1/periodos/2022/indicadores/29171/ranking', 1, 'Ranking por pesquisa, períodos pesquisados e indicadores'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    882, 882, 30, 'Resultados por indicadores e localidades', 'https://servicodados.ibge.gov.br/api/v1/pesquisas/-/indicadores/{indicador}/resultados/{localidade}', 'Obtém os resultados a partir dos identificadores dos indicadores, independente da pesquisa e do período pesquisado. Funcionalmente igual à consulta /pesquisas/-/periodos/all/indicadores/{indicador}/resultados/{localidade}', 'https://servicodados.ibge.gov.br/api/v1/pesquisas/1/indicadores/29171/resultados/33', 0, 'Resultados por indicadores e localidades'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    883, 883, 30, 'Resultados por períodos, indicadores e localidades
', 'https://servicodados.ibge.gov.br/api/v1/pesquisas/-/periodos/{periodos}/indicadores/{indicador}/resultados/{localidade}', 'Obtém os resultados dos indicadores referentes aos períodos pesquisados, independente da pesquisa', 'https://servicodados.ibge.gov.br/api/v1/pesquisas/1/periodos/2022/indicadores/29171/resultados/33', 0, 'Resultados por períodos, indicadores e localidades
'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    884, 884, 30, 'Resultados por pesquisa, indicadores e localidades', 'https://servicodados.ibge.gov.br/api/v1/pesquisas/{pesquisa}/indicadores/{posicao}/resultados/{localidades}', 'Funcionalmente igual à consulta /pesquisas/{pesquisa}/periodos/all/indicadores/{posicao}/resultados/{localidades}', 'https://servicodados.ibge.gov.br/api/v1/pesquisas/1/indicadores/29171/resultados/33,35', 0, 'Resultados por pesquisa, indicadores e localidades'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    885, 885, 30, 'Resultados por pesquisa, períodos pesquisados, indicadores e localidades', 'https://servicodados.ibge.gov.br/api/v1/pesquisas/{pesquisa}/periodos/{periodos}/indicadores/{posicao}/resultados/{localidades}', 'Obtém os resultados dos indicadores', 'https://servicodados.ibge.gov.br/api/v1/pesquisas/1/periodos/2022/indicadores/29171/resultados/33', 0, 'Resultados por pesquisa, períodos pesquisados, indicadores e localidades'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    886, 886, 30, 'Resultados por pesquisa e localidades
', 'https://servicodados.ibge.gov.br/api/v1/pesquisas/{pesquisa}/resultados/{localidades}', 'Funcionalmente igual à consulta /pesquisas/{pesquisa}/periodos/all/indicadores/0/resultados/{localidades}', 'https://servicodados.ibge.gov.br/api/v1/pesquisas/1/resultados/33', 0, 'Resultados por pesquisa e localidades
'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    887, 887, 31, 'Posicionamento por Ponto Preciso', 'https://servicodados.ibge.gov.br/api/v1/ppp', 'Efetua o processamento dos dados contidos no arquivo RINEX e fornece as coordenadas resultantes e suas respectivas incertezas.', 'CURL -X POST https://servicodados.ibge.gov.br/api/v1/ppp -F arquivo=@mtnx1951.21o -F tipo-levantamento=estatico -F modelo-antena="TRM59800.00     NONE" -F altura-antena=0.1376 -F marco-ibge=SAT99612 -F email=usuario@dominio.com.br -F autorizacao-uso=true', 1, 'Processamento dos dados(POST)'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    888, 888, 32, 'Produtos de estatística
', 'https://servicodados.ibge.gov.br/api/v1/produtos/estatisticas', 'Obtém a lista dos produtos de estatística do IBGE.', 'https://servicodados.ibge.gov.br/api/v1/produtos/estatisticas', 0, 'Produtos de estatística do IBGE'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    889, 889, 32, 'Produtos de geociências
', 'https://servicodados.ibge.gov.br/api/v1/produtos/geociencias', 'Obtém a lista dos produtos de geociências do IBGE.', 'https://servicodados.ibge.gov.br/api/v1/produtos/geociencias', 0, 'Produtos de geociências do IBGE'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    890, 890, 32, 'Produtos
', 'https://servicodados.ibge.gov.br/api/v1/produtos/', 'Obtém a lista dos produtos do IBGE.', 'https://servicodados.ibge.gov.br/api/v1/produtos/', 0, 'Produtos do IBGE'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    891, 891, 33, 'Arquivo de coordenadas', 'https://servicodados.ibge.gov.br/api/v1/progrid/arquivo', 'Transformação utilizando um arquivo de coordenadas como entrada de dados.', 'curl -X POST -F referencialEntrada=sad69 -F tipoCoordenadaEntrada=lat_long_gms -F tipoCoordenadaSaida=lat_long_gd -F tipoEntrada=txt -F tipoSaida=arquivo -F arquivo=@idlatlon_gms.txt -F email=exemplo@ibge.gov.br https://servicodados.ibge.gov.br/api/v1/progrid/arquivo', 1, 'Processamento arquivo de coordenadas como entrada de dado'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    892, 892, 33, 'Coordenadas em graus decimais', 'https://servicodados.ibge.gov.br/api/v1/progrid/latlongdec', 'Transformação utilizando coordenada de entrada em grau decimal.', 'https://servicodados.ibge.gov.br/api/v1/progrid/latlongdec?referencialEntrada=sad69_96_gps&tipoCoordenadaSaida=utm_e_n&lat=-19.762037764&long=-48.101581775&alt=30.0', 0, 'Processamento de coordenadas em graus decimais'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    893, 893, 33, 'Coordenadas em graus sexagesimais', 'https://servicodados.ibge.gov.br/api/v1/progrid/latlonggms', 'Transformação utilizando coordenada de entrada em graus sexagesimais.', 'https://servicodados.ibge.gov.br/api/v1/progrid/latlonggms?referencialEntrada=sad69_96_gps&tipoCoordenadaSaida=xyz&pontos=[{"glat":-20,"mlat":15,"slat":6.060,"glon":-50,"mlon":15,"slon":40.000,"alt":20.34},{"glat":-21,"mlat":10,"slat":0.060,"glon":-50,"mlon":15,"slon":40.000,"alt":20.34}] ', 0, 'Processamento de coordenadas em graus sexagesimais'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    894, 894, 33, 'Coordenadas em UTM', 'https://servicodados.ibge.gov.br/api/v1/progrid/utm', 'Transformação utilizando coordenada de entrada UTM', 'https://servicodados.ibge.gov.br/api/v1/progrid/utm?e=803743.312&n=7812252.046&fuso=22&referencialEntrada=sirgas2000&tipoCoordenadaSaida=lat_long_gms', 0, 'Processamento de coordenadas em UTM'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    895, 895, 33, 'Coordenadas em XYZ', 'https://servicodados.ibge.gov.br/api/v1/progrid/xyz', 'Transformação utilizando coordenada de entrada em XYZ', 'https://servicodados.ibge.gov.br/api/v1/progrid/xyz?x=4010547.9793&y=-4470077.0251&z=-2143178.6957&referencialEntrada=sirgas2000&tipoCoordenadaSaida=lat_long_gd', 0, 'Processamento de coordenadas em XYZ'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    896, 896, 34, 'Publicação por critério de busca', 'http://servicodados.ibge.gov.br/api/v1/publicacoes/{produto}', 'Obtém uma lista de publicações relacionadas a um termo de busca', 'https://servicodados.ibge.gov.br/api/v1/publicacoes/agropecuaria', 0, 'Llista de publicações por críterio'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    897, 897, 35, 'Relatório sobre uma dada estação', 'https://servicodados.ibge.gov.br/api/v1/rbmc/relatorio/{estacao}', 'Obtém um descritivo em PDF com os dados técnicos atualizados referente a uma dada estação da RBMC', 'https://servicodados.ibge.gov.br/api/v1/rbmc/relatorio/alar', 0, 'Dados técnicos de uma dada estação da RBMC.'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    898, 898, 35, 'Arquivo diário RINEX2 (15s)', 'https://servicodados.ibge.gov.br/api/v1/rbmc/rinex2/{estacao}/{ano}/{dia}', 'Obtém um arquivo no formato RINEX2, com intervalo de 15s entre observações, coletadas por uma estação em um dado dia do ano', 'https://servicodados.ibge.gov.br/api/v1/rbmc/dados/rinex2/alar/2022/1', 0, 'Arquivo RINEX2 com intervalo de 15s por estação e dia do ano'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    899, 899, 35, 'Arquivo diário RINEX3 (15s)', 'https://servicodados.ibge.gov.br/api/v1/rbmc/rinex3/1s/{estacao}/{ano}/{dia}/{hora}/{minuto}/{tipo}', 'Obtém um arquivo no formato RINEX3, com intervalo de 1s entre observações, coletadas por uma estação em um dado dia/hora/minuto do ano', 'https://servicodados.ibge.gov.br/api/v1/rbmc/dados/rinex3/1s/alma/2022/1/0/15/mo', 0, 'Arquivo RINEX3 com intervalo de 1s por estação e data/hora/minuto'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    900, 900, 35, 'Arquivo diário RINEX3 (15s)', 'https://servicodados.ibge.gov.br/api/v1/rbmc/rinex3/{estacao}/{ano}/{dia}', 'Obtém um arquivo no formato RINEX3, com intervalo de 15s entre observações, coletadas por uma estação em um dado dia do ano', 'https://servicodados.ibge.gov.br/api/v1/rbmc/dados/rinex3/alma/2022/1', 0, 'Arquivo RINEX3 com intervalo de 15s por estação e dia do ano'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    901, 901, 35, 'Órbitas multiconstelação', 'https://servicodados.ibge.gov.br/api/v1/rbmc/rinex3/orbitas/{ano}/{dia}', 'Obtém as órbitas multiconstelação em um dado dia do ano', 'https://servicodados.ibge.gov.br/api/v1/rbmc/dados/rinex3/orbitas/2022/1', 0, 'Órbitas multiconstelação para um dia específico'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    902, 902, 36, 'Marégrafos', 'https://servicodados.ibge.gov.br/api/v1/rmpg/maregrafos', 'Retorna uma lista dos marégrafos pertencentes a RMPG com informações básicas, como identificação, coordenadas, datas etc', 'https://servicodados.ibge.gov.br/api/v1/rmpg/maregrafos', 0, 'Lista de marégrafos RMPG com informações básicas'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    903, 903, 36, 'Sensores
', 'https://servicodados.ibge.gov.br/api/v1/rmpg/sensores', 'Retorna uma lista dos diversos sensores instalados nas estações maregráficas. Cada sensor pode ser entendido como um dispositivo que responde a um estímulo (físico ou químico, por exemplo), produzindo um sinal digital para fins de medição e/ou monitoramento', 'https://servicodados.ibge.gov.br/api/v1/rmpg/sensores', 0, 'Sensores instalados nas estações maregráficas'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    904, 904, 36, 'Previsão de maré
', 'https://servicodados.ibge.gov.br/api/v1/rmpg/previsao/{maregrafo}', 'Obtém as previsões de maré calculadas para um marégrafo para o período informado. Os harmônicos utilizados estão disponíveis em https://geoftp.ibge.gov.br/informacoes_sobre_posicionamento_geodesico/rmpg/series_temporais/', 'https://servicodados.ibge.gov.br/api/v1/rmpg/previsao/EMARC?momentoInicial=2022-01-07-10-00&momentoFinal=2022-01-07-13-00', 0, 'Previsões de maré para o período informado'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    905, 905, 36, 'Nível do mar
', 'https://servicodados.ibge.gov.br/api/v1/rmpg/nivel/{maregrafo}', 'Obtém as leituras de nível do mar dos sensores RADAR e ENCODER instalados no marégrafo para o período informado', 'https://servicodados.ibge.gov.br/api/v1/rmpg/nivel/EMARC?momentoInicial=2022-01-07-10-00&momentoFinal=2022-01-07-13-00', 0, 'Leituras de nível do mar por sensores RADAR e ENCODER'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    906, 906, 36, 'Meteorologia', 'https://servicodados.ibge.gov.br/api/v1/rmpg/meteorologia/{maregrafo}', 'Obtém as leituras de meteorologia (precipitação, pressão atmosférica, direção e velocidade do vento, umidade, etc para o marégrafo e período informados', 'https://servicodados.ibge.gov.br/api/v1/rmpg/meteorologia/EMARC?momentoInicial=2022-01-07-10-00&momentoFinal=2022-01-07-13-00', 0, 'Leituras meteorológicas para marégrafos e período informados'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    907, 907, 36, 'Customizado
', 'https://servicodados.ibge.gov.br/api/v1/rmpg/customizado/{maregrafos}/{sensores}', 'Obtém as leituras de nível ou de meteorologia, conforme os sensores informados, para diversos marégrafos no período informado', 'https://servicodados.ibge.gov.br/api/v1/rmpg/customizado/EMARC|EMSAN/1|33?momentoInicial=2022-01-07-10-00&momentoFinal=2022-01-07-13-00 ', 0, 'Leituras de nível ou meteorologia de múltiplos marégrafos'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    908, 908, 18, 'Conjunto de dados por ID', 'https://dados.gov.br/dados/api/publico/conjuntos-dados/{id}', 'Detalha um conjunto de dados', 'https://dados.gov.br/dados/api/publico/conjuntos-dados/3fc794a6-4217-4038-9b9d-b0ac7335efc3', 0, 'Conjunto de Dado por id'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    909, 909, 18, 'Lista todo o conjunto de dados', 'https://dados.gov.br/dados/api/publico/conjuntos-dados', 'Esse método lista conjuntos de dados existente', 'https://dados.gov.br/dados/api/publico/conjuntos-dados?isPrivado=false&pagina=1', 0, 'Lista Conjunto de Dados'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    910, 910, 18, 'Observância legal', 'https://dados.gov.br/dados/api/publico/conjuntos-dados/observancia-legal', '', 'https://dados.gov.br/dados/api/publico/conjuntos-dados/observancia-legal', 0, 'Observancia Legal'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    911, 911, 18, 'Objetivos desenvolvimento sustentável', 'https://dados.gov.br/dados/api/publico/conjuntos-dados/objetivos-desenvolvimento-sustentavel', 'Lista objetivos para o desenvolvimento sustentável', 'ttps://dados.gov.br/dados/api/publico/conjuntos-dados/objetivos-desenvolvimento-sustentavel', 0, 'Objetivos Desenvolvimento Sustentável'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    912, 912, 18, 'Formatos arquivos', 'https://dados.gov.br/dados/api/publico/conjuntos-dados/formatos', 'Lista os formatos de dados', 'https://dados.gov.br/dados/api/publico/conjuntos-dados/formatos', 0, 'Formatos dos Dados'
);

INSERT INTO [Endpoints da API] (Id, ApiResponseId, ApiId, Name, Url, Description, Example, ActiveExample, ShortName) VALUES (
    913, 913, 18, 'Consulta solicitações', 'https://dados.gov.br/dados/api/solicitacoes', 'Dados de Solicitação', 'https://dados.gov.br/dados/api/solicitacoes?dataAbertura=2024-08-10&tipoSolicitacao=CONTATO_ORGANIZACAO&statusSolicitacao=ABERTA', 0, 'Dados Solicitação'
);