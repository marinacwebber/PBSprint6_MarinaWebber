#language: pt

@search
Funcionalidade: Busca
    COMO um usuário padrão do Front - ServRest
    QUERO poder buscar por diferentes produtos
    PARA poder personalizar minhas compras

    Contexto: Estar na home
        Dado que esteja na home

    @search_for_product
    Cenário: Buscar por um produto existente      
        Quando realizar uma busca por um produto existente
        Então deverao ser retornados resultados na busca

    @search_for_different_product
    Esquema do Cenário: Buscar por produtos existentes
        Quando buscar pelo produto "<produto>"
        Então deverao ser retornados resultados na busca

        Exemplos:
        |    produto                |
        |    Logitech MX Vertical   |
        |    Samsung 60 polegadas   |