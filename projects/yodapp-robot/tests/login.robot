*** Settings ***

Library    AppiumLibrary
Resource    ../resources/base.resource

*** Variables ***
${checkFormulariosButton}    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="Formulários"]
${EMAIL}    yoda@qax.com
${PASSWORD}    jedi
${WRONGPASSWORD}    jedO
*** Test Cases ***

Should Login Successful
    Start session
    Start app
    Open side menu
    Navigate to page    ${checkFormulariosButton}    Formulários
    Go to item page    Formulários   Login
    Sign in   ${EMAIL}    ${PASSWORD} 
    Validate toast message    Boas vindas, logado você está.

    Close Application

Shouldn't Login Successful
    Start session
    Start app
    Open side menu
    Navigate to page    ${checkFormulariosButton}    Formulários
    Go to item page    Formulários   Login
    Sign in   ${EMAIL}    ${WRONGPASSWORD} 
    Validate toast message    Oops! Credenciais incorretas.

    Close Application