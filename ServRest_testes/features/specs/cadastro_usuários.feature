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
        Quando realizar cadastro e informar os campos "<nome>""<email>""<senha>"
        Então é exibida mensagem "<msg>"
        Exemplos:
        |  nome            |    email        |  senha  |        msg                        | 
        |                  | teste@teste.com |  1234   | Nome não pode ficar em branco     |
        | Alice            |                 |  1234   | Email não pode ficar em branco    |
        | Maria            | teste@gmail.com |         | Password não pode ficar em branco |
        | Fulano da Silva  | fulano@qa.com   |  teste  | Este email já está sendo usado    |

