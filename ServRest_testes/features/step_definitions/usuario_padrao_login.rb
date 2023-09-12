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
end  

Dado('o usuário administrador preencher os campos de email e senha') do
  @login_page.input_email.set 'beltrano@qa.com.br'
  @login_page.input_senha.set 'teste'
  @login_page.btn_login.click
end

Então('devera ser direcionado para a home') do
  @home_page = Pages::HomePage.new
  expect(@home_page).to have_current_path('/admin/home')
end

Quando('o usuario padrao preencher os campos de email e senha') do
  @login_page.input_email.set 'usuariopadrao@teste.com'
  @login_page.input_senha.set 'teste'
  @login_page.btn_login.click
end

Então('devera ser direcionado para a home padrao') do
  @home_standard_page = Pages::HomestandardPage.new
end