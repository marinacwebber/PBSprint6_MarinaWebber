#language: pt

@regression
@login
Funcionalidade: Login
    COMO usuário do sistema
    QUERO me autenticar na aplicação 
    PARA realizar compras

  Contexto:
    Dado que esteja na tela de login

  Cenário: Login com e-mail inválido
    Quando preencher usuário com o e-mail sem o @
    E clicar em entrar
    Então o sistema deve exibir msg de erro #"Inclua um "@" no endereço de e-mail"

  Esquema do Cenário: Validar autenticação de usuário 
    Quando realizar login e informar os campos "<email>""<senha>"
    Então é exibida mensagem "<msg>"
    Exemplos:
    |    email        |  senha  |        msg                         | 
    | testeteste.com  |  1234   | Inclua um "@" no enderaço de email |
    |                 |  1234   | Email não pode ficar em branco     |
    | teste@gmail.com |         | Password não pode ficar em branco  |
    | fulano@qa.com   |  teste  | Este email já está sendo usado     |