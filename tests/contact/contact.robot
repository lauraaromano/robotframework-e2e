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

    Text Should Show    div    Success! Your details have been submitted successfully.        

