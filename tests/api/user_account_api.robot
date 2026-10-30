*** Settings ***
Documentation       Cenários de API de conta de usuário

Resource            ../../resources/api/api_base.resource

Suite Setup         Prepare API Test
Test Teardown       Remove Registered User
Test Tags           api

*** Test Cases ***
Deve criar uma conta de usuario com sucesso
    ${email}=    Generate Unique Email
    Set Test Variable    ${USER_EMAIL}    ${email}
    Set Test Variable    ${USER_PASSWORD}    Senha@123

    ${resp}=    Create User Account    ${USER_EMAIL}    ${USER_PASSWORD}

    Response Code Should Be    ${resp}    201
    Response Message Should Be    ${resp}    User created!

Nao deve criar conta de usuario sem o parametro email
    ${resp}=    Create User Account Without Field    email

    Log    ${resp.text}
    Response Code Should Be    ${resp}    400

Nao deve criar conta de usuario sem o parametro senha
    ${resp}=    Create User Account Without Field    password

    Log    ${resp.text}
    Response Code Should Be    ${resp}    400

Deve excluir uma conta de usuario com sucesso
    Given A Registered User

    ${resp}=    Delete User Account    ${USER_EMAIL}    ${USER_PASSWORD}

    Response Code Should Be    ${resp}    200
    Response Message Should Be    ${resp}    Account deleted!

Nao deve excluir conta de usuario sem email e senha
    ${resp}=    Delete User Account Without Credentials

    Log    ${resp.text}
    Response Code Should Be    ${resp}    400

Deve atualizar uma conta de usuario com sucesso
    Given A Registered User

    ${resp}=    Update User Account    ${USER_EMAIL}    ${USER_PASSWORD}

    Response Code Should Be    ${resp}    200
    Response Message Should Be    ${resp}    User updated!

Deve consultar os detalhes do usuario pelo email
    Given A Registered User

    ${resp}=    Get User By Email    ${USER_EMAIL}

    Response Code Should Be    ${resp}    200

    ${body}=    Parse Body    ${resp}
    Should Be Equal    ${body['user']['email']}    ${USER_EMAIL}