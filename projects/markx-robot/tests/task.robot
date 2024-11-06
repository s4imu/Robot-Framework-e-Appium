*** Settings ***
Documentation    Task Tests
Resource    ${EXECDIR}/resource/base.resource
Suite Setup    Start session
Suite Teardown    End session

*** Variables **
${task}   Aline Cabecinha 1

*** Test Cases ***


TC02 - Successful Create Task
    Create task    ${task}  
    
TC03 - Successful Delete Task
    Delete task    ${task}  