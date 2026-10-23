*** Settings ***
Documentation            Cenários de login de usuários

Library                JSONLibrary
Resource                 ../../resources/base.resource

Test Setup            Prepare Contact Test
Test Teardown         Take Screenshot

*** Test Cases ***
Deve enviar uma mensagem de contato com sucesso 
    ${form_contact}         Create Dictionary    
    ...    name=Sarah  
    ...    email=sarahconnor@gmail.com
    ...    subject=Dúvida sobre cadastro
    ...    message=Dúvida sobre cadastro
    
    Submit contact form    ${form_contact}[name]    ${form_contact}[email]    ${form_contact}[subject]     ${form_contact}[message]      

    Attach File To Contact Form    css=input[type="file"]    contact.png  

    Submit  

    Confirm Native Alert

Deve enviar uma mensagem de contato sem preencher o campo nome
    ${form_contact}         Create Dictionary      
    ...    email=sarahconnor@gmail.com
    ...    subject=Dúvida sobre cadastro
    ...    message=Dúvida sobre cadastro
    
    Submit contact form    ${EMPTY}    ${form_contact}[email]    ${form_contact}[subject]    ${form_contact}[message]

    Attach File To Contact Form    css=input[type="file"]    contact.png  

    Submit
    
    Confirm Native Alert


Deve tentar enviar uma mensagem de contato sem preencher o campo email
    ${form_contact}         Create Dictionary    
    ...    name=Sarah  
    ...    subject=Dúvida sobre cadastro
    ...    message=Dúvida sobre cadastro
    
    Submit contact form    ${form_contact}[name]    ${EMPTY}    ${form_contact}[subject]    ${form_contact}[message]

    Attach File To Contact Form    css=input[type="file"]    contact.png  

    Submit  

    Field Should Be Invalid    css=input[data-qa="email"]

Deve tentar enviar uma mensagem de contato sem preencher o campo com "@"
    ${form_contact}         Create Dictionary    
    ...    name=Sarah  
    ...    email=sarahconnorgmail.com
    ...    subject=Dúvida sobre cadastro
    ...    message=Dúvida sobre cadastro
    
    Submit contact form    ${form_contact}[name]    ${form_contact}[email]    ${form_contact}[subject]     ${form_contact}[message]      

    Attach File To Contact Form    css=input[type="file"]    contact.png  

    Submit  

    Confirm Native Alert

Deve enviar uma mensagem de contato sem preencher o campo Subject
    ${form_contact}         Create Dictionary    
    ...    name=Sarah  
    ...    email=sarahconnor@gmail.com
    ...    message=Dúvida sobre cadastro
    
    Submit contact form    ${form_contact}[name]    ${form_contact}[email]    ${EMPTY}    ${form_contact}[message]

    Attach File To Contact Form    css=input[type="file"]    contact.png  

    Submit  

    Confirm Native Alert

Deve enviar uma mensagem de contato sem preencher o campo Message
    ${form_contact}         Create Dictionary    
    ...    name=Sarah  
    ...    email=sarahconnor@gmail.com
    ...    subject=Dúvida sobre cadastro
    
    Submit contact form    ${form_contact}[name]    ${form_contact}[email]    ${form_contact}[subject]    ${EMPTY}

    Attach File To Contact Form    css=input[type="file"]    contact.png  

    Submit  

    Confirm Native Alert

Deve enviar uma mensagem de contato sem selecionar nenhum arquivo
    ${form_contact}         Create Dictionary    
    ...    name=Sarah  
    ...    email=sarahconnor@gmail.com
    ...    subject=Dúvida sobre cadastro
    ...    message=Dúvida sobre cadastro
    
    Submit contact form    ${form_contact}[name]    ${form_contact}[email]    ${form_contact}[subject]     ${form_contact}[message]      

    Submit  

    Confirm Native Alert

*** Keywords ***
Prepare Contact Test
    Start Session
    ${data}=    Get fixture    users    existed_user
    Login With Existing User    
    Header                     Contact us
