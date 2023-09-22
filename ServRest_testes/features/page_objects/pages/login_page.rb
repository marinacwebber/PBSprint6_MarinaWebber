require_relative '../sections/login'

module Pages
     class LoginPage < SitePrism::Page
        set_url '/login'
        element :input_email, '#email'
        element :input_senha, 'input[data-testid="senha"]'
        element :btn_login, 'button[data-testid="entrar"]'

       def login_admin(admin_user)
          input_email.set admin_user[:email_admin] 
          input_senha.set admin_user[:senha_admin]
          btn_login.click
       end

       def login_standard(standard_user)
          input_email.set standard_user[:email_standard] 
          input_senha.set standard_user[:senha_standard] 
          btn_login.click
       end
     end
end