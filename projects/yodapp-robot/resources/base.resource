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

Open side senu
    ${hamburguerMenu}    Set Variable    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]  
    
    Wait Until Element Is Visible    ${hamburguerMenu}
    Click Element    ${hamburguerMenu}

Navigate to Clique em Botões
    ${cliqueEmBotoesButton}    Set Variable    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="Clique em Botões"]
    Click Element    ${cliqueEmBotoesButton}

    ${cliqueEmBotoesPageTittle}    Set Variable    xpath=//android.widget.TextView[@resource-id="com.qaxperience.yodapp:id/toolbarTitle"]
    Element Should Contain Text    ${cliqueEmBotoesPageTittle}    Clique em Botões

Go to Clique Simples page
    Wait Until Page Contains    Clique simples
    Click Text    Clique simples
    
    Wait Until Page Contains    CLIQUE SIMPLES

Validate toast message
    Click Text    CLIQUE SIMPLES

    Wait Until Page Contains    Isso é um clique simples