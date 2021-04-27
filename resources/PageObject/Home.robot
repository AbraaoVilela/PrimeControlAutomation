*** Settings ***
Library                                           SeleniumLibrary


*** Variables ***
${Home_Url}                                       http://automationpractice.com
${Home_Title}                                     My Store
${Home_Field_Search}                              name=search_query
${Home_Button_Search}                             name=submit_search
${Home_Menu}                                      xpath=//*[@id="block_top_menu"]/ul
${Home_Product}                                   xpath=//*[@id="center_column"]//img[@alt="Faded Short Sleeve T-shirts"]
${Home_Button_Cart}                               xpath=//*[@id="add_to_cart"]/button
${Home_Button_Checkout}                           xpath=//*[@id="layer_cart"]//a[@title="Proceed to checkout"]
${Home_Button_SignIn}                             xpath=//*[@id="header"]//*[@class="login"][contains(text(),"Sign in")]

*** Keywords ***
#### Ações
Adicionar o produto "${Produto}" no carrinho
    Digitar o nome do produto "${Produto}" no campo de pesquisa
    Clicar no botão pesquisar
    Clicar no botão "Add to Cart" do produto
    Clicar no botão "Proceed to checkout"

Pesquisar Produto Existente 
    Digitar o nome do produto "${Produto}" no campo de pesquisa
    Clicar no botão pesquisar
    
Acessar a página home do site

    Go To                                        ${Home_Url}
    Wait Until Element Is Visible                ${Home_Menu}
    Title Should Be                              ${Home_Title} 

Digitar o nome do produto "${Produto}" no campo de pesquisa

    Input Text                                   ${Home_Field_Search}          ${Produto}

Clicar no botão pesquisar

    Click Element                                ${Home_Button_Search}

Clicar no botão "Add to Cart" do produto

    Wait Until Element Is Visible                ${Home_Product}
    Click Element                                ${Home_Product}
    Wait Until Element Is Visible                ${Home_Button_Cart}
    Click Button                                 ${Home_Button_Cart}

Clicar no botão "Proceed to checkout"

    Wait Until Element Is Visible                ${Home_Button_Checkout}
    Click Element                                ${Home_Button_Checkout}

Clicar em "Sign in"

    Click Element                                ${Home_Button_SignIn}



