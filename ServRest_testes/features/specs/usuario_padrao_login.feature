#language: pt

@login
Funcionalidade: Login
    COMO usuário do sistema
    QUERO me autenticar na aplicação 
    PARA realizar compras

  Contexto:
    Dado que esteja na tela de login

  @validate_login
  Esquema do Cenário: CT001-001 - Login validações
      Quando preencher os campos "<email>""<senha>"
      Então o sistema deve exibir "<msg>"

      Exemplos:
      |  email        | senha |        msg                         | 
      |  ?            |  ??   | Email deve ser um email válido     |
      |               |  ??   | Email é obrigatório                |
      |  ??           |       | Password não pode ficar em branco  |

  @to_access_home_admin
  Cenário:  CT001-002 - Login para acessar pagina home administrador
    Quando o usuário administrador preencher os campos de email e senha
    Então devera ser direcionado para a home

  @to_access_home
  Cenário:  CT001-003 - Login para acessar pagina home padrao
    Quando o usuario padrao preencher os campos de email e senha
    Então devera ser direcionado para a home padrao