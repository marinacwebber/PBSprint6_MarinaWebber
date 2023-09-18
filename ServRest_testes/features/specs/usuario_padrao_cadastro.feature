#language: pt

@registration
Funcionalidade: Cadastro de usuários
  COMO usuário do sistema
  QUERO realizar um Cadastro
  PARA logar na aplicação

   Contexto: Estar na pagina de cadastro
      Dado que esteja na página de cadastro

   @complete_registration
   Esquema do Cenário: CT002-001 Cadastro de usuário completo
      Quando realizar cadastro e informar os campos "<nome>""<email>""<senha>""<administrador>"
      Então é exibida mensagem "<msg>"
      Exemplos:
      |  nome   |    email   | senha  | administrador |        msg                        |
      |         | ??         | ??     |   false       | Nome não pode ficar em branco     |
      | ??      | ??         | ??     |   false       | Cadastro realizado com sucesso    |
      | ??      |            | ??     |   false       | Email é obrigatório               |
      | ??      | ??         |        |   true        | Password não pode ficar em branco |
      | ??      | ???        | ??     |   false       | Este email já está sendo usado    |

   @register_user
   Cenário: CT002-002 Cadastro de um usuário padrão
      Quando preencher os campos nome, email, senha e administrador
      Então devera ser direcionado para a home padrao

   @register_size_field
      Esquema do Cenário: CT002-003- Cadastro validação de nomes pequenos e grandes
      Quando preencho o campo nome incorretamente
      Então e exibida mensagem para que o campo nome seja preenchido corretamente

   @register_secure_password   
   Cenário: CT002-004 Cadastro validação de senha segura
      Quando preencher o campo senha com apenas um caractere
      Então uma mensagem devera de senha invalida devera ser exibida