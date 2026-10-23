*** Settings ***
Documentation            Cenários de logouts de usuários

Library        JSONLibrary

Resource                 ../../resources/base.resource

Test Setup            Start Session
Test Teardown         Take Screenshot

*** Test Cases ***
Deve realizar o logout com sucesso
    ${data}    Get fixture    users    existed_user 

    Go to signup page
    Submit login form            ${data}[email]    ${data}[password]
    Page Should Be                /
    Header                         Logout
    Page Should Be                /login



 
