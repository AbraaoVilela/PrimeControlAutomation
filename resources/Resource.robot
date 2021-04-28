*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Browser}                  chrome
${Home_Url}                 http://automationpractice.com

*** Keywords ***
#### Setup e Teardown
Nova Sessão
    Open Browser        ${Home_Url}       ${Browser}

Encerrar Sessão
    Capture Page Screenshot
    Close Browser

