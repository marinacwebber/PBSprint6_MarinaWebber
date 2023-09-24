Dado('que esteja na página de cadastro') do
    @cadastro_page = Pages::CadastroPage.new
    @cadastro_page.load
end
  
Quando('realizar cadastro e informar os campos {string}{string}{string}{string}') do |name, email, password, adm|
    @cadastro_page.registration name, email, password, adm    
end
 
Quando('preencher os campos nome, email, senha e administrador') do
    generate_registration = Factory::Dynamic.user_for_registering 
    @cadastro_page.register_standard(generate_registration)
end

Então('é exibida mensagem {string}') do |message|
    register_message = Factory::Static.static_data('message')[message]
    expect(@cadastro_page.error_message.has_text? register_message).to be_truthy
end

Quando('preencho o campo nome incorretamente e os outros campos corretamente') do
    field_name = Factory::Static.static_data('register_invalid')
    @cadastro_page.small_name(field_name)
end

Então('e exibida mensagem para que o campo nome seja preenchido corretamente') do
    register_message = Factory::Static.static_data('message')['valid_name']
    expect(@cadastro_page.error_message.has_text? register_message).to be_truthy
end

Quando('preencher o campo senha com apenas um caractere e os outros campos corretamente') do
    field_password = Factory::Static.static_data('register_invalid')
    @cadastro_page.secure_password(field_password)
end

Então('uma mensagem devera de senha invalida devera ser exibida') do
    register_message = Factory::Static.static_data('message')['password_security']
    expect(@cadastro_page.error_message.has_text? register_message).to be_truthy
end