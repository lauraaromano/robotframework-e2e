*** Settings ***
Documentation            Cenários de login de usuários

Library                JSONLibrary

Resource                 ../../resources/base.resource

Test Setup            Start Session
Test Teardown         Take Screenshot

*** Test Cases ***
Deve enviar uma mensagem de contato com sucesso

    Go to signup page

    Submit login form            ${data}[email]    ${data}[password]

    Page Should Be                /


