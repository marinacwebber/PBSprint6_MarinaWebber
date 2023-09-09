Dado('que esteja na tela de login') do
    @login_page = Pages::LoginPage.new
    @login_page.load
end
  
  Quando('preencher usuário com o e-mail sem o @') do
    @login_page.preencher_email('email_invalido.com')
    sleep 10
  end

  
  Então('o sistema deve exibir msg de erro #{string}@{string}') do |string, string2|

  end
  
  Quando('realizar login e informar os campos {string}{string}') do |string, string2|

  end
  
  Então('é exibida mensagem {string}@{string}') do |string, string2|
 
  end
  