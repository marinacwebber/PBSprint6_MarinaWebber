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
      |  nome            |    email        |  senha  | administrador |        msg                        | 
      |                  | teste@teste.com |  1234   |   false       | Nome não pode ficar em branco     |
      | Douglas          | gla@teste.com   |  1234   |   false       | Cadastro realizado com sucesso    |
      | Lais Indi        |                 |  1234   |   false       | Email é obrigatório               |
      | Maria            | teste@gmail.com |         |   true        | Password não pode ficar em branco |
      | Fulano da Silva  | fulano@qa.com   |  teste  |   false       | Este email já está sendo usado    |
