*** Settings ***
Documentation       Cenários de API de marcas

Resource            ../../resources/api/api_base.resource

Suite Setup         Prepare API Test
Test Tags           api

*** Test Cases ***
Deve listar todas as marcas com sucesso
    ${resp}=    Get All Brands

    Response Code Should Be    ${resp}    200

    ${body}=    Parse Body    ${resp}
    Should Not Be Empty    ${body['brands']}

Nao deve aceitar PUT na lista de marcas
    ${resp}=    Put To Brands List

    Response Code Should Be    ${resp}    405
    Response Message Should Be    ${resp}    This request method is not supported.
