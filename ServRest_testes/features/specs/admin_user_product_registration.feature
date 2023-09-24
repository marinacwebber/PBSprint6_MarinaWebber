#language: pt

@list_products
Funcionalidade: Pagina Cadastro de Produtos
   SENDO um usuário administrador do ServRest
   QUERO poder cadastrar e personalizar os produtos que irei vender
   PARA que os compradores tenham uma melhor experiência de compra

    Contexto: Estar na página pagina home
      Dado que esteja na pagina home apos ter logado em sua conta
  
    @product_registration
    Esquema do Cenário: CT021-001 - Cadastro de produtos
      Quando clicar em cadastrar produto
      E preencher os campos "<nome>""<preco>""<descricao>""<quantidade>"
      Então o sistema devera exibir uma "<mensagem>"
      Exemplos:
      |  nome  | preco   | descricao | quantidade|  mensagem             |
      | empty  | valid   |  valid    |  valid    |  blank_name           |
      | valid  | empty   |  valid    |  valid    |  mandatory_price      |
      | valid  | valid   |  valid    |  invalid  |  quantity_invalid     |
      | used   | valid   |  valid    |  valid    |  product_used         |
      | valid  | invalid |  valid    |  valid    |  positive_price       |
    
    @fix_later
    @decimal_price
    Cenário: CT021-002- Validação campo preço
      Quando preencher o campo preco com numero decimal e os demais campos corretamente
      Então devera cadastrar o produto com sucesso