module Sections
    class Products < SitePrism::Section
        element :product_name, 'h5.card-title'
        element :product_price, 'h6~h6'
    end
end