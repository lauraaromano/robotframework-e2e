*** Settings ***
Documentation        Elementos e ações da página de cadastro

Library              Browser
Resource             ../env.resource

*** Keywords ***

Submit login form 
    [Arguments]    ${email}    ${password}

    Fill Text    css=input[data-qa="login-email"]       ${email}
    Fill Text    css=input[name="password"]             ${password}


    Click        css=button[type=submit] >> text=Login