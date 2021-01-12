#language: pt

Funcionalidade: Compra de produtos
    Sendo um cliente da petz
    Quero realizar uma compra pelo produto
    Para eu saber se tem o produto que desejo

    Cenário: Consulta
        Dado que eu acesse o site da petz
        Quando consulto o produto com: "Ração"
        Então redirecionado para a pagina de resultados da busca


    Cenário: Seleção de produtos

        Dado redirecionado para a pagina de resultados da busca
        Quando selecionar o item do resultado
        Então devo ser redirecionado para pagina com mais informações

    Cenário: Compra
        Dado que eu acesse o site da petz
        E consulto o produto com: "Ração"
        E redirecionado para pagina com mais informações
        Quando clico para adicionar no carrinho
        Então devo ser redirecionada para pagina de confirmação
