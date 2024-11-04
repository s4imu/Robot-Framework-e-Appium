*** Settings ***

Library    AppiumLibrary
Resource    ../resources/base.resource

*** Variables ***
${checkERadioButton}    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="Check e Radio"]

*** Test Cases ***

Should mark radio item
    Start session
    Start app
    Open side menu
    Navigate to page    ${checkERadioButton}    Check e Radio
    Go to item page    Check e Radio   Botões de radio
    
    Click radio item    Java

    Close Application