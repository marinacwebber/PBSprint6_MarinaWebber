module Sections
    class Shoplist < SitePrism::Section
        element :aumentar_quantidade, 'button[data-testid="product-increase-quantity"]'
        element :total, 'div[data-testid="shopping-cart-product-quantity"]'        
    end
end