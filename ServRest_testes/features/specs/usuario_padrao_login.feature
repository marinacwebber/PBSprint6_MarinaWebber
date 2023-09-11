#language: pt

@login
Funcionalidade: Login
    COMO usuário do sistema
    QUERO me autenticar na aplicação 
    PARA realizar compras

  Contexto:
    Dado que esteja na tela de login

  @validate_login
  Esquema do Cenário: Login validações
      Quando preencher os campos "<email>""<senha>"
      Então o sistema deve exibir "<msg>"

      Exemplos:
      |    email        |  senha  |        msg                         | 
      | teste@testecom  |  1234   | Email deve ser um email válido     |
      |                 |  1234   | Email é obrigatório                |
      | teste@gmail.com |         | Password não pode ficar em branco  |
      | fulano@qa.com   |  teste  |                                    |

  @to_access_home
  Cenário: Login para acessar pagina home
    Quando o usuário preencher os campos de email e senha
    Então devera ser direcionado para a home