#language: pt

@registration
Funcionalidade: Cadastro de usuários
  COMO usuário do sistema
  QUERO realizar um Cadastro
  PARA logar na aplicação

   Contexto: Estar na pagina de cadastro
      Dado que esteja na página de cadastro

   @complete_registration
   Esquema do Cenário: Cadastro de usuário completo
      Quando realizar cadastro e informar os campos "<nome>""<email>""<senha>""<administrador>"
      Então é exibida mensagem "<msg>"
      Exemplos:
      |  nome   |    email        | senha  | administrador |        msg                        | 
      |         | teste@teste.com | ??     |   false       | Nome não pode ficar em branco     |
      | ??      | mapma@teste.com | ??     |   false       | Cadastro realizado com sucesso    |
      | ??      |                 | ??     |   false       | Email é obrigatório               |
      | ??      | teste@gmail.com |        |   true        | Password não pode ficar em branco |
      | ??      | fulano@qa.com   | ??     |   false       | Este email já está sendo usado    |

   @register_user
   Cenário: Cadastro de um usuário padrão
   Quando preencher os campos nome, email, senha e administrador
   Então devera ser direcionado para a home padrao