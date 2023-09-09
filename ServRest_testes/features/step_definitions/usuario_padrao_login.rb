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
  
  Quando('realizar login e informar os campos {string}{string}') do |string, string2|

  end
  
  Então('é exibida mensagem {string}@{string}') do |string, string2|
 
  end
  