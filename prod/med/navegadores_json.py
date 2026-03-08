import json

def navegador_id1(jsonStr, idEndpoint):
    # ('@odata.context', 'value')
    
    obj = json.loads(jsonStr)
    obj = obj["value"]
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id2(jsonStr, idEndpoint):
    # ()
    
  idsVazios = ["70", "239", "240", "248", "249", "272", "273", "278", "279", "280",
                 "282", "283", "286", "293", "299", "315", "357", "538", "363", "372",
                 "373", "381", "389", "390", "586", "601", "602", "608", "621", "622",
                 "623", "625", "627", "628", "629", "630", "634", "788", "792", "843",
                 "887", "891"]
    
  if idEndpoint in idsVazios:
    lista = []
  
  if idEndpoint in ["499", "500"]:
    lista = ["dados", "links"]
  
  if idEndpoint == "527":
    lista = ["situacao"]
  
  if idEndpoint == "547":
    lista = ['id', 'dataMesCompetencia', 'dataMesReferencia', 'beneficiario', 'municipio', 'valor', 'concedidoJudicialmente', 'menor16anos']
  
  if idEndpoint in ["548", "549"]:
    lista = ['id', 'dataMesCompetencia', 'dataMesReferencia', 'municipio', 'beneficiarioBolsaFamilia', 'cpfFormatado', 'nis', 'nome', 'dataSaque', 'valorSaque']
  
  if idEndpoint == "550":
    lista = ['id', 'dataReferencia', 'municipio', 'tipo', 'valor', 'quantidadeBeneficiados']
  
  if idEndpoint == "572":
    lista = ["codigo", "descricao"]
  
  if idEndpoint == "592":
    lista = ['mesAno', 'tipoTransferencia', 'codigoOrgao', 'orgao', 'tipoFavorecido', 'codigoFavorecido', 'favorecido', 'codigoFuncao', 'funcao', 'codigoPrograma', 'programa', 'codigoAcao', 'acao', 'codigoGrupoDespesa', 'grupoDespesa', 'codigoModalidadeAplicacaoDespesa', 'modalidadeAplicacaoDespesa', 'codigoElementoDespesa', 'elementoDespesa', 'valor']
  
  if idEndpoint in ["626", "912"]:
    lista = ["formatos"]
  
  if idEndpoint in ["897", "898", "899", "900", "901"]:
    lista = ["link"]
  
  dicionario = {item: None for item in lista}
  return dicionario
    

def navegador_id3(jsonStr, idEndpoint):
    # ('dados', 'links')
    
    obj = json.loads(jsonStr)
    obj = obj["dados"]
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id4(jsonStr, idEndpoint):
    # ('_links', '_embedded', 'count', 'offset')
    
    obj = json.loads(jsonStr)
    obj = obj["_embedded"]
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id5(jsonStr, idEndpoint):
    # ('queueDuration', 'queryDuration', 'results')
    
    obj = json.loads(jsonStr)
    obj = obj["results"]
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id6(jsonStr, idEndpoint):
    # ('items', 'hasMore', 'limit', 'offset', 'count', 'links')
    
    obj = json.loads(jsonStr)
    obj = obj["items"]
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id7(jsonStr, idEndpoint):
    # ('success', 'data', 'count', 'query', 'offset', 'limit')
    
    obj = json.loads(jsonStr)
    obj = obj["data"]
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id8(jsonStr, idEndpoint):
    # ('statusCode', 'message')
    # endpoints que deram erro
    """
    obj = json.loads(jsonStr)
    obj = obj
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    """
    

def navegador_id9(jsonStr, idEndpoint):
    # ('id', 'nome', 'municipio')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id10(jsonStr, idEndpoint):
    # ('distrito', 'id', 'nome')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id11(jsonStr, idEndpoint):
    # ('id', 'dataReferencia', 'tipo', 'quantidadeBeneficiados', 'valor', 'municipio')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id12(jsonStr, idEndpoint):
    # ('id', 'UF', 'nome')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id13(jsonStr, idEndpoint):
    # ('regiao-imediata', 'id', 'microrregiao', 'nome')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id14(jsonStr, idEndpoint):
    # ('observacoes', 'id', 'atividades', 'classe', 'descricao')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id15(jsonStr, idEndpoint):
    # ('id', 'nome', 'mesorregiao')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id16(jsonStr, idEndpoint):
    # ('titulo', 'id')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id17(jsonStr, idEndpoint):
    # ('id', 'titulo')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id18(jsonStr, idEndpoint):
    # ('conteudo',)
    
    obj = json.loads(jsonStr)
    obj = obj["conteudo"]
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id19(jsonStr, idEndpoint):
    # ('id', 'descricao', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id20(jsonStr, idEndpoint):
    # ('_links', '_embedded')
    
    obj = json.loads(jsonStr)
    obj = obj["_embedded"]
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id21(jsonStr, idEndpoint):
    # ('data', 'totalRegistros', 'totalPaginas', 'numeroPagina', 'paginasRestantes', 'empty')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id22(jsonStr, idEndpoint):
    # ('valorContrapartida', 'dataConclusao', 'dataUltimaLiberacao', 'dataReferencia', 'localidadePessoa', 'valorDaUltimaLiberacao', 'dataFinalVigencia', 'unidadeGestora', 'dataPublicacao', 'subfuncao', 'tipoInstrumento', 'valorLiberado', 'municipioConvenente', 'valor', 'numeroProcesso', 'id', 'dataInicioVigencia', 'dimConvenio', 'orgao', 'situacao', 'convenente')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id23(jsonStr, idEndpoint):
    # ('dataCalculoAltitude', 'itinerario', 'longitudeGMS', 'datumGravidade', 'codigoEstacao', 'sigmaLongitude', 'observacao', 'altitudeOrtometrica', 'dataCalculoCoordenada', 'numeroGeopotencial', 'sistemaReferenciaCoordenada', 'nomeEstacao', 'longitude', 'dataVisita', 'fonteCoordenada', 'sigmaLatitude', 'latitude', 'fonteAltitude', 'latitudeGMS', 'sigmaAltitude', 'idAjusteRN', 'dataMedicaoAltitude', 'municipio', 'tipoLocal', 'notaAjusteRN', 'altitudeNormal', 'dataCalculoGravidade', 'datumAltitude', 'descricaoEstacao', 'tipoEstacao', 'localizacao', 'sigmaAltitudeGeometrica', 'altitudeGeometrica', 'fonteAltitudeGeometrica', 'codigoEstacaoMaterializada', 'dataMedicaoCoordenada', 'dataMedicaoGravidade', 'tema', 'situacao', 'inscricaoChapa', 'valorGravidade')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id24(jsonStr, idEndpoint):
    # ('id', 'regiao-intermediaria', 'nome')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id25(jsonStr, idEndpoint):
    # ('id', 'sub-regioes-metropolitanas', 'UF', 'nome', 'municipios')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id26(jsonStr, idEndpoint):
    # ('codigo', 'descricao', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id27(jsonStr, idEndpoint):
    # ('id', 'licitacao', 'modalidadeLicitacao', 'dataReferencia', 'instrumentoLegal', 'dataAbertura', 'dataPublicacao', 'unidadeGestora', 'dataResultadoCompra', 'valor', 'situacaoCompra', 'municipio')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id28(jsonStr, idEndpoint):
    # ('id', 'descricao')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id29(jsonStr, idEndpoint):
    # ('count', 'page', 'totalPages', 'nextPage', 'previousPage', 'showingFrom', 'showingTo', 'items')
    
    obj = json.loads(jsonStr)
    obj = obj["items"]
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id30(jsonStr, idEndpoint):
    # ('observacoes', 'id', 'divisao', 'descricao')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id31(jsonStr, idEndpoint):
    # ('catId', 'id', 'path', 'alias', 'tipo', 'catTitle', 'parentCatId', 'titulo', 'parentCatTitle', 'sigla')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id32(jsonStr, idEndpoint):
    # ('origem', 'resultado', 'tipo_conversao')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id33(jsonStr, idEndpoint):
    # ('id', 'nome', 'agregados')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id34(jsonStr, idEndpoint):
    # ('id', 'literals', 'modificacao')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id35(jsonStr, idEndpoint):
    # ('size', 'total_elements', 'total_pages', 'page', 'page_elements', 'content', '_links')
    
    obj = json.loads(jsonStr)
    obj = obj["content"]
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id36(jsonStr, idEndpoint):
    # ('co_servico', 'co_conjunto_materiais', 'no_servico', 'no_conjunto_materiais', 'ds_detalhada', 'qt_material_alt', 'no_unidade_medida', 'vr_estimado', 'no_marca_material', 'ds_tipo_fornecedor_vencedor', 'nu_cpf_vencedor', 'nu_cnpj_vencedor', 'fornecedor', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id37(jsonStr, idEndpoint):
    # ('codigo', 'descricao', 'codigo_grupo', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id38(jsonStr, idEndpoint):
    # ('count', '_embedded', 'total', '_links')
    
    obj = json.loads(jsonStr)
    obj = obj["_embedded"]
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id39(jsonStr, idEndpoint):
    # ('status', 'title', 'detail', 'instance', 'code')
    # endpoint com erro na hora de importar
    
    """
    obj = json.loads(jsonStr)
    obj = obj
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    """

