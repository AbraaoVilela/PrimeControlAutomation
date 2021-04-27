*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${Search_Visible}           css=#center_column > h1
${Search_Title}             Search - My Store
${Search_Image}             xpath=//*[@id="center_column"]//*[@src='http://automationpractice.com/img/p/7/7-home_default.jpg']
${Search_LinkText}          xpath=//*[@id="center_column"]//a[@class="product-name"][contains(text(),"Blouse")]
${Search_Text}              xpath=//*[@id="center_column"]/p

*** Keywords ***
Conferir se o produto ${Produto} foi listado no site

    Wait Until Element Is Visible            ${Search_Visible} 
    Title Should Be                          ${Search_Title} 
    Page Should Contain Image                ${Search_Image} 
    Page Should Contain Link                 ${Search_LinkText}  

Conferir mensagem de erro "${Mensagem_Alerta}"   
     Wait Until Element Is Visible           ${Search_Text}
     Element Text Should Be                  ${Search_Text}            ${Mensagem_Alerta}