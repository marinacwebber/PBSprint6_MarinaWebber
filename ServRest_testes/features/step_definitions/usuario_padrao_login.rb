Dado('que esteja na tela de login') do
  @login_page = Pages::LoginPage.new
  @login_page.load
end
  
Quando('preencher os campos {string}{string}') do |campo1, campo2|
  @login_page.input_email.set campo1
  @login_page.input_senha.set campo2
  @login_page.btn_login.click
end

Então('o sistema deve exibir {string}') do |mensagem|
  expect(@login_page).to have_content mensagem
  sleep 3
end  

Dado('o usuário administrador preencher os campos de email e senha') do
  admin_user = Factory::Static.static_data('login_for_admin')
  @login_page.login_admin(admin_user)
end

Então('devera ser direcionado para a home') do
  @home_page = Pages::HomePage.new
  expect(@home_page).to have_current_path('/admin/home')
  sleep 3
end

Quando('o usuario padrao preencher os campos de email e senha') do
  standard_user = Factory::Static.static_data('login_for_standard')  
  @login_page.login_standard(standard_user)  
end

Então('devera ser direcionado para a home padrao') do
  @home_standard_page = Pages::HomestandardPage.new
  expect(@home_standard_page).to have_current_path('/home')
  sleep 3
end