Quando('adicionar um produto') do
    @home_standard_page.add_to_shoplist[1].click
end
  
Quando('acessar a pagina lista de compras') do
    @shop_list = Pages::ShoplistPage.new
    @shop_list.load
end

Quando('aumentar a quantidade do produto') do
    @valor_inicial = @shop_list.shoplist.first.total
    @shop_list.shoplist.first.aumentar_quantidade.click
end
  
Então('devera aumentar a quantidade exibida na lista de compras') do
    expect(@shop_list.shoplist.first.total).not_to eql @valor_inicial
    sleep 3
end
  
Dado('que esteja na pagina lista de compras depois de ter adicionado um produto') do
  steps %{
     Dado que tenha realizado login e esteja na home de usuario padrao
     Quando adicionar um produto 
     E acessar a pagina lista de compras
  }
end

Quando('clica em limpar a lista') do
    @shop_list.btn_limpar_lista.click
end
  
Então('a lista de compras fica vazia') do
    #expect(@shop_list.shoplist).to be_empty
    expect(@shop_list.btn_empty.text).to include('Seu carrinho está vazio')
    sleep 3
end

Quando('clica em acidionar no carrinho') do
    @shop_list.btn_add_card.click
end
  
Então('o usuario e direcionado para a pagina do carrinho') do
    @card_page = Pages::CardPage.new
    expect(@card_page.text_aguarde).to have_text('Em construção aguarde')
    sleep 3
end
  
  