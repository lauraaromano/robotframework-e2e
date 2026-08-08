*** Settings ***
Documentation        Ações e elementos de feedback

Library              Browser

*** Keywords ***

Feedback is 
    [Arguments]    ${expected_text}

    Wait For Elements State    text=${expected_text}    visible

Page Should Be
    [Arguments]    ${path}

    ${current_url}=    Get Url
    Should Be Equal    ${current_url}    ${BASE_URL}${path}

Text Should Show	
    [Arguments]    ${tag}    ${expected_text}

        Wait For Elements State    css=${tag} >> text=${expected_text}    visible    timeout=20s

