*** Settings ***

Resource    ../resources/base.resource
Test Setup    Setup test
Test Teardown    Close Application

*** Variables ***
${formulariosButton}    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="Formulários"]
${EMAIL}    yoda@qax.com
${PASSWORD}    jedi
${WRONGPASSWORD}    jedO
*** Test Cases ***

TC04 - Should Login Successful
    Navigate to page    ${formulariosButton}    Formulários
    Go to item page    Formulários   Login
    Sign in   ${EMAIL}    ${PASSWORD} 
    Validate toast message    Boas vindas, logado você está.


TC05 - Shouldn't Login Successful
    Navigate to page    ${formulariosButton}    Formulários
    Go to item page    Formulários   Login
    Sign in   ${EMAIL}    ${WRONGPASSWORD} 
    Validate toast message    Oops! Credenciais incorretas.

