*** Settings ***

Library    AppiumLibrary

*** Variables ***
${START}    QAX


*** Keywords ***

Start session
    Open Application	http://localhost:4723    
    ...                 platformName=Android
    ...                 deviceName=Android Emulator
    ...                 automationName=UIAutomator2
    ...                 app=${EXECDIR}/app/yodapp-beta.apk
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true

Start app
    Wait Until Page Contains    ${START}    5
    Click Text    ${START}  

Open side menu
    ${hamburguerMenu}    Set Variable    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]  
    
    Wait Until Element Is Visible    ${hamburguerMenu}
    Click Element    ${hamburguerMenu}

Navigate to page
    [Arguments]    ${CLICKMENUITEMBUTTON}  ${PAGETITLE}  
    Click Element    ${CLICKMENUITEMBUTTON} 

    ${cliqueEmBotoesPageTittle}    Set Variable    xpath=//android.widget.TextView[@resource-id="com.qaxperience.yodapp:id/toolbarTitle"]
    Element Should Contain Text    ${cliqueEmBotoesPageTittle}    ${PAGETITLE}  

Go to item page
    [Arguments]    ${PAGETITLE}    ${ITEMPAGEBUTTONTEXT}
    Wait Until Page Contains    ${PAGETITLE}
    Click Text    ${ITEMPAGEBUTTONTEXT}
    

Do a simple click
    [Arguments]    ${TEXTBUTTON} 
    Wait Until Page Contains    ${TEXTBUTTON}
    Click Text    ${TEXTBUTTON}

Do a long click
    [Arguments]    ${ELEMENTLOCATOR}
    ${positions}    Get Element Location    ${ELEMENTLOCATOR}
    Tap With Positions    1000    ${${positions}[x], ${positions}[y]}

Validate toast message
   [Arguments]        ${MESSAGE}

    Wait Until Page Contains    ${MESSAGE}

Click checkbox list itens
    [Arguments]    @{list}
    FOR    ${item}    IN    @{list}
        Click Element    xpath=//android.widget.CheckBox[contains(@text, "${item}")]
    END

Click radio item
    [Arguments]    ${itemName}
    Click Element    xpath=//android.widget.RadioButton[contains(@text, "${itemName}")]

Select Spinner Item
    [Arguments]    ${SPINNERITEM}
    Click Element    id=android:id/text1
    Wait Until Element Is Visible    class=android.widget.ListView
    Click Text    ${SPINNERITEM}

Sign in
    [Arguments]    ${EMAIL}    ${PASSWORD}
    Input Text    id=com.qaxperience.yodapp:id/etEmail    ${EMAIL}
    Input Password    id=com.qaxperience.yodapp:id/etPassword    ${PASSWORD}
    Click Text    ENTRAR

Sign up
    [Arguments]    ${NAME}    ${EMAIL}    ${PASSWORD}    ${SPINNERITEM}
    Input Text    id=com.qaxperience.yodapp:id/etUsername    ${NAME}
    Input Text    id=com.qaxperience.yodapp:id/etEmail    ${EMAIL}
    Input Password    id=com.qaxperience.yodapp:id/etPassword    ${PASSWORD}
    Select Spinner Item    ${SPINNERITEM}
    Click Text    CADASTRAR