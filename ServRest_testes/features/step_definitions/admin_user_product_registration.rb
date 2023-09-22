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
  
Quando('preencher os campos {string}{string}{string}{string}') do |string, string2, string3, string4|
  generate_product = Factory::Dynamic.user_for_registering
  product = Factory::Static.static_data('valid_product')
  if string == '??'
    @register_products.inp_nome_product.set generate_product[:produto]
  elsif string == '???'
    @register_products.inp_nome_product.set product
  else
    @register_products.inp_nome_product.set string
  end

  if string2 == '?'
    @register_products.inp_preco_product.set generate_product[:preco]
  else
    @register_products.inp_preco_product.set string2
  end

  if string3 == '???'
    @register_products.txt_descript_product.set generate_product[:descricao]
  end

  if string4 == '??'
    @register_products.inp_amount_product.set generate_product[:quantidade]
  else
    @register_products.inp_amount_product.set string4
  end

  @register_products.btn_cadastrar_product.click
end

Então('o sistema devera exibir uma {string}') do |mensagem|
  expect(@register_products).to have_content mensagem
end

Quando('preencher o campo preco com numero decimal e os demais campos corretamente') do
  generate_product = Factory::Dynamic.user_for_registering
  @list_before = @list_products.list_pag_products
  @register_products.register_product_decimal_price(generate_product)
end

Então('devera cadastrar o produto com sucesso') do
   expect(@list_products.list_pag_products.length).to be > @list_before.length
end