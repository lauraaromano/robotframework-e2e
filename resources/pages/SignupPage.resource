*** Settings ***
Documentation        Elementos e ações da página de cadastro

Library              Browser
Resource             ../env.resource

*** Keywords ***

Go to signup page
    Go to        ${BASE_URL}/login 
    
    Wait For Elements State
    ...    text=New User Signup!
    ...    visible


Submit signup form 
    [Arguments]    ${name}    ${email}

    Fill Text    css=input[name=name]                    ${name}
    Fill Text    css=input[data-qa="signup-email"]       ${email}

    Click        css=button[type=submit] >> text=Signup

Enter Account Information
    [Arguments]    ${user}

    IF    '${user}[title]' == 'Mr'
        Click    input[id=id_gender1]
    ELSE IF    '${user}[title]' == 'Mrs'
        Click    input[id=id_gender2]
    ELSE
        Fail    Título '${user}[title]' inválido.
    END

    Get Property    input[name=name]     value    ==    ${user}[name]
    Get Property    input[name=email]    value    ==    ${user}[email]

    Fill Text    input[name=password]    ${user}[password]

    Select Options By    id=days      value    ${user}[birth][day]
    Select Options By    id=months    value    ${user}[birth][month]
    Select Options By    id=years     value    ${user}[birth][year]   

    IF    ${user}[newsletter]
        Click    input[id=newsletter]
    END

    IF    ${user}[offers]
        Click    input[id=optin]
    END

Enter Address Information 
    [Arguments]    ${user}  

    Fill Text    input[name=first_name]    ${user}[address][firstName]
    Fill Text    input[name=last_name]     ${user}[address][lastName]
    Fill Text    input[name=company]       ${user}[address][company]
    Fill Text    input[name=address1]      ${user}[address][adress]
    Fill Text    input[name=address2]      ${user}[address][address2]
    Fill Text    input[name=company]       ${user}[address][company]

    Click        select[name=country]
    Select Options By    select[name=country]    value    ${user}[address][country]

    Fill Text    input[name=state]               ${user}[address][state]
    Fill Text    input[name=city]                ${user}[address][city]
    Fill Text    input[name=zipcode]             ${user}[address][zipcode]
    Fill Text    input[name=mobile_number]       ${user}[address][mobile]

    Click        css=button[type=submit] >> text=Create Account

Continue
        Click        css=a >> text=Continue




   







