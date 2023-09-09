#language: pt

@regression
@list_users
Funcionalidade: Pagina Cadastro de Produtos
   SENDO um usuário administrador do ServRest
   QUERO poder cadastrar e personalizar os produtos que irei vender
   PARA que os compradores tenham uma melhor experiência de compra

Contexto: Estar na página de Cadastro de produtos
    Dado que esteja na página na home do administrador    
  
@product_registration
Cenário: Cadastro de produtos
    Quando clicar em cadastrar produto
    E preencher os campos "<nome>""<descrição>""<preço>""<quantidade>"
    E clicar em cadastrar
    Então o produto é adicionado a lista de produtos