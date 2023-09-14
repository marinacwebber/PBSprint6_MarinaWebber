require_relative '../sections/shoplist'
module Pages
    class ShoplistPage < SitePrism::Page
       set_url '/minhaListaDeProdutos'
       sections :shoplist, Sections::Shoplist, '.espacamento .card-body'
       element :btn_limpar_lista, '[data-testid="limparLista"]'
       element :btn_empty, '[data-testid="shopping-cart-empty-message"]'
       element :btn_add_card, '[data-testid="adicionar carrinho"]'
    end
end