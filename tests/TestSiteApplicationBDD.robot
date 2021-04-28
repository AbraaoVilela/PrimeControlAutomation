***Settings***
Resource                    ../resources/Resource.robot
Resource                    ../resources/PageObject/Home.robot
Resource                    ../resources/PageObject/Search.robot
Test Setup                  Nova Sessão
Test Teardown               Encerrar Sessão

***Variables***
${Browser}                  chrome
${Home_Url}                 http://automationpractice.com

***Test Cases***
Cenario BDD 01 : Pesquisar produto existente   
    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "Blouse"
    Então o produto "Blouse" deve ser listado na página de resultado da busca

Cenário BDD 02 : Pesquisar produto não existente
    Dado que estou na página home do site
    Quando eu pesquisar pelo produto "itemNãoExistente"
    Então a página deve exibir a mensagem "No results were found for your search "itemNãoExistente""

***Keywords***
Dado que estou na página home do site
    Home.Acessar a página home do site

Quando eu pesquisar pelo produto "${Produto}"
    Home.Digitar o nome do produto "${Produto}" no campo de pesquisa
    Home.Clicar no botão pesquisar

Então o produto "${Produto}" deve ser listado na página de resultado da busca
    Search.Conferir se o produto "Blouse" foi listado no site

Então a página deve exibir a mensagem "No results were found for your search "itemNãoExistente"" 
    Search.Conferir mensagem de erro "No results were found for your search "itemNãoExistente""
    

