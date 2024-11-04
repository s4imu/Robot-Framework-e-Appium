*** Settings ***

Resource    ../resources/base.resource
Test Setup    Setup test
Test Teardown    Close Application

*** Variables ***
${starWarsButton}    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="Star Wars"]
${darthVaderCard}    xpath=//android.widget.TextView[@text='@darthvader']/../../..//*[contains(@resource-id,"indicator")]
${distance}    650

*** Test Cases ***

TC08 - Should Remove Darth Vaider
    Navigate to page    ${starWarsButton}    Star Wars
    Go to item page    Star Wars   Lista
    Swipe left        ${distance}    ${darthVaderCard}
    Remove card    Darth Vader