def navegador_id40(jsonStr, idEndpoint):
    # ('Erro na API',)
    # erro na api
    
    """
    obj = json.loads(jsonStr)
    obj = obj
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    """
    

def navegador_id41(jsonStr, idEndpoint):
    # ('id', 'dataMesReferencia', 'dataSaque', 'portaria', 'dataEmissaoParcela', 'situacao', 'pessoaSeguroDefeso', 'rgp', 'valor', 'parcela', 'municipio')
    
    obj = json.loads(jsonStr)
        
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id42(jsonStr, idEndpoint):
    # ('id', 'dataMesReferencia', 'valor', 'beneficiarioSafra', 'municipio')
    
    obj = json.loads(jsonStr)
        
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id43(jsonStr, idEndpoint):
    # ('id', 'dataMesReferencia', 'beneficiarioPeti', 'dataDisponibilizacaoRecurso', 'situacao', 'valor', 'municipio')
    
    obj = json.loads(jsonStr)
        
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id44(jsonStr, idEndpoint):
    # ('id', 'dataMesReferencia', 'quantidadeDependentes', 'dataMesCompetencia', 'valor', 'titularBolsaFamilia', 'municipio')
    
    obj = json.loads(jsonStr)
        
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id45(jsonStr, idEndpoint):
    # ('id', 'enquadramentoAuxilioEmergencial', 'numeroParcela', 'mesDisponibilizacao', 'responsavelAuxilioEmergencial', 'beneficiario', 'situacaoAuxilioEmergencial', 'valor', 'municipio')
    
    obj = json.loads(jsonStr)
        
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id46(jsonStr, idEndpoint):
    # ('id', 'dataMesReferencia', 'valorSaque', 'dataSaque', 'dataMesCompetencia', 'beneficiarioAuxilioBrasil', 'municipio')
    
    obj = json.loads(jsonStr)
        
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id47(jsonStr, idEndpoint):
    # ('descricao', 'codigo')
    
    obj = json.loads(jsonStr)
        
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id48(jsonStr, idEndpoint):
    # ('empenhoResumido', 'empenho', 'observacao', 'valor', 'dataEmissao')
    
    obj = json.loads(jsonStr)
        
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id49(jsonStr, idEndpoint):
    # ('id', 'objeto', 'fundamentoLegal', 'unidadeGestoraCompras', 'valorInicialCompra', 'dataFimVigencia', 'valorFinalCompra', 'situacaoContrato', 'dataInicioVigencia', 'modalidadeCompra', 'fornecedor', 'dataAssinatura', 'compra', 'dataPublicacaoDOU', 'numero', 'unidadeGestora', 'numeroProcesso')
    
    obj = json.loads(jsonStr)
        
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id50(jsonStr, idEndpoint):
    # ('data', 'documentoResumido', 'especie', 'observacao', 'ug', 'favorecidoListaFaturas', 'codigoOrgaoSuperior', 'uo', 'fase', 'modalidade', 'favorecido', 'ufFavorecido', 'grupo', 'elemento', 'funcao', 'codigoUg', 'acao', 'planoOrcamentario', 'subfuncao', 'nomeFavorecido', 'orgaoSuperior', 'favorecidoIntermediario', 'codigoUo', 'localizadorGasto', 'subTitulo', 'valor', 'programa', 'numeroProcesso', 'codigoFavorecido', 'autor', 'codigoOrgao', 'orgao', 'categoria', 'documento')
    
    obj = json.loads(jsonStr)
        
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id51(jsonStr, idEndpoint):
    # ('id', 'dataReferencia', 'dataInicioSancao', 'dataFimSancao', 'dataPublicacaoSancao', 'dataTransitadoJulgado', 'dataOrigemInformacao', 'tipoSancao', 'fonteSancao', 'fundamentacao', 'orgaoSancionador', 'sancionado', 'pessoa', 'textoPublicacao', 'linkPublicacao', 'detalhamentoPublicacao', 'numeroProcesso', 'abrangenciaDefinidaDecisaoJudicial', 'informacoesAdicionaisDoOrgaoSancionador')
    
    obj = json.loads(jsonStr)
        
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id52(jsonStr, idEndpoint):
    # ('id', 'dataInicioAcordo', 'dataFimAcordo', 'orgaoResponsavel', 'situacaoAcordo', 'sancoes', 'quantidade')
    
    obj = json.loads(jsonStr)
        
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id53(jsonStr, idEndpoint):
    # ('id', 'descricao', 'grupo', 'observacoes')
    
    obj = json.loads(jsonStr)
        
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id54(jsonStr, idEndpoint):
    # ('observacoes', 'id', 'grupo', 'descricao')
    
    obj = json.loads(jsonStr)
        
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id55(jsonStr, idEndpoint):
    # ('observacoes', 'id', 'secao', 'descricao')
    
    obj = json.loads(jsonStr)
        
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id56(jsonStr, idEndpoint):
    # ('fator_conversao', 'incerteza', 'lat', 'long', 'modelo')
    
    obj = json.loads(jsonStr)
        
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id57(jsonStr, idEndpoint):
    # ('id', 'nome', 'UF')
    
    obj = json.loads(jsonStr)
        
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id58(jsonStr, idEndpoint):
    # ('id', 'sigla', 'nome')
    
    obj = json.loads(jsonStr)
        
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id59(jsonStr, idEndpoint):
    # ('id', 'municipios', 'nome')
    
    obj = json.loads(jsonStr)
        
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id60(jsonStr, idEndpoint):
    # ('regiao', 'id', 'sigla', 'nome')
    
    obj = json.loads(jsonStr)
        
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id61(jsonStr, idEndpoint):
    # ('queueDuration', 'queryDurAction', 'results')
    
    obj = json.loads(jsonStr)
    obj = obj["results"]
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id62(jsonStr, idEndpoint):
    # ('nr_cnpj_entidade', 'sg_uf', 'no_ente', 'nr_notificacao', 'no_tipo_documento', 'no_item_analise', 'no_situacao_item_analise', 'dt_notificao', 'dt_preclusao', 'dt_resposta', 'nr_prazo_resposta')
    
    obj = json.loads(jsonStr)
        
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id63(jsonStr, idEndpoint):
    # ('id', 'nome', 'nivel')
    
    obj = json.loads(jsonStr)
        
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id64(jsonStr, idEndpoint):
    # ('id', 'nome', 'URL', 'pesquisa', 'assunto', 'periodicidade', 'nivelTerritorial', 'variaveis')
    
    obj = json.loads(jsonStr)
        
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id65(jsonStr, idEndpoint):
    # ('id', 'variavel', 'unidade', 'resultados')
    
    obj = json.loads(jsonStr)
        
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id66(jsonStr, idEndpoint):
    # ('registro_ans', 'cnpj', 'razao_social', 'nome_fantasia', 'ativa', 'email', 'site', 'representante_nome', 'representante_cargo', 'autorizacao_funcionamento_em', 'concessao_registro_definitivo_em', 'registrada_em', 'classificacao_sigla', 'classificacao_nome', 'segmentacao_sigla', 'segmentacao_nome', 'endereco_logradouro', 'endereco_numero', 'endereco_complemento', 'endereco_bairro', 'endereco_cep', 'endereco_municipio_codigo', 'endereco_municipio_nome', 'endereco_uf_sigla', 'endereco_valido', 'telefone_ddd', 'telefone_numero', 'fax_ddd', '_links')
    
    obj = json.loads(jsonStr)
        
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id67(jsonStr, idEndpoint):
    # ('registro_ans', 'cnpj', 'razao_social', 'nome_fantasia', 'ativa', 'representante_nome', 'representante_cargo', 'autorizacao_funcionamento_em', 'concessao_registro_definitivo_em', 'registrada_em', 'descredenciada_em', 'descredenciamento_motivo', 'classificacao_sigla', 'classificacao_nome', 'endereco_logradouro', 'endereco_numero', 'endereco_complemento', 'endereco_bairro', 'endereco_cep', 'endereco_municipio_codigo', 'endereco_municipio_nome', 'endereco_uf_sigla', 'endereco_valido', 'telefone_ddd', 'telefone_numero', 'fax_ddd', '_links')
    
    obj = json.loads(jsonStr)
        
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id68(jsonStr, idEndpoint):
    # ('sigla', 'nome', '_links')
    
    obj = json.loads(jsonStr)
        
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id69(jsonStr, idEndpoint):
    # ('nome', 'versao')
    
    obj = json.loads(jsonStr)
        
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id70(jsonStr, idEndpoint):
    # ('id', 'tipo', 'tema_id', 'subTemas', 'titulo', 'imagem')
    
    obj = json.loads(jsonStr)
        
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id71(jsonStr, idEndpoint):
    # ('id', 'titulo', 'imagem', 'tipo')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id72(jsonStr, idEndpoint):
    # ('id', 'nome', 'URL', 'pesquisa', 'assunto', 'periodicidade', 'nivelTerritorial', 'variaveis', 'classificacoes')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id73(jsonStr, idEndpoint):
    # ('id_pleito', 'num_pvl', 'num_processo', 'indicador_liberacoes', 'ano', 'divida_consolidada_amortizacao', 'divida_consolidada_encargos', 'operacoes_contratadas_amortizacao', 'operacoes_contratadas_encargos', 'total_amorizacao', 'total_encargos', 'indicador_div_moeda_estrang')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id74(jsonStr, idEndpoint):
    # ('id_pleito', 'num_pvl', 'num_processo', 'sn_pvl_tramitacao_deferido', 'pleito_nao_contratado', 'num_pvl_nao_contratado', 'num_processo_nao_contratado', 'moeda_pvl_nao_contratado', 'valor_pvl_nao_contratado', 'status_pvl_nao_contratado', 'ano_pvl_nao_contratado', 'contrapartida_pvl_nao_contratado', 'liberacao_pvl_nao_contratado', 'amortizacao_pvl_nao_contratado', 'encargos_pvl_nao_contratado', 'liberacoes_pvl_nao_contratado')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id75(jsonStr, idEndpoint):
    # ('tipos_unidade',)
    
    obj = json.loads(jsonStr)
    obj = obj["tipos_unidade"]
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id76(jsonStr, idEndpoint):
    # ('codigo_tipo_unidade', 'descricao_tipo_unidade')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id77(jsonStr, idEndpoint):
    # ('estabelecimentos',)
    
    obj = json.loads(jsonStr)
    obj = obj["estabelecimentos"]
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id78(jsonStr, idEndpoint):
    # ('codigo_cnes', 'numero_cnpj_entidade', 'nome_razao_social', 'nome_fantasia', 'natureza_organizacao_entidade', 'tipo_gestao', 'descricao_nivel_hierarquia', 'descricao_esfera_administrativa', 'codigo_tipo_unidade', 'codigo_cep_estabelecimento', 'endereco_estabelecimento', 'numero_estabelecimento', 'bairro_estabelecimento', 'numero_telefone_estabelecimento', 'latitude_estabelecimento_decimo_grau', 'longitude_estabelecimento_decimo_grau', 'endereco_email_estabelecimento', 'numero_cnpj', 'codigo_identificador_turno_atendimento', 'descricao_turno_atendimento', 'estabelecimento_faz_atendimento_ambulatorial_sus', 'codigo_estabelecimento_saude', 'codigo_uf', 'codigo_municipio', 'descricao_natureza_juridica_estabelecimento', 'codigo_motivo_desabilitacao_estabelecimento', 'estabelecimento_possui_centro_cirurgico', 'estabelecimento_possui_centro_obstetrico', 'estabelecimento_possui_centro_neonatal', 'estabelecimento_possui_atendimento_hospitalar', 'estabelecimento_possui_servico_apoio', 'estabelecimento_possui_atendimento_ambulatorial', 'codigo_atividade_ensino_unidade', 'codigo_natureza_organizacao_unidade', 'codigo_nivel_hierarquia_unidade', 'codigo_esfera_administrativa_unidade', 'data_atualizacao')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id79(jsonStr, idEndpoint):
    # ('estados_nutricionais',)
    
    obj = json.loads(jsonStr)
    obj = obj["estados_nutricionais"]
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id80(jsonStr, idEndpoint):
    # ('took', 'timed_out', '_shards', 'hits')
    
    obj = json.loads(jsonStr)
    obj = obj["hits"]["hits"][0]["_source"]
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id81(jsonStr, idEndpoint):
    # ('identificador', 'uasg', 'modalidade_licitacao', 'numero_aviso_licitacao', 'codigo_contrato', 'licitacao_associada', 'origem_licitacao', 'numero', 'objeto', 'numero_aditivo', 'numero_processo', 'cpfContratada', 'cnpj_contratada', 'data_assinatura', 'fundamento_legal', 'data_inicio_vigencia', 'data_termino_vigencia', 'valor_inicial', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id82(jsonStr, idEndpoint):
    # ('contrato', 'uasg', 'codigo', 'numero', 'modalidade_termo', 'numero_termo', 'objeto_aditivo', 'fundamento_legal_aditivo', 'data_assinatura_aditivo', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id83(jsonStr, idEndpoint):
    # ('contrato', 'uasg', 'codigo', 'numero', 'numero_apostilamento', 'data_apostilamento', 'motivo_apostilamento', 'valor_apostilamento', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id84(jsonStr, idEndpoint):
    # ('id', 'codigo_contrato', 'numero', 'receita_despesa', 'orgao_codigo', 'orgao_nome', 'unidade_codigo', 'unidade_nome_resumido', 'unidade_nome', 'unidade_origem_codigo', 'unidade_origem_nome', 'codigo_tipo', 'tipo', 'categoria', 'processo', 'objeto', 'fundamento_legal', 'data_assinatura', 'data_publicacao', 'vigencia_inicio', 'vigencia_fim', 'valor_inicial', 'valor_global', 'num_parcelas', 'valor_parcela', 'valor_acumulado', 'fornecedor_tipo', 'fornecedor_cnpj_cpf_idgener', 'fornecedor_nome', 'codigo_compra', 'modalidade_codigo', 'modalidade', 'unidade_compra', 'licitacao_numero', 'informacao_complementar', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id85(jsonStr, idEndpoint):
    # ('id', 'contrato_id', 'tipo', 'numero', 'receita_despesa', 'observacao', 'mes_ref', 'ano_ref', 'vencimento', 'retroativo', 'valor', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id86(jsonStr, idEndpoint):
    # ('id', 'contrato_id', 'tipo_id', 'recorrencia_id', 'descricao_complementar', 'vencimento', 'valor', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id87(jsonStr, idEndpoint):
    # ('id', 'contrato_id', 'tipo_lista_fatura_id', 'justificativa_fatura_id', 'numero', 'emissao', 'prazo', 'vencimento', 'valor', 'juros', 'multa', 'glosa', 'valor_liquido', 'processo', 'protocolo', 'ateste', 'repactuacao', 'informacao_complementar', 'mesref', 'anoref', 'situacao', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id88(jsonStr, idEndpoint):
    # ('id', 'contrato_id', 'tipo', 'valor', 'vencimento', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id89(jsonStr, idEndpoint):
    # ('id', 'contrato_id', 'receita_despesa', 'numero', 'observacao', 'ug', 'gestao', 'fornecedor', 'codigo_tipo', 'tipo', 'categoria', 'processo', 'objeto', 'fundamento_legal_aditivo', 'informacao_complementar', 'modalidade', 'licitacao_numero', 'codigo_unidade_origem', 'nome_unidade_origem', 'data_assinatura', 'data_publicacao', 'vigencia_inicio', 'vigencia_fim', 'valor_inicial', 'valor_global', 'num_parcelas', 'valor_parcela', 'novo_valor_global', 'novo_num_parcelas', 'novo_valor_parcela', 'data_inicio_novo_valor', 'retroativo', 'retroativo_mesref_de', 'retroativo_anoref_de', 'retroativo_mesref_ate', 'retroativo_anoref_ate', 'retroativo_vencimento', 'retroativo_valor', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id90(jsonStr, idEndpoint):
    # ('id', 'contrato_id', 'tipo_id', 'grupo_id', 'catmatser_item_id', 'descricao_complementar', 'quantidade', 'valor_unitario', 'valor_total', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id91(jsonStr, idEndpoint):
    # ('id', 'contrato_id', 'doc_formalizacao', 'informacao_complementar', 'data_inicio', 'data_fim', 'situacao', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id92(jsonStr, idEndpoint):
    # ('id', 'contrato_id', 'funcao_id', 'instalacao_id', 'portaria', 'situacao', 'data_inicio', 'data_fim', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id93(jsonStr, idEndpoint):
    # ('id', 'contrato_id', 'funcao', 'descricao_complementar', 'jornada', 'unidade', 'custo', 'escolaridade', 'data_inicio', 'data_fim', 'situacao', 'aux_transporte', 'vale_alimentacao', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id94(jsonStr, idEndpoint):
    # ('id', 'descricao', 'codigo_longo', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id95(jsonStr, idEndpoint):
    # ('id', 'nome', 'cpf', 'id_unidade_cadastradora', 'id_municipio', 'uf', 'caixa_postal', 'ativo', 'recadastrado', 'habilitado_licitar', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id96(jsonStr, idEndpoint):
    # ('id', 'cnpj', 'razao_social', 'nome_fantasia', 'id_unidade_cadastradora', 'id_natureza_juridica', 'id_ramo_negocio', 'id_porte_empresa', 'id_cnae', 'id_cnae2', 'logradouro', 'numero_logradouro', 'complemento_logradouro', 'bairro', 'id_municipio', 'cep', 'caixa_postal', 'ativo', 'recadastrado', 'habilitado_licitar', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id97(jsonStr, idEndpoint):
    # ('id', 'codigo_servico', 'codigo_material', 'tipo', 'ativo', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id98(jsonStr, idEndpoint):
    # ('id', 'codigo_ibge', 'nome', 'nome_uf', 'sigla_uf', 'ativo', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id99(jsonStr, idEndpoint):
    # ('id', 'codigo', 'descricao', 'ativo', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id100(jsonStr, idEndpoint):
    # ('id', 'cnpj', 'cpf', 'tipo_pessoa', 'descricao', 'numero_contrato', 'numero_processo', 'id_unidade_cadastradora', 'id_orgao', 'id_tipo_ocorrencia', 'id_ambito_ocorrencia', 'motivo', 'impedido_licitar', 'id_prazo', 'data_aplicacao', 'data_inicial', 'data_final', 'valor_multa', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id101(jsonStr, idEndpoint):
    # ('id', 'descricao', 'ativo', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id102(jsonStr, idEndpoint):
    # ('uasg', 'numero_irp', 'modalidade_licitacao', 'numero_aviso', 'tipo_licitacao', 'justificativa_modalidade', 'objeto', 'cpf_responsavel', 'nome_responsavel', 'prazo_validade', 'municipio', 'sigla_uf', 'situacao', 'orgao', 'data_provavel_licitacao', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id103(jsonStr, idEndpoint):
    # ('uasg', 'numero_irp', 'numero_item', 'id_irp', 'modalidade_licitacao_item', 'criterio_julgamento', 'codigo_material', 'codigo_servico', 'descricao_detalhada', 'tipo', 'unidade_fornecimento', 'valor_estimado', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id104(jsonStr, idEndpoint):
    # ('uasg', 'modalidade', 'numero_aviso', 'identificador', 'numero_item_licitacao', 'tipo_pregao', 'situacao_aviso', 'objeto', 'codigo_do_item_no_catalogo', 'informacoes_gerais', 'numero_processo', 'tipo_recurso', 'numero_itens', 'nome_responsavel', 'funcao_responsavel', 'data_entrega_edital', 'endereco_entrega_edital', 'data_abertura_proposta', 'data_entrega_proposta', 'data_publicacao', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id105(jsonStr, idEndpoint):
    # ('uasg', 'modalidade', 'numero_aviso', 'numero_licitacao', 'numero_item_licitacao', 'codigo_item_servico', 'codigo_item_material', 'descricao_item', 'sustentavel', 'quantidade', 'unidade', 'cnpj_fornecedor', 'cpfVencedor', 'beneficio', 'valor_estimado', 'decreto_7174', 'criterio_julgamento', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id106(jsonStr, idEndpoint):
    # ('codigo', 'nome', 'codigo_tipo_adm', 'codigo_tipo_esfera', 'codigo_tipo_poder', 'ativo', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id107(jsonStr, idEndpoint):
    # ('uasg', 'modalidade', 'numero_aviso', 'objeto', 'situacao', 'id_licitacao', 'numero_itens', 'valor_total', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id108(jsonStr, idEndpoint):
    # ('uasg', 'modalidade', 'numero_aviso', 'numero_item_licitacao', 'codigo_item_material', 'codigo_item_servico', 'cnpj_fornecedor', 'marca', 'unidade', 'quantidade', 'valor_unitario', 'valor_total', 'beneficio', '_links', 'id_licitacao')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id109(jsonStr, idEndpoint):
    # ('error',)
    #Documento não encontrado
    
    """
    obj = json.loads(jsonStr)
    obj = obj
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    """

