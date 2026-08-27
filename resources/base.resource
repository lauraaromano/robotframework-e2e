*** Settings ***

Library             Browser
Library             JSONLibrary

Resource           pages/SignupPage.resource
Resource           pages/LoginPage.resource
Resource           pages/Header.resource
Resource           pages/ContactPage.resource
Resource           pages/CartPage.resource




Resource           pages/components/Alert.resource
Resource           pages/components/FeedbackPage.resource


*** Keywords ***
Start Session
    New Browser    browser=${BROWSER}    headless=False
    New Page        ${BASE_URL} 

Get fixture
    [Arguments]        ${file_name}    ${scenario}

    ${data}    Load Json From File        
    ...    ${EXECDIR}/resources/fixtures/${file_name}.json
    ...    encoding=utf-8

    RETURN    ${data}[${scenario}]

Login With Existing User
    ${data}    Get fixture    users    existed_user

    Go to signup page

    Submit login form            ${data}[email]    ${data}[password]

    Page Should Be                /


*** Variables ***

${BROWSER}     chromium
${BASE_URL}    https://automationexercise.com

${TEST_FILES_DIR}    ${CURDIR}${/}..${/}files