*** Settings ***

Resource    ../resources/base.resource
Test Setup    Setup test
Test Teardown    Close Application

*** Variables ***
${cliqueEmBotoesButton}    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="Clique em Botões"]
${cliqueLongoButton}    id=com.qaxperience.yodapp:id/long_click

*** Test Cases ***

TC01 - Should do a simple click
    Navigate to page    ${cliqueEmBotoesButton}    Clique em Botões
    Go to item page    Clique em Botões   Clique simples 
    Do a simple click    CLIQUE SIMPLES
    Validate toast message        Isso é um clique simples

TC02 - Should do a long click
    Navigate to page    ${cliqueEmBotoesButton}    Clique em Botões
    Go to item page    Clique em Botões   Clique longo 
    Do a long click    ${cliqueLongoButton}    
    Validate toast message    Isso é um clique 
