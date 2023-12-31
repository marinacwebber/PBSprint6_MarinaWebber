#language: pt

@shop_list
Funcionalidade: Lista de compras
  SENDO um usuário padrão do ServRest
  QUERO poder personalizar os produtos que irei comprar na página lista de compras
  PARA ter uma melhor experiencia de comprar

Contexto: Estar na página lista de compras
  Dado que esteja na pagina lista de compras depois de ter adicionado um produto

@increase_quantity_product
Cenário: CT004-001 - Validação do botão de incremento
  Quando aumentar a quantidade do produto 
  Então devera aumentar a quantidade exibida na lista de compras

@clear_the_list
Cenário: CT004-002 - Limpar a lista de compra
  Quando clica em limpar a lista
  Então a lista de compras fica vazia

@add_to_card
Cenário: CT004-003 - Adicionar as compras ao carrinho
  Quando clica em acidionar no carrinho 
  Então o usuario e direcionado para a pagina do carrinho