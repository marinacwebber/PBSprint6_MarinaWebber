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
end
  
Dado('que esteja na pagina lista de compras depois de ter adicionado um produto') do
  steps %{
     Dado que tenha realizado login e esteja na home de usuario padrao
     Quando adicionar um produto 
     E acessar a pagina lista de compras
  }
end