require_relative '../sections/products'

module Pages
    class HomestandardPage < SitePrism::Page
        set_url '/home'
        
        element :inp_search, 'input[data-testid="pesquisar"]'
        element :btn_search, 'button[data-testid="botaoPesquisar"]'
      
        sections :products, Sections::Products, 'section.espacamento div.card'

        def search_for(product)            
            inp_search.click
            inp_search.set product
            btn_search.click
        end
    end    
end

