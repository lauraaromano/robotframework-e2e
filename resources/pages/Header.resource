*** Settings ***
Documentation        Elementos e ações da página de cadastro

Library              Browser
Resource             ../env.resource

*** Keywords ***

Header
    [Arguments]    ${text}    

    Click        css=a >> text=${text}








