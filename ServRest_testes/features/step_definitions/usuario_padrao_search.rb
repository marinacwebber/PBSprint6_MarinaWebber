Dado('que tenha realizado login e esteja na home de usuario padrao') do
    steps %{
        Dado que esteja na tela de login
        Quando o usuario padrao preencher os campos de email e senha
        Então devera ser direcionado para a home padrao
    }
end 

Quando('realizar uma busca por um produto existente') do
    product_for_search = Factory::Static.static_data('valid_product')
    @home_standard_page.search_for(product_for_search)
    @search_results = Pages::HomestandardPage.new
end

Quando('buscar pelo produto {string}') do |product|
    @home_standard_page.search_for(product)
    @search_results = Pages::HomestandardPage.new    
end  

Então('deverao ser retornados resultados na busca') do
    expect(@search_results).to have_products
    expect(@search_results.products.first.all_there?).to be_truthy
    sleep 3
end