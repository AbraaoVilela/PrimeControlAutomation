*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Carrinho_Title}                    Order - My Store
${Carrinho_Delete}                   xpath=//*[@class="cart_quantity_delete"]
${Carrinho_Mensagem}                 xpath=//*[@id="center_column"]/p[@class='alert alert-warning']
${Assertion_Text}                    Your shopping cart is empty.

*** Keywords ***
Excluir o produto do carrinho
    Title Should Be                  ${Carrinho_Title} 
    Wait Until Element Is Visible    ${Carrinho_Delete} 
    Click Element                    ${Carrinho_Delete}

#### Conferências
Conferir se o carrinho fica vazio
    Wait Until Element Is Visible    ${Carrinho_Mensagem} 
    Element Text Should Be           ${Carrinho_Mensagem}               ${Assertion_Text}      
