*** Settings ***
Documentation    Login Tests
Resource    ${EXECDIR}/resource/base.resource
Test Setup    Start session
Test Teardown    End session

*** Test Cases ***
TC01 - Successful Login
    Sign in    
    Check home page
