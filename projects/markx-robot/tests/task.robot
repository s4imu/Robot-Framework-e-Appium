*** Settings ***
Documentation    Task Tests
Resource    ${EXECDIR}/resource/base.resource
Test Setup    Start session
Test Teardown    End session

*** Variables **
${task}   Aline Cabecinha 1

*** Test Cases ***


TC02 - Successful Create Task
    Remove task from database    ${task}
    Create task    ${task}  

TC03 - Succesful Complete Task
    Complete task    ${task}

TC04 - Successful Delete Task
    Delete task    ${task}  