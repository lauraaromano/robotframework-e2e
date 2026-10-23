*** Settings ***
Documentation            Cenários de checkout

Library                JSONLibrary
Resource                 ../../resources/base.resource

Test Setup            Prepare Checkout Test
Test Teardown         Take Screenshot

*** Test Cases ***
Realizar o checkout com sucesso com comentário
    CheckOut    Teste de comentário
    Payment    Milena    1234567890123456    123    12    2025 
    Feedback is               Order Placed!
    Assert the Cart is Empty


Realizar o checkout com sucesso sem comentário
    CheckOut    
    Payment    Milena    1234567890123456    123    12    2025 
    Feedback is               Order Placed!
    Assert the Cart is Empty


Deve exibir uma mensagem de aviso caso o usuário tente realizar o checkout sem indicar o campo "Name on Card"
    ${data} =    Get fixture    users    existed_user

    Login With Existing User 
    Add Product To Cart And Validate
    CheckOut    
    Payment    ${EMPTY}    1234567890123456    123    12    2025 

    Field Should Be Invalid     css=input[data-qa="name-on-card"]


Deve exibir uma mensagem de aviso caso o usuário tente realizar o checkout sem indicar o campo "Card Number"
    CheckOut    
    Payment    Milena    ${EMPTY}     123    12    2025 
    Field Should Be Invalid     css=input[data-qa="card-number"]

Deve exibir uma mensagem de aviso caso o usuário tente realizar o checkout sem indicar o campo "CVC"
    CheckOut    
    Payment    Milena    1234567890123456     ${EMPTY}     12    2025 
    Field Should Be Invalid     css=input[data-qa="cvc"]

Deve exibir uma mensagem de aviso caso o usuário tente realizar o checkout sem indicar o campo "Expiration"
    CheckOut    
    Payment    Milena    1234567890123456    123    ${EMPTY}    2025 
    Field Should Be Invalid     css=input[name="expiry_month"]
    
Deve exibir uma mensagem de aviso caso o usuário não preencha nenhum dos campos
    CheckOut    
    Payment    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}    ${EMPTY}
    Field Should Be Invalid     css=input[data-qa="name-on-card"]

Deve poder realizar o download da fatura 
    CheckOut    Teste de comentário
    Payment    Milena    1234567890123456    123    12    2025 
    Feedback is               Order Placed!
    DownloadInvoice
    Assert the Cart is Empty


*** Keywords ***

Prepare Checkout Test
    Start Session

    ${data}=    Get fixture    users    existed_user

    Login With Existing User

    Add Product To Cart And Validate