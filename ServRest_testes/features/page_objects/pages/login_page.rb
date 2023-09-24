require_relative '../sections/login'

module Pages
     class LoginPage < SitePrism::Page
        set_url '/login'
        element :input_email, '#email'
        element :input_password, 'input[data-testid="senha"]'
        element :btn_login, 'button[data-testid="entrar"]'

        element :error_message, '.alert-dismissible'

        def login email, password
            case email
            when 'valid'
               email_login = Factory::Dynamic.user_for_registering[:email]
               input_email.set email_login
            when 'empty'
               input_email.set ''
            when 'invalid'
               email_inval = Factory::Static.static_data('register_invalid')[:email_invalid]
               input_email.set email_inval
            end
            
            case password
            when 'valid'
               password_valid = Factory::Dynamic.user_for_registering[:password]
               input_password.set password_valid
            when 'empty'
               input_password.set ''
            end
            btn_login.click
         end

        def login_admin admin_user
            input_email.set admin_user[:email_admin] 
            input_password.set admin_user[:password_admin]
            btn_login.click
        end

        def login_standard standard_user
            input_email.set standard_user[:email_standard] 
            input_password.set standard_user[:password_standard] 
            btn_login.click
        end
     end
end