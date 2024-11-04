*** Settings ***

Resource    ../resources/base.resource

*** Variables ***
${checkFormulariosButton}    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="Formulários"]
${NAME}    Test
${EMAIL}    test@qax.com
${PASSWORD}    test
${SPINNERITEM}    Jedi

*** Test Cases ***

Should Register Successful
    Start session
    Start app
    Open side menu
    Navigate to page    ${checkFormulariosButton}    Formulários
    Go to item page    Formulários   Cadastro
    Sign up    ${NAME}    ${EMAIL}    ${PASSWORD}    ${SPINNERITEM}
    Validate toast message    Tudo certo, boas vindas ao Yodapp!

    Close Application

