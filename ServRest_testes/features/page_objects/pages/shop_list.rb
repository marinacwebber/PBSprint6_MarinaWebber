require_relative '../sections/shoplist'
module Pages
    class ShoplistPage < SitePrism::Page
       set_url '/minhaListaDeProdutos'
       sections :shoplist, Sections::Shoplist, '.espacamento .card-body'
    end
end