*** Settings ***
Documentation        Ações e elementos de avisos de erro

Library              Browser

*** Keywords ***

Alert should be
    [Arguments]    ${expected_text}

    Wait For Elements State    xpath=//form//p[contains(text(), '${expected_text}')]    visible    
    
