*** Settings ***
Documentation       Endpoints de login e conta de usuário (API 7 a 14)

Library             RequestsLibrary
Library             Collections

*** Keywords ***
Build User Data
    [Arguments]    ${email}    ${password}    ${name}=Teste QA    ${city}=Ribeirao Pires

    ${data}=    Create Dictionary
    ...    name=${name}
    ...    email=${email}
    ...    password=${password}
    ...    title=Mr
    ...    birth_date=10
    ...    birth_month=5
    ...    birth_year=1990
    ...    firstname=Teste
    ...    lastname=QA
    ...    company=Empresa QA
    ...    address1=Rua A, 123
    ...    address2=Apto 1
    ...    country=Brazil
    ...    zipcode=09400000
    ...    state=SP
    ...    city=${city}
    ...    mobile_number=11999999999

    RETURN    ${data}

Verify Login
    [Arguments]    ${email}    ${password}

    ${data}=    Create Dictionary    email=${email}    password=${password}
    ${resp}=    POST On Session    api    /verifyLogin    data=${data}    expected_status=any

    RETURN    ${resp}

Verify Login Without Email
    [Arguments]    ${password}

    ${data}=    Create Dictionary    password=${password}
    ${resp}=    POST On Session    api    /verifyLogin    data=${data}    expected_status=any

    RETURN    ${resp}

Delete To Verify Login
    ${resp}=    DELETE On Session    api    /verifyLogin    expected_status=any

    RETURN    ${resp}

Create User Account
    [Arguments]    ${email}    ${password}

    ${data}=    Build User Data    ${email}    ${password}
    ${resp}=    POST On Session    api    /createAccount    data=${data}    expected_status=any

    RETURN    ${resp}

Update User Account
    [Arguments]    ${email}    ${password}    ${name}=Teste QA Atualizado    ${city}=Santo Andre

    ${data}=    Build User Data    ${email}    ${password}    ${name}    ${city}
    ${resp}=    PUT On Session    api    /updateAccount    data=${data}    expected_status=any

    RETURN    ${resp}

Delete User Account
    [Arguments]    ${email}    ${password}

    ${data}=    Create Dictionary    email=${email}    password=${password}
    ${resp}=    DELETE On Session    api    /deleteAccount    data=${data}    expected_status=any

    RETURN    ${resp}

Get User By Email
    [Arguments]    ${email}

    ${params}=    Create Dictionary    email=${email}
    ${resp}=    GET On Session    api    /getUserDetailByEmail    params=${params}    expected_status=any

    RETURN    ${resp}

Given A Registered User
    ${email}=    Generate Unique Email
    ${password}=    Set Variable    Senha@123

    ${resp}=    Create User Account    ${email}    ${password}
    Response Code Should Be    ${resp}    201

    Set Test Variable    ${USER_EMAIL}    ${email}
    Set Test Variable    ${USER_PASSWORD}    ${password}

Remove Registered User
    ${exists}=    Run Keyword And Return Status    Variable Should Exist    ${USER_EMAIL}

    IF    ${exists}
        Delete User Account    ${USER_EMAIL}    ${USER_PASSWORD}
    END

Verify Login Without Password
    [Arguments]    ${email}

    ${data}=    Create Dictionary    email=${email}
    ${resp}=    POST On Session    api    /verifyLogin    data=${data}    expected_status=any

    RETURN    ${resp}

Create User Account Without Field
    [Arguments]    ${field}

    ${email}=    Generate Unique Email
    ${data}=    Build User Data    ${email}    Senha@123

    Remove From Dictionary    ${data}    ${field}

    ${resp}=    POST On Session    api    /createAccount    data=${data}    expected_status=any

    RETURN    ${resp}

Delete User Account Without Credentials
    ${resp}=    DELETE On Session    api    /deleteAccount    expected_status=any

    RETURN    ${resp}