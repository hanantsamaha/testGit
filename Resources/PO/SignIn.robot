*** Settings ***
Library  Selenium2Library

*** Variables ***
${SIGNIN_MAIN_HEADING} =   xpath=//h1

*** Keywords ***
Login with Valid Credentials
    [Arguments]  ${LOGIN_EMAIL}  ${LOGIN_PASSWORD}
    Fill "Email" Field  ${LOGIN_EMAIL}
    Fill "Password" Field  ${LOGIN_PASSWORD}
    Click "Login" Button

Verify Page Loaded
    Page Should Contain Element  ${SIGNIN_MAIN_HEADING}
    Element Text Should Be       ${SIGNIN_MAIN_HEADING}  Sign in

Fill "Email" Field
    [Arguments]  ${LOGIN_EMAIL}
    Log  Fill email with  ${LOGIN_EMAIL}

Fill "Password" Field
    [Arguments]  ${LOGIN_PASSWORD}
    Log  Fill password with  ${LOGIN_PASSWORD}

Click "Login" Button
    Log  Signing in...