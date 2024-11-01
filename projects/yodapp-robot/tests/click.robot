*** Settings ***

Library    AppiumLibrary

*** Variables ***
${START}    QAX

*** Test Cases ***

Should do a simple click
    Open Application	http://localhost:4723    
    ...                 platformName=Android
    ...                 deviceName=Android Emulator
    ...                 automationName=UIAutomator2
    ...                 app=${EXECDIR}/app/yodapp-beta.apk
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true
    Wait Until Page Contains    ${START}    5
    Click Text    ${START}  

    ${hamburguerMenu}    Set Variable    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]  
    
    Wait Until Element Is Visible    ${hamburguerMenu}
    Click Element    ${hamburguerMenu}

    ${cliqueEmBotoesButton}    Set Variable    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="Clique em Botões"]
    Click Element    ${cliqueEmBotoesButton}

    ${cliqueEmBotoesPageTittle}    Set Variable    xpath=//android.widget.TextView[@resource-id="com.qaxperience.yodapp:id/toolbarTitle"]
    Element Should Contain Text    ${cliqueEmBotoesPageTittle}    Clique em Botões
    Close Application