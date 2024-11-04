*** Settings ***

Resource    ../resources/base.resource
Test Setup    Setup test
Test Teardown    Close Application

*** Variables ***
${formulariosButton}    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="Formulários"]
${NAME}    Test
${EMAIL}    test@qax.com
${PASSWORD}    test
${SPINNERITEM}    Jedi

*** Test Cases ***

TC07 - Should Register Successful
    Navigate to page    ${formulariosButton}    Formulários
    Go to item page    Formulários   Cadastro
    Sign up    ${NAME}    ${EMAIL}    ${PASSWORD}    ${SPINNERITEM}
    Validate toast message    Tudo certo, boas vindas ao Yodapp!


