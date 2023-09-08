#language: pt

@regression
@purchase_list
Funcionalidade: Lista de compras
  SENDO um usuário padrão do website Front - ServRest
  QUERO poder personalizar os produtos que irei comprar
  PARA ter uma melhor experiência de comprar nesse website

  Contexto: Estar na pagina home
    Dado que esteja na home
    Quando adicionar um produto da página home
    E acessar a pagina lista de compras

  @increase_product_quantity
  Cenário: Aumentar a quantidade do produto na lista de compras
    Quando aumentar a quantidade do produto
    Então devera aumentar a quantidade exibida na lista de compras

  @direct_to_cart
  Cenário: Direcionar para o carrinho
    Quando clica no botão de adicionar ao carrinho 
    Então será direcionado para a pagina do carrinho

  @clear_shopping_list
  Cenário: Limpar a lista pela lista de compras
    Quando clica no botão para limpar a lista 
    Então mostrada uma mensagem que o carrinho está vazio

