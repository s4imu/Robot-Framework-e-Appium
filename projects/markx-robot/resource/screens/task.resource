*** Settings ***

Documentation    Elements and action from Task Page
Resource    ${EXECDIR}/resource/screens/login.resource

*** Variables ***
${NEW_TASK_INPUT_FIELD}    //*[contains(@resource-id, "newTask")]
${NEW_TASK_BTN}    //*[contains(@resource-id, "createTask")]


*** Keywords ***

Create task
    [Arguments]    ${TASK_TITLE}
    Input Text    ${NEW_TASK_INPUT_FIELD}    ${TASK_TITLE}
    Click Element    ${NEW_TASK_BTN}
    Wait Until Element Is Visible    //*[@text="${TASK_TITLE}"]   

Complete task
    [Arguments]    ${TASK_TITLE}     
    Click Element    //*[@text="${TASK_TITLE}"]/../..//*[contains(@resource-id, "updateTask")]
    Wait Until Element Is Visible    //*[@text="${TASK_TITLE}"]/..//android.widget.ImageView


Delete task
    [Arguments]    ${TASK_TITLE}     
    Click Element    //*[@text="${TASK_TITLE}"]/../..//*[contains(@resource-id, "removeTask")]
    Wait Until Page Contains    Remover
    Click Text    SIM
    Wait Until Page Does Not Contain Element        //*[@text="${TASK_TITLE}"] 