module Sections
    class Products < SitePrism::Section
        element :product_name, '.card-body .card-title'
        element :product_price, '.card-body h6~h6'
        
        elements :add_to_shoplist, 'button[data-testid="adicionarNaLista"]'
    end
end