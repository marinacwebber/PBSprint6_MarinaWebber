require_relative '../sections/products'

module Pages
     class HomePage < SitePrism::Page
        set_url '/admin/home'
        element :btn_cadastrar, 'a[data-testid="cadastrarProdutos"]'
        element :btn_listar, 'a[data-testid="listarProdutos"]'      
     end
end