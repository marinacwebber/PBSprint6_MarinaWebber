require_relative '../sections/login'

module Pages
     class LoginPage < SitePrism::Page
        set_url '/login'

        element :input_email, '#email'
        element :input_senha, 'input[data-testid="senha"]'
        element :btn_login, 'button[data-testid="entrar"]'

        def preencher_email(text)
         input_email.click
         input_email.set text
         btn_login.click
        end

     end
end