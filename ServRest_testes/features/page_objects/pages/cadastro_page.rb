require_relative '../sections/cadastro'

module Pages
    class CadastroPage < SitePrism::Page
        set_url '/cadastrarusuarios'
        element :inp_nome, 'input[data-testid="nome"]'
        element :inp_email, 'input[data-testid="email"]'
        element :inp_senha, 'input[data-testid="password"]'
        element :check_adm, 'input[data-testid="checkbox"]'
        element :btn_cadastrar, 'button[data-testid="cadastrar"]'

        def register_standard(generate_registration)
            inp_nome.set generate_registration[:nome]
            inp_email.set generate_registration[:email] 
            inp_senha.set generate_registration[:senha] 
            btn_cadastrar.click
            end
    end    
end
