*** Settings ***
Documentation       Cenários de API de produtos

Resource            ../../resources/api/api_base.resource

Suite Setup         Prepare API Test
Test Tags           api

*** Test Cases ***
Deve listar todos os produtos com sucesso
    ${resp}=    Get All Products

    Response Code Should Be    ${resp}    200

    ${body}=    Parse Body    ${resp}
    Should Not Be Empty    ${body['products']}

Nao deve aceitar POST na lista de produtos
    ${resp}=    Post To Products List

    Response Code Should Be    ${resp}    405
    Response Message Should Be    ${resp}    This request method is not supported.

Deve buscar produtos pelo termo informado
    [Template]    Search Should Return Products
    top
    tshirt
    jean

Nao deve buscar produto sem o parametro search_product
    ${resp}=    Search Product Without Parameter

    Response Code Should Be    ${resp}    400
    Response Message Should Be
    ...    ${resp}
    ...    Bad request, search_product parameter is missing in POST request.

*** Keywords ***
Search Should Return Products
    [Arguments]    ${term}

    ${resp}=    Search Product    ${term}

    Response Code Should Be    ${resp}    200

    ${body}=    Parse Body    ${resp}
    Should Not Be Empty    ${body['products']}
