*** Settings ***
Documentation            Cenários de checkout

Library                JSONLibrary

Resource                 ../../resources/base.resource

Test Setup            Start Session
Test Teardown         Take Screenshot

*** Test Cases ***
 #DEPOIS DE REALIZAR O CHECKOUT O CARRINHO DEVE ESTAR VAZIO
Realizar o checkout com sucesso com comentário
Realizar o checkout com sucesso sem comentário
Deve exibir uma mensagem de aviso caso o usuário tente realizar o checkout sem idicar o campo "Name on Card"
Deve exibir uma mensagem de aviso caso o usuário tente realizar o checkout sem idicar o campo "Card Number"
Deve exibir uma mensagem de aviso caso o usuário tente realizar o checkout sem idicar o campo "CVC"
Deve exibir uma mensagem de aviso caso o usuário tente realizar o checkout sem idicar o campo "Expiration"
Deve exibir uma mensagem de aviso caso o usuário não preencha nenhum dos campos
Deve poder realizar o download da fatura 