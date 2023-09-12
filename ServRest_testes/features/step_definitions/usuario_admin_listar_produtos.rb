Quando('clicar em lista de produtos') do    
    @home_page.btn_listar.click  
    @list_products = Pages::ListPage.new
end

Então('devera aparecer os produtos da lista') do 
    expect(@list_products).to have_list_pag_products
end
  
Quando('clicar no botao Excluir') do
    @list_before = @list_products.list_pag_products
    @list_products.btn_danger[4].click
end

Então('o produto eh excluido da lista') do
    expect(@list_products.list_pag_products.size).not_to eql @list_before
end  