*** Settings ***
Documentation       Keywords genéricas de API (sem endpoint específico)

Library             Collections

*** Keywords ***
Parse Body
    [Documentation]    O site devolve o JSON como texto, então fazemos o parse manual.
    [Arguments]    ${response}

    ${body}=    Evaluate    json.loads($response.text)    modules=json

    RETURN    ${body}

Response Code Should Be
    [Documentation]    Valida o campo responseCode do corpo da resposta.
    [Arguments]    ${response}    ${expected}

    ${body}=    Parse Body    ${response}

    Should Be Equal As Integers    ${body['responseCode']}    ${expected}

Response Message Should Be
    [Arguments]    ${response}    ${expected}

    ${body}=    Parse Body    ${response}

    Should Be Equal    ${body['message']}    ${expected}

Generate Unique Email
    ${stamp}=    Evaluate    int(time.time() * 1000)    modules=time

    RETURN    qa.${stamp}@teste.com
