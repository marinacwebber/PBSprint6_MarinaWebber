#language: pt

@list_products
Funcionalidade: Pagina Listar Produtos
   SENDO um usuário administrador do ServRest
   QUERO poder interagir com as diversas opções da pagina lista de produtos
   PARA que possa ter uma melhor experiência

  Contexto: 
    Dado que esteja na pagina home apos ter logado em sua conta
  
  @product_list
  Cenário: CT022- 001 - Lista de produtos
    Quando clicar em lista de produtos
    Então devera aparecer os produtos da lista
  
  @delete_product_from_list
  Cenário:  CT022- 002 - Excluir produto da lista
    Quando clicar em lista de produtos
    E devera aparecer os produtos da lista
    E clicar no botao Excluir
    Então o produto eh excluido da lista

  @fix_later
  @edit_products
  Cenário: CT022-003 - Editar produtos da lista de compras
    Quando clicar em editar 
    Então devera alterar os campos e clicar em cadastrar
