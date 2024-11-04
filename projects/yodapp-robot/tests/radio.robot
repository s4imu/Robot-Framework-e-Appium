*** Settings ***

Resource    ../resources/base.resource
Test Setup    Setup test
Test Teardown    Close Application

*** Variables ***
${checkERadioButton}    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="Check e Radio"]

*** Test Cases ***

TC06 - Should mark radio item
    Navigate to page    ${checkERadioButton}    Check e Radio
    Go to item page    Check e Radio   Botões de radio
    
    Click radio item    Java
