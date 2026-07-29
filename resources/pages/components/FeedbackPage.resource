*** Settings ***
Documentation        Ações e elementos de feedback

Library              Browser

*** Keywords ***

Feedback is 
    [Arguments]    ${expected_text}

    Wait For Elements State    text=${expected_text}    visible

