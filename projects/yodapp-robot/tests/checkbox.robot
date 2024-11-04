*** Settings ***

Resource    ../resources/base.resource
Test Setup    Setup test
Test Teardown    Close Application

*** Variables ***
${checkERadioButton}    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="Check e Radio"]

*** Test Cases ***

TC03 - Should mark checkbox itens
    Navigate to page    ${checkERadioButton}    Check e Radio
    Go to item page    Check e Radio   Checkbox
    
    @{techs}    Create List    Ruby    Python    Java    Javascript    C#    Robot Framework
    
    Click checkbox list itens    @{techs}

