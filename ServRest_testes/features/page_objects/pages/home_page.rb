require_relative '../sections/products'

module Pages
     class HomePage < SitePrism::Page
        set_url '/admin/home'
        element :btn_cadastrar, 'a[data-testid="cadastrarProdutos"]'
      #   sections :products, Sections::Products, ''
       
     end
end