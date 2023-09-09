Dado('que esteja na página de cadastro') do
    @cadastro_page = Pages::CadastroPage.new
    @cadastro_page.load
end
  
Quando('realizar cadastro e informar os campos {string}{string}{string}{string}') do |string, string2, string3, string4|
    @cadastro_page.inp_nome.set string
    @cadastro_page.inp_email.set string2
    @cadastro_page.inp_senha.set string3
    
    if string4 == 'true'
    @cadastro_page.check_adm.click
    end
    @cadastro_page.btn_cadastrar.click
end
 
Então('é exibida mensagem {string}') do |mensagem|
    expect(@cadastro_page).to have_content mensagem
end
  