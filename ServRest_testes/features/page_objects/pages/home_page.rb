module Pages
     class HomePage < SitePrism::Page
        set_url '/admin/home'
        element :btn_cadastrar, 'a[data-testid="cadastrarProdutos"]'
        element :btn_listar, 'a[data-testid="listarProdutos"]'    
        element :txt_home, '.jumbotron h1'  
     end
end