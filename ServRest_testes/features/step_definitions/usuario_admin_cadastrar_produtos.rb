Dado('que esteja na pagina home apos ter logado em sua conta') do
  steps %{
      Dado que esteja na tela de login
      Quando o usuário preencher os campos de email e senha
      Então devera ser direcionado para a home
  }
end 

Quando('clicar em cadastrar produto') do
  @home_page.btn_cadastrar.click  
  @register_products = Pages::RegisterProductsPage.new 
end
  
Quando('preencher os campos {string}{string}{string}{string}') do |string, string2, string3, string4|
  @register_products.inp_nome_product.set string
  @register_products.inp_preco_product.set string2
  @register_products.txt_descript_product.set string3
  @register_products.inp_amount_product.set string4
  @register_products.btn_cadastrar_product.click
end

Então('o sistema devera exibir uma {string}') do |mensagem|
  expect(@register_products).to have_content mensagem
end

  