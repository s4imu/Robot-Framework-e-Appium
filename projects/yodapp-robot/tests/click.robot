*** Settings ***

Library    AppiumLibrary
Variables    ../resources/base.resource

*** Test Cases ***

Should do a simple click
    Start session
    Start app
    Open side senu
    Navigate to Clique em Botões
    Go to Clique Simples page
    Validate toast message
    
    Close Application