*** Settings ***
Documentation            Cenários de cadastro de usuários

Library        JSONLibrary

Resource                 ../../resources/base.resource

Test Setup            Start Session
Test Teardown         Take Screenshot

*** Test Cases ***
Deve poder cadastrar uma novo usuário
    [Tags]    critical
    #definição da massa
    ${data}    Get fixture    users    user1 

    Go to signup page

    Submit signup form           ${data}[name]    ${data}[email]
    Enter Account Information    ${data}   
    Enter Address Information    ${data}

    Feedback is               Account Created!
    Continue

    # #deletanto usário
    Delete account
    Feedback is              Account Deleted!

 
Não deve poder cadastrar uma usuário com email já existente
     ${data}    Get fixture    users    existed_user

    Go to signup page

    Submit signup form           ${data}[name]    ${data}[email]

    Alert should be              Email Address already exist!

Não deve poder cadastrar usuário caso no campo Email não tenha @

    ${user}         Create Dictionary    
    ...    name=Hermione Gomes  
    ...    email=hermione  

    Go to signup page
    Submit signup form           ${user}[name]    ${user}[email]

    Validation Message Should Contain    [data-qa="signup-email"]    Inclua um "@" no endereço de e-mail

Não deve poder prosseguir o cadastro caso o usuário não preencha o campo Name 

    ${user}         Create Dictionary    
    ...    name=${EMPTY}  
    ...    email=hermione@gmail.com  

    Go to signup page
    Submit signup form           ${user}[name]    ${user}[email]

    Validation Message Should Contain    css=input[name=name]    Preencha este campo.

Não deve poder prosseguir o cadastro caso o usuário não preencha o campo Email 

    ${user}         Create Dictionary    
    ...    name=Hermione Gomes  
    ...    email=${EMPTY}  

    Go to signup page
    Submit signup form           ${user}[name]    ${user}[email]

    Validation Message Should Contain    css=input[data-qa="signup-email"]     Preencha este campo.

Não deve poder prosseguir o cadastro caso o usuário não preencha o campo Name e Email

    ${user}         Create Dictionary    
    ...    name=${EMPTY}  
    ...    email=${EMPTY}  
 

    Go to signup page
    Submit signup form           ${user}[name]    ${user}[email]

    Validation Message Should Contain    css=input[name=name]    Preencha este campo.



