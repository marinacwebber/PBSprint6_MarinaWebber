module Pages
     class RegisterProductsPage < SitePrism::Page
        set_url '/admin/cadastrarprodutos'
        element :inp_nome_product, 'input[data-testid="nome"]'
        element :inp_preco_product, 'input[data-testid="preco"]'
        element :txt_descript_product, 'textarea[data-testid="descricao"]'
        element :inp_amount_product, 'input[data-testid="quantity"]'
        element :btn_cadastrar_product, 'button[data-testid="cadastarProdutos"]'

        def register_product(generate_product)
          inp_nome_product.set generate_product[:produto]          
          inp_preco_product.set generate_product[:preco]
          txt_descript_product.set generate_product[:descricao]
          inp_amount_product.set generate_product[:quantidade]
          btn_cadastrar_product.click
        end

        def register_product_decimal_price(generate_product)
         inp_nome_product.set generate_product[:produto]
         inp_preco_product.set generate_product[:preco_decimal]
         txt_descript_product.set generate_product[:descricao]
         inp_amount_product.set generate_product[:quantidade]
         btn_cadastrar_product.click
        end
     end
end