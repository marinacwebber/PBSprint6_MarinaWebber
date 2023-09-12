module Pages
     class RegisterProductsPage < SitePrism::Page
        set_url '/admin/cadastrarprodutos'
        element :inp_nome_product, 'input[data-testid="nome"]'
        element :inp_preco_product, 'input[data-testid="preco"]'
        element :txt_descript_product, 'textarea[data-testid="descricao"]'
        element :inp_amount_product, 'input[data-testid="quantity"]'
        element :btn_cadastrar_product, 'button[data-testid="cadastarProdutos"]'
     end
end