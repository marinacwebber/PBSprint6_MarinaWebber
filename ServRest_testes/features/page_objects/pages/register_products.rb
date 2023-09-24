module Pages
     class RegisterProductsPage < SitePrism::Page
        set_url '/admin/cadastrarprodutos'
        element :inp_name_product, 'input[data-testid="nome"]'
        element :inp_price_product, 'input[data-testid="preco"]'
        element :txt_descript_product, 'textarea[data-testid="descricao"]'
        element :inp_amount_product, 'input[data-testid="quantity"]'
        element :btn_register_product, 'button[data-testid="cadastarProdutos"]'

        def register_product name, price, description, quantity
          case name 
          when 'valid'
            name_product = Factory::Dynamic.user_for_registering[:product]
            inp_name_product.set name_product
          when 'empty'
            inp_name_product.set ''
          when 'used'
            name_product_used = Factory::Static.static_data('valid_product')
            inp_name_product.set name_product_used
          end

          case price
          when 'valid' 
            price_product = Factory::Dynamic.user_for_registering[:price]
            inp_price_product.set price_product
          when 'empty'
            inp_price_product.set ''
          when 'invalid'
            invalid_price = Factory::Static.static_data('register_invalid')[:zero]
            inp_price_product.set invalid_price
          end

          case description
          when 'valid'
            description_product = Factory::Dynamic.user_for_registering[:description]
            txt_descript_product.set description_product
          end

          case quantity
          when 'valid'
            quantity_product = Factory::Dynamic.user_for_registering[:quantity]
            inp_amount_product.set quantity_product 
          when 'invalid'
            invalid_quantity = Factory::Static.static_data('register_invalid')[:negative]
            inp_amount_product.set invalid_quantity
          end

          btn_register_product.click
        end

        def register_product_decimal_price(generate_product)
         inp_name_product.set generate_product[:product]
         inp_price_product.set generate_product[:prico_decimal]
         txt_descript_product.set generate_product[:description]
         inp_amount_product.set generate_product[:quantity]
         btn_register_product.click
        end
     end
end