def navegador_id110(jsonStr, idEndpoint):
    # ('uasg', 'modalidade', 'numero_aviso', 'numero_registro_preco', 'numero_item_licitacao', 'codigo_item_material', 'codigo_item_servico', 'descricao_detalhada', 'marca', 'cnpj_fornecedor', 'classificacaoFornecedor', 'unidade', 'quantidade_empenhada', 'quantidade_total', 'quantidade_a_empenhar', 'valor_unitario', 'valor_total', 'data_assinatura', 'data_inicio_validade', 'data_fim_validade', 'beneficio', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id111(jsonStr, idEndpoint):
    # ('id', 'nome', 'nome_mnemonico', 'id_orgao', 'id_orgao_superior', 'id_municipio', 'sigla_uf', 'cnpj', 'endereco', 'cep', 'ddd', 'telefone', 'ramal', 'telefone2', 'ramal2', 'fax', 'total_fornecedores_cadastrados', 'total_fornecedores_recadastrados', 'unidade_cadastradora', 'ativo', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id112(jsonStr, idEndpoint):
    # ('uasg', 'modalidade', 'numero_aviso', 'identificador', 'situacao_aviso', 'objeto', 'informacoes_gerais', 'numero_processo', 'tipo_recurso', 'numero_itens', 'nome_responsavel', 'funcao_responsavel', 'data_entrega_edital', 'endereco_entrega_edital', 'data_abertura_proposta', 'data_entrega_proposta', 'data_publicacao', 'forma_de_realizacao_licitacao', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id113(jsonStr, idEndpoint):
    # ('numero', 'co_portaria', 'dtPortaria', 'co_processo', 'ds_tipo_pregao', 'ds_tipo_pregao_compra', 'tx_objeto', 'valorHomologadoTotal', 'valorEstimadoTotal', 'co_uasg', 'ds_situacao_pregao', 'dtDataEdital', 'dtInicioProposta', 'dtFimProposta', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id114(jsonStr, idEndpoint):
    # ('descricao_item', 'quantidade_item', 'valor_estimado_item', 'descricao_detalhada_item', 'tratamento_diferenciado', 'decreto_7174', 'margem_preferencial', 'unidade_fornecimento', 'situacao_item', 'fornecedor_vencedor', 'menor_lance', 'valorHomologadoItem', 'valor_negociado', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id115(jsonStr, idEndpoint):
    # ('codigo', 'descricao', 'id_grupo', 'id_classe', 'id_pdm', 'status', 'sustentavel', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id116(jsonStr, idEndpoint):
    # ('codigo', 'descricao', 'codigo_secao', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id117(jsonStr, idEndpoint):
    # ('codigo', 'descricao', 'codigo_divisao', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id118(jsonStr, idEndpoint):
    # ('codigo', 'descricao', 'codigo_classe', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id119(jsonStr, idEndpoint):
    # ('codigo', 'descricao', 'unidade_medida', 'cpc', 'codigo_secao', 'codigo_divisao', 'codigo_grupo', 'codigo_classe', 'codigo_subclasse', '_links')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id120(jsonStr, idEndpoint):
    # ('data',)
    
    obj = json.loads(jsonStr)
    obj = obj["data"]
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id121(jsonStr, idEndpoint):
    # ('etapa', 'providencia', 'area', 'enquadramento', 'objetivos', 'ficha_tecnica', 'situacao', 'outras_fontes', 'acessibilidade', 'sinopse', 'nome', 'cgccpf', 'mecanismo', '_links', 'segmento', 'PRONAC', 'estrategia_execucao', 'valor_aprovado', 'justificativa', 'resumo', 'valor_solicitado', 'especificacao_tecnica', '_embedded', 'municipio', 'data_termino', 'UF', 'impacto_ambiental', 'democratizacao', 'valor_projeto', 'proponente', 'ano_projeto', 'data_inicio', 'valor_captado', 'valor_proposta')
    
    obj = json.loads(jsonStr)
    obj = obj
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id122(jsonStr, idEndpoint):
    # ('_embedded', '_links')
    
    obj = json.loads(jsonStr)
    obj = obj["_embedded"]["areas"][0]
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id123(jsonStr, idEndpoint):
    # ('data_arquivamento', 'acessibilidade', 'impacto_ambiental', 'nome', 'democratizacao', 'justificativa', 'mecanismo', 'resumo', 'sinopse', 'especificacao_tecnica', 'data_inicio', 'objetivos', 'ficha_tecnica', 'etapa', 'data_aceite', 'id', 'estrategia_execucao', 'data_termino')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id124(jsonStr, idEndpoint):
    # ('nome', 'cgccpf', 'total_doado', '_links', 'tipo_pessoa', 'responsavel', 'UF', 'municipio')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id125(jsonStr, idEndpoint):
    # ('cgccpf', '_links', 'email', 'nome')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id126(jsonStr, idEndpoint):
    # ('count', '_embedded')
    
    obj = json.loads(jsonStr)
    obj = obj["_embedded"]["proponentes"][0]
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id127(jsonStr, idEndpoint):
    # ('nome', 'cgccpf', '_links', 'tipo_pessoa', 'responsavel', 'UF', 'total_captado', 'municipio')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id128(jsonStr, idEndpoint):
    # ('id', 'viagem', 'situacao', 'beneficiario', 'cargo', 'funcao', 'tipoViagem', 'orgao', 'orgaoPagamento', 'unidadeGestoraResponsavel', 'dataInicioAfastamento', 'dataFimAfastamento', 'valorTotalRestituicao', 'valorTotalTaxaAgenciamento', 'valorMulta', 'valorTotalDiarias', 'valorTotalPassagem', 'valorTotalViagem', 'valorTotalDevolucao')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id129(jsonStr, idEndpoint):
    # ('id', 'dataInicioOcupacao', 'valorPagoMes', 'cargo', 'permissionario', 'pessoaPermissionario', 'orgaoPermissionario')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id130(jsonStr, idEndpoint):
    # ('remuneracoesDTO', 'servidor')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id131(jsonStr, idEndpoint):
    # ('qntPessoas', 'qntVinculos', 'skSituacao', 'descSituacao', 'skTipoVinculo', 'descTipoVinculo', 'skTipoServidor', 'descTipoServidor', 'licenca', 'codOrgaoExercicioSiape', 'nomOrgaoExercicioSiape', 'codOrgaoSuperiorExercicioSiape', 'nomOrgaoSuperiorExercicioSiape')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id132(jsonStr, idEndpoint):
    # ('codigoFuncaoCargo', 'descricaoFuncaoCargo')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id133(jsonStr, idEndpoint):
    # ('cpf', 'nome', 'sigla_funcao', 'descricao_funcao', 'nivel_funcao', 'cod_orgao', 'nome_orgao', 'dt_inicio_exercicio', 'dt_fim_exercicio', 'dt_fim_carencia')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id134(jsonStr, idEndpoint):
    # ('concedidoJudicialmente', 'id', 'dataMesReferencia', 'menor16anos', 'beneficiario', 'dataMesCompetencia', 'valor', 'municipio')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id135(jsonStr, idEndpoint):
    # ('razaoSocial', 'descricaoBeneficioFiscal', 'valorRenunciado', 'cnpj', 'cnaeCodigoClasse', 'codigoIBGE', 'cnaeCodigoGrupo', 'descricaoFundamentoLegal', 'uf', 'tributo', 'cnaeCodigoSubClasse', 'tipoRenuncia', 'nomeFantasia', 'formaTributacao', 'cnaeNomeClasse', 'ano', 'cnaeDivisao', 'municipio')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id136(jsonStr, idEndpoint):
    # ('beneficioFiscal', 'tipoEntidade', 'cnpj', 'cnaeCodigoClasse', 'cnaeCodigoGrupo', 'uf', 'codigoIBGEMunicipio', 'cnaeCodigoSubClasse', 'nomeFantasia', 'cnaeNomeClasse', 'beneficiario', 'cnaeDivisao', 'municipio')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id137(jsonStr, idEndpoint):
    # ('beneficioFiscal', 'fundamentoLegal', 'cnpj', 'fruicaoVigente', 'dataInicioFruicao', 'cnaeCodigoGrupo', 'cnaeCodigoClasse', 'uf', 'codigoIBGEMunicipio', 'dataFimFruicao', 'cnaeCodigoSubClasse', 'descricao', 'nomeFantasia', 'cnaeNomeClasse', 'beneficiario', 'cnaeDivisao', 'municipio')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id138(jsonStr, idEndpoint):
    # ('id', 'serie', 'dataEmissao', 'cnpjFornecedor', 'dataTipoEventoMaisRecente', 'codigoOrgaoSuperiorDestinatario', 'valorNotaFiscal', 'chaveNotaFiscal', 'orgaoSuperiorDestinatario', 'municipioFornecedor', 'numero', 'nomeFornecedor', 'orgaoDestinatario', 'tipoEventoMaisRecente', 'codigoOrgaoDestinatario')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id139(jsonStr, idEndpoint):
    # ('notaFiscalDTO', 'itensNotaFiscal', 'eventosNotaFiscal')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id140(jsonStr, idEndpoint):
    # ('id', 'licitacao', 'dataResultadoCompra', 'dataAbertura', 'dataReferencia', 'dataPublicacao', 'situacaoCompra', 'modalidadeLicitacao', 'instrumentoLegal', 'valor', 'municipio', 'unidadeGestora')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id141(jsonStr, idEndpoint):
    # ('descricaoPoder', 'nome', 'orgaoVinculado', 'orgaoMaximo', 'codigo')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id142(jsonStr, idEndpoint):
    # ('tipoParticipante', 'nome', 'cpfCnpj', 'idParticipante')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id143(jsonStr, idEndpoint):
    # ('descUnidadeFornecimento', 'quantidade', 'tipoPessoa', 'idVencedor', 'nome', 'descComplementarItemCompra', 'codigoItemCompra', 'numero', 'descricao', 'valor', 'cpfCnpjVencedor')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id144(jsonStr, idEndpoint):
    # ('codigoEmenda', 'ano', 'tipoEmenda', 'autor', 'nomeAutor', 'numeroEmenda', 'localidadeDoGasto', 'funcao', 'subfuncao', 'valorEmpenhado', 'valorLiquidado', 'valorPago', 'valorRestoInscrito', 'valorRestoCancelado', 'valorRestoPago')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id145(jsonStr, idEndpoint):
    # ('especieTipo', 'fase', 'data', 'codigoDocumento', 'tipoEmenda', 'codigoDocumentoResumido')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id146(jsonStr, idEndpoint):
    # ('nomeUG', 'anoMes', 'siglaUFPessoa', 'codigoOrgaoSuperior', 'tipoPessoa', 'codigoPessoa', 'municipioPessoa', 'codigoOrgao', 'nomeOrgaoSuperior', 'nomePessoa', 'valor', 'nomeOrgao', 'codigoUG')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id147(jsonStr, idEndpoint):
    # ('liquidado', 'empenhado', 'codigoOrgao', 'orgaoSuperior', 'orgao', 'ano', 'codigoOrgaoSuperior', 'pago')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id148(jsonStr, idEndpoint):
    # ('liquidado', 'empenhado', 'funcao', 'acao', 'subfuncao', 'pago', 'codigoSubfuncao', 'ano', 'programa', 'codigoFuncao', 'codigoPrograma', 'codigoAcao')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id149(jsonStr, idEndpoint):
    # ('codigoFuncao', 'liquidado', 'empenhado', 'codigoSubfuncao', 'codigoModalidadeDespesa', 'codigoPrograma', 'codigoAcao', 'codigoGrupoDespesa', 'modalidadeDespesa', 'funcao', 'planoOrcamentario', 'acao', 'idPlanoOrcamentario', 'subfuncao', 'programa', 'elementoDespesa', 'codigoElementoDespesa', 'codigoPlanoOrcamentario', 'grupoDespesa', 'ano', 'pago')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id150(jsonStr, idEndpoint):
    # ('id', 'numAno', 'descPOIdAcompanhamento', 'codigoPrograma', 'codUnidadeOrcamentaria', 'codPOIdAcompanhamento', 'descricao', 'codigoSubFuncao', 'codigoFuncao', 'codigo', 'codigoAcao')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id151(jsonStr, idEndpoint):
    # ('codigoItemEmpenho', 'descricaoSubelemento', 'sequencial', 'codigoSubelemento', 'valorAtual', 'descricao')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id152(jsonStr, idEndpoint):
    # ('data', 'quantidade', 'operacao', 'valorTotal', 'valorUnitario')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id153(jsonStr, idEndpoint):
    # ('subitem', 'empenhoResumido', 'empenho', 'valorRestoInscrito', 'valorLiquidado', 'valorRestoPago', 'valorPago', 'valorRestoCancelado')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id154(jsonStr, idEndpoint):
    # ('data', 'documento', 'documentoResumido', 'observacao', 'funcao', 'subfuncao', 'programa', 'acao', 'subTitulo', 'localizadorGasto', 'fase', 'especie', 'favorecido', 'codigoFavorecido', 'nomeFavorecido', 'ufFavorecido', 'valor', 'codigoUg', 'ug', 'codigoUo', 'uo', 'codigoOrgao', 'orgao', 'codigoOrgaoSuperior', 'orgaoSuperior', 'categoria', 'grupo', 'elemento', 'modalidade', 'numeroProcesso', 'planoOrcamentario', 'autor', 'favorecidoIntermediario', 'favorecidoListaFaturas')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id155(jsonStr, idEndpoint):
    # ('fase', 'data', 'documentoResumido', 'favorecido', 'especie', 'orgaoSuperior', 'orgaoVinculado', 'unidadeGestora', 'valor', 'elementoDespesa', 'documento')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id156(jsonStr, idEndpoint):
    # ('codigoFuncao', 'liquidado', 'empenhado', 'codigoSubfuncao', 'codigoModalidadeDespesa', 'codigoPrograma', 'codigoAcao', 'codigoGrupoDespesa', 'modalidadeDespesa', 'funcao', 'idPlanoOrcamentario', 'acao', 'planoOrcamentario', 'subfuncao', 'mesAno', 'programa', 'elementoDespesa', 'codigoElementoDespesa', 'codigoPlanoOrcamentario', 'grupoDespesa', 'pago')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id157(jsonStr, idEndpoint):
    # ('id', 'descricao', 'codigo')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id158(jsonStr, idEndpoint):
    # ('id', 'dataReferencia', 'dataInicioVigencia', 'dataFinalVigencia', 'dataPublicacao', 'dataUltimaLiberacao', 'dataConclusao', 'dimConvenio', 'situacao', 'convenente', 'localidadePessoa', 'municipioConvenente', 'orgao', 'unidadeGestora', 'subfuncao', 'tipoInstrumento', 'valor', 'valorLiberado', 'valorContrapartida', 'valorDaUltimaLiberacao', 'numeroProcesso')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id159(jsonStr, idEndpoint):
    # ('quantidade', 'numero', 'descComplementarItemCompra', 'descricao', 'valor')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id160(jsonStr, idEndpoint):
    # ('id', 'numero', 'objeto', 'numeroProcesso', 'fundamentoLegal', 'compra', 'situacaoContrato', 'modalidadeCompra', 'unidadeGestora', 'unidadeGestoraCompras', 'dataAssinatura', 'dataPublicacaoDOU', 'dataInicioVigencia', 'dataFimVigencia', 'fornecedor', 'valorInicialCompra', 'valorFinalCompra')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id161(jsonStr, idEndpoint):
    # ('id', 'dataReferencia', 'dataInicioSancao', 'dataFimSancao', 'dataPublicacaoSancao', 'dataTransitadoJulgado', 'dataOrigemInformacao', 'tipoSancao', 'fonteSancao', 'fundamentacao', 'orgaoSancionador', 'sancionado', 'valorMulta', 'pessoa', 'textoPublicacao', 'linkPublicacao', 'detalhamentoPublicacao', 'numeroProcesso', 'abrangenciaDefinidaDecisaoJudicial', 'informacoesAdicionaisDoOrgaoSancionador')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id162(jsonStr, idEndpoint):
    # ('id', 'dataReferencia', 'pessoaJuridica', 'orgaoSuperior', 'convenio', 'motivo')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id163(jsonStr, idEndpoint):
    # ('id', 'dataReferencia', 'motivo', 'orgaoSuperior', 'pessoaJuridica', 'convenio')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id164(jsonStr, idEndpoint):
    # ('id', 'pessoa', 'fundamentacao', 'orgaoLotacao', 'dataReferencia', 'dataPublicacao', 'ufLotacaoPessoa', 'tipoPunicao', 'cargoComissao', 'punicao', 'codigoCargoComissao', 'cargoEfetivo')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id165(jsonStr, idEndpoint):
    # ('id', 'dataPublicacao', 'dataReferencia', 'punicao', 'tipoPunicao', 'pessoa', 'orgaoLotacao', 'ufLotacaoPessoa', 'cargoEfetivo', 'codigoCargoComissao', 'cargoComissao', 'fundamentacao')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id166(jsonStr, idEndpoint):
    # ('id', 'estabelecimento', 'portador', 'valorTransacao', 'dataTransacao', 'mesExtrato', 'unidadeGestora', 'tipoCartao')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id167(jsonStr, idEndpoint):
    # ('id', 'titulo', 'organizacao', 'inventario', 'descricao', 'licenca', 'responsavel', 'emailResponsavel', 'periodicidade', 'temas', 'tags', 'coberturaTemporalInicio', 'coberturaTemporalFim', 'coberturaEspacial', 'valorCoberturaEspacial', 'granularidadeEspacial', 'versao', 'atualizacaoVersao', 'visibilidade', 'statusHomologacao', 'descontinuado', 'dataDescontinuacao', 'reuso', 'recursos')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id168(jsonStr, idEndpoint):
    # ('dataAtualizacao', 'id', 'title', 'nome', 'nomeOrganizacao')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id169(jsonStr, idEndpoint):
    # ('quantidadeOrganizacoes', 'nameIcone', 'usuarioSegueTema', 'packageCount', 'imageDisplayUrl', 'icone', 'state', 'packages', 'users', 'tags', 'numFollowers', 'name', 'foto', 'iconeDisplayUrl', 'numReusos', 'displayName', 'description', 'id', 'title', 'atributos', 'nameFoto')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id170(jsonStr, idEndpoint):
    # ('id', 'name', 'displayName', 'urlFoto', 'quantidadeSeguidores', 'quantidadeConjuntoDados', 'descricao', 'nome', 'ativo', 'atributos')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id171(jsonStr, idEndpoint):
    # ('id', 'isAtualizado', 'title', 'ultimaAlteracaoMetadados', 'nome', 'ultimaAtualizacaoDados', 'catalogacao', 'nomeOrganizacao')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id172(jsonStr, idEndpoint):
    # ('descricaoTipoLocal', 'codigoTipoLocal')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id173(jsonStr, idEndpoint):
    # ('codigoSituacao', 'descricaoSituacao')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id174(jsonStr, idEndpoint):
    # ('codigoTipoEstacao', 'siglaTipoEstacao', 'descricaoTipoEstacao')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id175(jsonStr, idEndpoint):
    # ('id', 'descricao', 'secao', 'observacoes')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id176(jsonStr, idEndpoint):
    # ('id', 'descricao', 'divisao', 'observacoes')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id177(jsonStr, idEndpoint):
    # ('id', 'descricao', 'observacoes')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id178(jsonStr, idEndpoint):
    # ('id', 'descricao', 'classe', 'atividades', 'observacoes')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id179(jsonStr, idEndpoint):
    # ('fator_conversao', 'modelo', 'long', 'incerteza', 'lat')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id180(jsonStr, idEndpoint):
    # ('id', 'nome', 'microrregiao', 'regiao-imediata')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id181(jsonStr, idEndpoint):
    # ('id', 'regiao-intermediaria', 'sub-regiao', 'nome')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id182(jsonStr, idEndpoint):
    # ('id', 'nome', 'regiao-intermediaria')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id183(jsonStr, idEndpoint):
    # ('id', 'sigla', 'nome', 'regiao')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id184(jsonStr, idEndpoint):
    # ('situacao_ingles', 'categoria_ingles', 'tipo', 'tipo_ingles', 'area', 'sigla', 'data_inicio', 'data_desativacao', 'url_sidra', 'url_concla', 'periodicidade_coleta_ingles', 'periodicidade_divulgacao_ingles', 'ocorrencias_pesquisa', 'codigo', 'nome', 'nome_ingles', 'situacao', 'categoria', 'periodicidade_coleta', 'periodicidade_divulgacao', 'classificacoes_tematicas')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id185(jsonStr, idEndpoint):
    # ('mes', 'ordem_periodo', 'nome_ocorrencia_ingles', 'ano', 'nome_ocorrencia')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id186(jsonStr, idEndpoint):
    # ('periodicidade_divulgacao', 'nome', 'situacao', 'classificacoes_tematicas', 'categoria', 'nome_ingles', 'periodicidade_coleta', 'codigo')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id187(jsonStr, idEndpoint):
    # ('sexo', 'res', 'nome', 'localidade')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id188(jsonStr, idEndpoint):
    # ('sexo', 'res', 'localidade')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id189(jsonStr, idEndpoint):
    # ('id', 'unidade', 'indicador')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id190(jsonStr, idEndpoint):
    # ('series', 'id', 'unidade', 'indicador')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id191(jsonStr, idEndpoint):
    # ('id', 'unidades-monetarias', 'linguas', 'historico', 'nome', 'governo', 'localizacao', 'area')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id192(jsonStr, idEndpoint):
    # ('nota', 'periodo', 'fonte', 'publicacao', 'versao')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id193(jsonStr, idEndpoint):
    # ('id', 'nome', 'observacao', 'contexto', 'descricao', 'periodos')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id194(jsonStr, idEndpoint):
    # ('id', 'nome', 'descricao', 'contexto', 'observacao', 'periodos')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id195(jsonStr, idEndpoint):
    # ('tipo_conversao', 'resultado', 'origem')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id196(jsonStr, idEndpoint):
    # ('siglaMaregrafo', 'idUHSLC', 'idPSMSL', 'dataInicialOperacao', 'nomeMaregrafo', 'lat', 'lon', 'local', 'urlRelatorio', 'idGLOSS', 'siglaUF')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id197(jsonStr, idEndpoint):
    # ('unidadeMedida', 'codigoSensor', 'descricaoSensor', 'nomeSensor')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id198(jsonStr, idEndpoint):
    # ('dtHrPrevisao', 'previsao')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id199(jsonStr, idEndpoint):
    # ('encoder', 'dtHrLeitura', 'radar')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id200(jsonStr, idEndpoint):
    # ('direcaoVento', 'dtHrLeitura', 'pressaoAtm', 'precipitacao', 'temperaturaExt', 'velocidadeVento', 'umidadeExt')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())
    

def navegador_id201(jsonStr, idEndpoint):
    # ('siglaMaregrafo', 'dados')
    
    obj = json.loads(jsonStr)
    
    if isinstance(obj, dict):
      return list(obj.keys())
    
    if isinstance(obj, list):
      item = obj[0]
      if isinstance(item, dict):
          return list(item.keys())
      if isinstance(item,list):
          return list(item[0].keys())