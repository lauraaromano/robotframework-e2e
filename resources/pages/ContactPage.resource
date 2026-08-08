*** Settings ***
Documentation        Elementos e ações da página de cadastro

Library              Browser
Resource             ../env.resource

*** Keywords ***

Submit contact form 
    [Arguments]    ${name}    ${email}    ${subject}    ${message}    

    Fill Text    css=input[name=name]        ${name}
    Fill Text    css=input[name=email]       ${email}
    
    Fill Text    css=input[name=subject]       ${subject}

    Fill Text    css=textarea[name=message]       ${message}

Attach File To Contact Form
    [Arguments]    ${selector}    ${nome_arquivo}

    ${caminho}=    Set Variable    ${TEST_FILES_DIR}${/}${nome_arquivo}
    Log    CAMINHO FINAL: ${caminho}    console=True
    Upload File By Selector    ${selector}    ${caminho}

Submit

    Click        css=input[type=submit] >> text=Submit