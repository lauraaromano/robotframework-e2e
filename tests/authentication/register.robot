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

    #deletanto usário
    Delete account
    Feedback is              Account Deleted!

 
Não deve poder cadastrar uma usuário com email já existente
     ${data}    Get fixture    users    existed_user

    Go to signup page

    Submit signup form           ${data}[name]    ${data}[email]

    Alert should be              Email Address already exist!

COLOCAR CRREATE DICTIORANY NESSES CASOS ABAIXO

# Não deve poder cadastrar usuário caso no campo Email não tenha @

# Não deve poder prosseguir o cadastro caso o usuário não preencha o campo Name 

# Não deve poder prosseguir o cadastro caso o usuário não preencha o campo Email 

# Não deve poder prosseguir o cadastro caso o usuário não preencha o campo Name e Email

# Não deve poder cadastrar o usuário sem preencher todos os campos obrigatórios
#     ${data}    Get fixture    users    user2 

#     Go to signup page

#     Submit signup form           ${data}[name]    ${data}[email]
#     Enter Account Information    ${data}   
#     Enter Address Information    ${data}

