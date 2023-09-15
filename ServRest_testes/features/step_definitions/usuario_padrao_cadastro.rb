Dado('que esteja na página de cadastro') do
    @cadastro_page = Pages::CadastroPage.new
    @cadastro_page.load
end
  
Quando('realizar cadastro e informar os campos {string}{string}{string}{string}') do |string, string2, string3, string4|
    generate_registration = Factory::Dynamic.user_for_registering
    admin = Factory::Static.static_data('login_for_admin')
    if string == '??'
       @cadastro_page.inp_nome.set generate_registration[:nome]
    else
        @cadastro_page.inp_nome.set string
    end

    if string2 == '??'
        @cadastro_page.inp_email.set generate_registration[:email]
    elsif string2 == '???'
        @cadastro_page.inp_email.set admin[:email_admin]
    else
        @cadastro_page.inp_email.set string2
    end
    
    if string3 == '??'
        @cadastro_page.inp_senha.set generate_registration[:senha]
    else
        @cadastro_page.inp_senha.set string3
    end

    if string4 == 'true'
        @cadastro_page.check_adm.click
    end
        @cadastro_page.btn_cadastrar.click
end
 
Quando('preencher os campos nome, email, senha e administrador') do
    generate_registration = Factory::Dynamic.user_for_registering 
    @cadastro_page.register_standard(generate_registration)
end

Então('é exibida mensagem {string}') do |mensagem|
    expect(@cadastro_page).to have_content mensagem
end