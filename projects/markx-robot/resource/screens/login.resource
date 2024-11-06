*** Settings ***

Documentation    Elements and action from Login Page
Library    AppiumLibrary

*** Variables ***
${API_IP}    172.20.10.2

*** Keywords ***

Sign in
    Wait Until Page Contains    Endereço IP da Api
    Input Text    xpath=//*[@resource-id="apiIp"]     ${API_IP}
    Click Element    xpath=//*[@resource-id="signInButton"]

Check home page
    Wait Until Page Contains    Minhas tarefas    5
