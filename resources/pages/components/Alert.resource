*** Settings ***
Documentation        Ações e elementos de avisos de erro

Library              Browser

*** Keywords ***

Alert should be
    [Arguments]    ${expected_text}

    Wait For Elements State    xpath=//form//p[contains(text(), '${expected_text}')]    visible   


Field Should Be Invalid
    [Arguments]    ${selector}

    ${valido}=    Evaluate JavaScript    ${selector}    (el) => el.validity.valid
    Should Be Equal    ${valido}    ${False}    msg=Esperava que o campo "${selector}" estivesse inválido, mas ele está válido.

Confirm Native Alert
    Handle Future Dialogs    action=accept
    
