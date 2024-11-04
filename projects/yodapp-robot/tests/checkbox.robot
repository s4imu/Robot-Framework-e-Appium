*** Settings ***

Library    AppiumLibrary
Resource    ../resources/base.resource

*** Variables ***
${checkERadioButton}    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="Check e Radio"]

*** Test Cases ***

Should mark checkbox itens
    Start session
    Start app
    Open side menu
    Navigate to page    ${checkERadioButton}    Check e Radio
    Go to item page    Check e Radio   Checkbox
    
    @{techs}    Create List    Ruby    Python    Java    Javascript    C#    Robot Framework
    
    Click checkbox list itens    @{techs}

    Close Application