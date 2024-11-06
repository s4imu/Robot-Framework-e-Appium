*** Settings ***

Resource    ${EXECDIR}/resource/screens/login.resource
Resource    ${EXECDIR}/resource/screens/task.resource
Library     ${EXECDIR}/resource/libs/mongo.py


*** Variables ***


*** Keywords ***

Start session
    Open Application	http://localhost:4723    
    ...                 platformName=Android
    ...                 deviceName=Android Emulator
    ...                 automationName=UIAutomator2
    ...                 app=${EXECDIR}/apps/markX.apk
    ...                 udid=emulator-5554
    ...                 autoGrantPermissions=true
    Sign in
    Check home page

End session
    Capture Page Screenshot
    Close Application

