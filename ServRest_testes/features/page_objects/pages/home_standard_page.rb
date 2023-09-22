require_relative '../sections/products'

module Pages
    class HomestandardPage < SitePrism::Page
        set_url '/home'
        
        element :inp_search, 'input[data-testid="pesquisar"]'
        element :btn_search, 'button[data-testid="botaoPesquisar"]'
        elements :add_to_shoplist, 'button[data-testid="adicionarNaLista"]'
        sections :products, Sections::Products, '.espacamento'
        element :txt_home, '.jumbotron h1'

        def search_for(product)            
            inp_search.click
            inp_search.set product
            btn_search.click
        end
    end    
end

