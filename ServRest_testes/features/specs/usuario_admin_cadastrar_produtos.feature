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
      |  nome                |  preco  |  descricao   |  quantidade  |  mensagem                               |
      |                      |  15     |  caneta bic  |  100         |  Nome não pode ficar em branco          |
      | Borracha             |         |  borracha    |  150         |  Preco é obrigatório                    |
      | Caneta               |  30     |  caneta esf  |  -2          |  Quantidade deve ser maior ou igual a 0 |
      | Logitech MX Vertical |  30     |  Logitech    |  10          |  Já existe produto com esse nome        |
      | Caderno              |  23     |  Caderno     |  50          |                                         |
    
    Cenário: CT023-002- Validação campo preço
      Quando preencher o campo preco com numero decimal
      Então devera aceitar o valor e cadastrar o produto com sucesso