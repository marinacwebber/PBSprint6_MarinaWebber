module Sections
    class Login < SitePrism::Section
        element :input_email, '#email'
        element :input_senha, 'input[data-testid="senha"]'
        element :btn_login, 'button[data-testid="entrar"]'

    end
end