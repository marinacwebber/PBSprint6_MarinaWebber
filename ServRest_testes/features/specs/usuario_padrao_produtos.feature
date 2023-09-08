#language: pt

@regression
@products
Funcionalidade: Comprar produtos
  COMO um usuário padrão do Front - ServRest
  QUERO poder comprar produtos de diversas formas
  PARA poder personalizar minha lista de compras

  Contexto: Estar na home
    Dado que esteja na home

  @add_by_home
  Cenário: Adicionar produto pela home
    Quando adicionar um produto da página home
    Então acessar a pagina lista de compras

  @add_by_search
  Cenário: Adicionar um produto existente pela busca      
    Quando realizar uma pesquisa por um produto existente
    Então deverao ser retornados resultados da pesquisa
  
  @search_for_products
  Esquema do Cenário: Buscar por produtos existentes
    Quando buscar pelo produto "<produto>"
    Então deverao ser retornados resultados na busca
    Exemplos:
    |    produto                |
    |    Logitech MX Vertical   |
    |    Samsung 60 polegadas   |
