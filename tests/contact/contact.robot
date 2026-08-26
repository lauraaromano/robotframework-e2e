*** Settings ***
Documentation            Cenários de login de usuários

Library                JSONLibrary

Resource                 ../../resources/base.resource

Test Setup            Start Session
# Test Teardown         Take Screenshot

*** Test Cases ***
Deve enviar uma mensagem de contato com sucesso
    ${data}    Get fixture    users    existed_user 

    ${form_contact}         Create Dictionary    
    ...    name=Sarah  
    ...    email=sarahconnor@gmail.com
    ...    subject=Dúvida sobre cadastro
    ...    message=Dúvida sobre cadastro

    Go to signup page

    Submit login form            ${data}[email]    ${data}[password]

    Page Should Be                /

    Header                     Contact us
    
    Submit contact form    ${form_contact}[name]    ${form_contact}[email]    ${form_contact}[subject]     ${form_contact}[message]      

    Attach File To Contact Form    css=input[type="file"]    contact.png  

    Submit  

    Confirm Native Alert

Deve enviar uma mensagem de contato sem preencher o campo nome
    ${data}    Get fixture    users    existed_user 

    ${form_contact}         Create Dictionary      
    ...    email=sarahconnor@gmail.com
    ...    subject=Dúvida sobre cadastro
    ...    message=Dúvida sobre cadastro

    Go to signup page

    Submit login form            ${data}[email]    ${data}[password]

    Page Should Be                /

    Header                     Contact us
    
    Submit contact form    ${EMPTY}    ${form_contact}[email]    ${form_contact}[subject]    ${form_contact}[message]

    Attach File To Contact Form    css=input[type="file"]    contact.png  

    Submit
    
    Confirm Native Alert


Deve tentar enviar uma mensagem de contato sem preencher o campo email
    ${data}    Get fixture    users    existed_user 

    ${form_contact}         Create Dictionary    
    ...    name=Sarah  
    ...    subject=Dúvida sobre cadastro
    ...    message=Dúvida sobre cadastro

    Go to signup page

    Submit login form            ${data}[email]    ${data}[password]

    Page Should Be                /

    Header                     Contact us
    
    Submit contact form    ${form_contact}[name]    ${EMPTY}    ${form_contact}[subject]    ${form_contact}[message]

    Attach File To Contact Form    css=input[type="file"]    contact.png  

    Submit  

    Field Should Be Invalid    css=input[data-qa="email"]

Deve tentar enviar uma mensagem de contato sem preencher o campo com "@"
    ${data}    Get fixture    users    existed_user 

    ${form_contact}         Create Dictionary    
    ...    name=Sarah  
    ...    email=sarahconnorgmail.com
    ...    subject=Dúvida sobre cadastro
    ...    message=Dúvida sobre cadastro

    Go to signup page

    Submit login form            ${data}[email]    ${data}[password]

    Page Should Be                /

    Header                     Contact us
    
    Submit contact form    ${form_contact}[name]    ${form_contact}[email]    ${form_contact}[subject]     ${form_contact}[message]      

    Attach File To Contact Form    css=input[type="file"]    contact.png  

    Submit  

    Confirm Native Alert

Deve enviar uma mensagem de contato sem preencher o campo Subject
    ${data}    Get fixture    users    existed_user 

    ${form_contact}         Create Dictionary    
    ...    name=Sarah  
    ...    email=sarahconnor@gmail.com
    ...    message=Dúvida sobre cadastro

    Go to signup page

    Submit login form            ${data}[email]    ${data}[password]

    Page Should Be                /

    Header                     Contact us
    
    Submit contact form    ${form_contact}[name]    ${form_contact}[email]    ${EMPTY}    ${form_contact}[message]

    Attach File To Contact Form    css=input[type="file"]    contact.png  

    Submit  

    Confirm Native Alert

Deve enviar uma mensagem de contato sem preencher o campo Message
    ${data}    Get fixture    users    existed_user 

    ${form_contact}         Create Dictionary    
    ...    name=Sarah  
    ...    email=sarahconnor@gmail.com
    ...    subject=Dúvida sobre cadastro

    Go to signup page

    Submit login form            ${data}[email]    ${data}[password]

    Page Should Be                /

    Header                     Contact us
    
    Submit contact form    ${form_contact}[name]    ${form_contact}[email]    ${form_contact}[subject]    ${EMPTY}

    Attach File To Contact Form    css=input[type="file"]    contact.png  

    Submit  

    Confirm Native Alert

Deve enviar uma mensagem de contato sem selecionar nenhum arquivo
    ${data}    Get fixture    users    existed_user 

    ${form_contact}         Create Dictionary    
    ...    name=Sarah  
    ...    email=sarahconnor@gmail.com
    ...    subject=Dúvida sobre cadastro
    ...    message=Dúvida sobre cadastro

    Go to signup page

    Submit login form            ${data}[email]    ${data}[password]

    Page Should Be                /

    Header                     Contact us
    
    Submit contact form    ${form_contact}[name]    ${form_contact}[email]    ${form_contact}[subject]     ${form_contact}[message]      

    Submit  

    Confirm Native Alert