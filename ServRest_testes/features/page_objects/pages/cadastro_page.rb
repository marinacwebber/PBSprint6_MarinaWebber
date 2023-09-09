require_relative '../sections/cadastro'

module Pages
    class CadastroPage < SitePrism::Page
        set_url '/cadastrarusuarios'
        element :inp_nome, 'input[data-testid="nome"]'
        element :inp_email, 'input[data-testid="email"]'
        element :inp_senha, 'input[data-testid="password"]'
    end
end
