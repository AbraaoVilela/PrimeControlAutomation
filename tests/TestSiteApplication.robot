*** Settings ***
Resource            ../resources/Resource.robot
Resource            ../resources/PageObject/Home.robot
Resource            ../resources/PageObject/Carrinho.robot
Resource            ../resources/PageObject/Search.robot
Test Setup          Nova Sessão
Test Teardown       Encerrar Sessão

*** Test Case ***
Caso de Teste com PO 01: Remover Produtos do Carrinho
    Home.Acessar a página home do site
    Home.Adicionar o produto "t-shirt" no carrinho
    Carrinho.Excluir o produto do carrinho
    Carrinho.Conferir se o carrinho fica vazio

Caso de Teste com PO 02: Pesquisar Produto Existente 
     Home.Acessar a página home do site 
     Home.Digitar o nome do produto "Blouse" no campo de pesquisa 
     Home.Clicar no botão pesquisar 
     Search.Conferir se o produto "Blouse" foi listado no site

Caso de Teste com PO 03: Pesquisar Produto Não Existente 
    Home.Acessar a página home do site 
    Home.Digitar o nome do produto "itemNãoExistente" no campo de pesquisa 
    Home.Clicar no botão pesquisar 
    Search.Conferir mensagem de erro "No results were found for your search "itemNãoExistente""