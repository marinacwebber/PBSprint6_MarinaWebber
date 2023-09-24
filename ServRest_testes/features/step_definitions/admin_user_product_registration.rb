Dado('que esteja na pagina home apos ter logado em sua conta') do
  steps %{
      Dado que esteja na tela de login
      Quando o usuário administrador preencher os campos de email e senha      
      Então devera ser direcionado para a home admin
  }
end 

Quando('clicar em cadastrar produto') do
  @home_page.btn_cadastrar.click  
  @register_products = Pages::RegisterProductsPage.new
end
  
Quando('preencher os campos {string}{string}{string}{string}') do |name, price, description, quantity|
  @register_products.register_product name, price, description, quantity
end

Então('o sistema devera exibir uma {string}') do |message|
  product_message = Factory::Static.static_data('message')[message]
  expect(@register_products.error_message.has_text? product_message).to be_truthy
end

Quando('preencher o campo preco com numero decimal e os demais campos corretamente') do
  generate_product = Factory::Dynamic.user_for_registering
  @list_before = @list_products.list_pag_products
  @register_products.register_product_decimal_price(generate_product)
end

Então('devera cadastrar o produto com sucesso') do
   expect(@list_products.list_pag_products.length).to be > @list_before.length
end