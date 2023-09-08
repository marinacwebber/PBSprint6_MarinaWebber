#language: pt

Funcionalidade: Pagina Listar Produtos
   SENDO um usuário administrador do ServRest
   QUERO poder cadastrar e personalizar os produtos que irei vender
   PARA que os compradores tenham uma melhor experiência de compra

  Contexto: Estar na página de Cadastro de produtos
    Dado que esteja na página na home do administrador
    Quando clicar em cadastrar produto
    E preencher os campos "<nome>""<descrição>""<preço>""<quantidade>"
    E clicar em cadastrar
    E o produto é adicionado a lista de produtos 

  Cenário: Excluir produto da lista
    Quando clicar no botao Excluir
    Então o produto é excluido da lista

