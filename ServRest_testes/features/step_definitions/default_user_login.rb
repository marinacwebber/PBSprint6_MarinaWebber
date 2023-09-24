Dado('que esteja na tela de login') do
  @login_page = Pages::LoginPage.new
  @login_page.load
end
  
Quando('preencher os campos {string}{string}') do |email, password|
  @login_page.login email, password
end

Então('o sistema deve exibir {string}') do |message|
  login_message = Factory::Static.static_data('message')[message]
  expect(@login_page.error_message.has_text? login_message).to be_truthy
end  

Dado('o usuário administrador preencher os campos de email e senha') do
  admin_user = Factory::Static.static_data('login_for_admin')
  @login_page.login_admin(admin_user)
end

Então('devera ser direcionado para a home admin') do
  name_admin = Factory::Static.static_data('login_for_admin')[:name_admin]
  @home_page = Pages::HomePage.new
  expect(@home_page.txt_home.has_text? name_admin).to be_truthy
end

Quando('o usuario padrao preencher os campos de email e senha') do
  default_user = Factory::Static.static_data('login_for_standard')  
  @login_page.login_standard(default_user)  
end

Então('devera ser direcionado para a home padrao') do
  @home_standard_page = Pages::HomestandardPage.new
  expect(@home_standard_page.all_there?).to be_truthy
end