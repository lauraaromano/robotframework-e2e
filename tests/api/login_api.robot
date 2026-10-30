*** Settings ***
Documentation       Cenários de API de login

Resource            ../../resources/api/api_base.resource

Suite Setup         Prepare API Test
Test Teardown       Remove Registered User
Test Tags           api

*** Test Cases ***
Deve verificar login com dados validos
    Given A Registered User

    ${resp}=    Verify Login    ${USER_EMAIL}    ${USER_PASSWORD}

    Response Code Should Be    ${resp}    200
    Response Message Should Be    ${resp}    User exists!

Nao deve verificar login sem o parametro email
    ${resp}=    Verify Login Without Email    Senha@123

    Response Code Should Be    ${resp}    400
    Response Message Should Be
    ...    ${resp}
    ...    Bad request, email or password parameter is missing in POST request.

Nao deve verificar login sem o parametro senha
    ${resp}=    Verify Login Without Password    qa.teste@teste.com

    Response Code Should Be    ${resp}    400
    Response Message Should Be
    ...    ${resp}
    ...    Bad request, email or password parameter is missing in POST request.

Nao deve aceitar DELETE na verificacao de login
    ${resp}=    Delete To Verify Login

    Response Code Should Be    ${resp}    405
    Response Message Should Be    ${resp}    This request method is not supported.

Deve retornar usuario nao encontrado com dados invalidos
    ${resp}=    Verify Login    naoexiste@teste.com    senhaerrada

    Response Code Should Be    ${resp}    404
    Response Message Should Be    ${resp}    User not found!