module Pages
    class CardPage < SitePrism::Page
       set_url '/carrinho'
       element :text_aguarde, '.jumbotron h1'
    end
end