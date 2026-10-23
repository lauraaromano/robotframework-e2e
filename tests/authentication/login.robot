*** Settings ***
Documentation            Cenários de login de usuários

Library                JSONLibrary
Resource                 ../../resources/base.resource

Test Setup            Prepare Login Test
Test Teardown         Take Screenshot

*** Test Cases ***
Deve realizar login com sucesso
    ${data}    Get fixture    users    existed_user 

    Submit login form            ${data}[email]    ${data}[password]
    Page Should Be                /

Não deve realizar o login com um e-mail incorreto e senha correta
    ${user}         Create Dictionary    
    ...    email=invalidemail@gmail.com 
    ...    password=654321  

    Submit login form            ${user}[email]    ${user}[password]
    Alert should be              Your email or password is incorrect!

Não deve realizar o login com um e-mail correto e senha incorreta
    ${user}         Create Dictionary    
    ...    email=sarahconnor@gmail.com 
    ...    password=123456  

    Submit login form            ${user}[email]    ${user}[password]
    Alert should be              Your email or password is incorrect!

Não deve realizar o login se o campo email não for preenchido
    ${user}         Create Dictionary    
    ...    email=${EMPTY} 
    ...    password=654321  

    Submit login form            ${user}[email]    ${user}[password]
    Field Should Be Invalid     css=input[data-qa="login-email"]

Não deve realizar o login se o campo senha não for preenchido
    ${user}         Create Dictionary    
    ...    email=sarahconnor@gmail.com 
    ...    password=${EMPTY}  

    Submit login form            ${user}[email]    ${user}[password]
    Field Should Be Invalid      css=input[name="password"]

Não deve realizar o login se o campo email e senha não forem preenchidos
    ${user}         Create Dictionary    
    ...    email=${EMPTY}
    ...    password=${EMPTY}  

    Submit login form            ${user}[email]    ${user}[password]
    Field Should Be Invalid      css=input[data-qa="login-email"]

Caso o usuário tentar logar preenchendo campo email sem o @, deverá aparecer um aviso
     ${user}         Create Dictionary    
    ...    email=sarahconnor
    ...    password=654321  

    Submit login form            ${user}[email]    ${user}[password]
    Field Should Be Invalid     css=input[data-qa="login-email"]


*** Keywords ***
Prepare Login Test
    Start Session
    Go to signup page
