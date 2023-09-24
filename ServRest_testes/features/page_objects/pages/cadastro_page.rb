require_relative '../sections/cadastro'

module Pages
    class CadastroPage < SitePrism::Page
        set_url '/cadastrarusuarios'
        element :inp_nome, 'input[data-testid="nome"]'
        element :inp_email, 'input[data-testid="email"]'
        element :inp_senha, 'input[data-testid="password"]'
        element :check_adm, 'input[data-testid="checkbox"]'
        element :btn_cadastrar, 'button[data-testid="cadastrar"]'
        
        element :error_message, '.alert-dismissible'

        def registration name, email, password, adm
            case name
            when 'valid'
                generate_name = Factory::Dynamic.user_for_registering[:name]
                inp_nome.set generate_name
            when 'empty'
                inp_nome.set  ''
            end

            case email
            when 'valid'
                generate_email = Factory::Dynamic.user_for_registering[:email]
                inp_email.set generate_email
            when 'empty'
                inp_email.set ''
            when 'used'
                adm_email = Factory::Static.static_data('login_for_admin')[:email_admin]
                inp_email.set adm_email
            end

            case password 
            when 'valid'
                generate_password = Factory::Dynamic.user_for_registering[:password]
                inp_senha.set generate_password
            when 'empty'
                inp_senha.set ''
            end

            case adm
            when 'true'
                check_adm.click
            end

            btn_cadastrar.click
        end

        def register_standard(generate_registration)
            inp_nome.set generate_registration[:name]
            inp_email.set generate_registration[:email] 
            inp_senha.set generate_registration[:password] 
            btn_cadastrar.click
        end

        def small_name(field_name)
            inp_nome.set field_name[:nome_pequeno]
            inp_email.set field_name[:email]
            inp_senha.set field_name[:senha]
            btn_cadastrar.click
        end

        def secure_password(field_password)
            inp_nome.set field_password[:nome_pequeno]
            inp_email.set field_password[:email_two]
            inp_senha.set field_password[:senha_pequena]
            btn_cadastrar.click
        end
    end    
end
