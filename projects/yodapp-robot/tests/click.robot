*** Settings ***

Library    AppiumLibrary
Resource    ../resources/base.resource

*** Variables ***
${cliqueEmBotoesButton}    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="Clique em Botões"]
${cliqueLongoButton}    id=com.qaxperience.yodapp:id/long_click

*** Test Cases ***

Should do a simple click
    Start session
    Start app
    Open side menu
    Navigate to page    ${cliqueEmBotoesButton}    Clique em Botões
    Go to item page    Clique em Botões   Clique simples 
    Do a simple click    CLIQUE SIMPLES
    Validate toast message        Isso é um clique simples
    
    Close Application

Should do a long click
    [Tags]    only
    Start session
    Start app
    Open side menu
    Navigate to page    ${cliqueEmBotoesButton}    Clique em Botões
    Go to item page    Clique em Botões   Clique longo 
    Do a long click    ${cliqueLongoButton}    
    Validate toast message    Isso é um clique 
    
    Close Application