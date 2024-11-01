*** Settings ***

Library    AppiumLibrary

*** Test Cases ***

Should do a simple click
    Open Application	http://localhost:4723    
    ...                 platformName=Android
    ...                 deviceName=Android Emulator
    ...                 automationName=UIAutomator2
    ...                 app=${EXECDIR}/app/yodapp-beta.apk
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true
    Wait Until Page Contains    Yodapp    10
    Click Text    QAX    10
    Wait Until Page Contains    Clique em Botões    10
    Close Application