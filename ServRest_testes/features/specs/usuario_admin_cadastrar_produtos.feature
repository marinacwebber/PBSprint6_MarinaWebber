#language: pt

@list_users
Funcionalidade: Pagina Cadastro de Produtos
   SENDO um usuário administrador do ServRest
   QUERO poder cadastrar e personalizar os produtos que irei vender
   PARA que os compradores tenham uma melhor experiência de compra

    Contexto: Estar na página pagina home
      Dado que esteja na pagina home apos ter logado em sua conta
  
    @product_registration
    Cenário: CT021-001 - Cadastro de produtos
      Quando clicar em cadastrar produto
      E preencher os campos "<nome>""<preco>""<descricao>""<quantidade>"
      Então o sistema devera exibir uma "<mensagem>"
      Exemplos:
      |  nome   | preco | descricao | quantidade  |  mensagem                               |
      |         |  ?    |  ???      |  ??         |  Nome não pode ficar em branco          |
      | ??      |       |  ???      |  ??         |  Preco é obrigatório                    |
      | ??      |  ?    |  ???      |  -2         |  Quantidade deve ser maior ou igual a 0 |
      | ???     |  ?    |  ???      |  ??         |  Já existe produto com esse nome        |
      | ??      |  0    |  ???      |  ??         |  Preco deve ser um número positivo      |
    
    @fix_later
    @decimal_price
    Cenário: CT023-002- Validação campo preço
      Quando preencher o campo preco com numero decimal e os demais campos corretamente
      Então devera aceitar o valor e cadastrar o produto com sucesso