*** Settings ***

Resource    ../resources/base.resource

*** Variables ***
${starWarsButton}    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="Star Wars"]
${darthVaderCard}    xpath=//android.widget.TextView[@text='@darthvader']/../../..//*[contains(@resource-id,"indicator")]
${distance}    650

*** Test Cases ***

Should Remove Darth Vaider
    Start session
    Start app
    Open side menu
    Navigate to page    ${starWarsButton}    Star Wars
    Go to item page    Star Wars   Lista
    Swipe left        ${distance}    ${darthVaderCard}
    Remove card    Darth Vader

    Close Application

