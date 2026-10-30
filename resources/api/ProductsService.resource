*** Settings ***
Documentation       Endpoints de produtos (API 1, 2, 5 e 6)

Library             RequestsLibrary
Library             Collections

*** Keywords ***
Get All Products
    ${resp}=    GET On Session    api    /productsList    expected_status=any

    RETURN    ${resp}

Post To Products List
    ${resp}=    POST On Session    api    /productsList    expected_status=any

    RETURN    ${resp}

Search Product
    [Arguments]    ${term}

    ${data}=    Create Dictionary    search_product=${term}
    ${resp}=    POST On Session    api    /searchProduct    data=${data}    expected_status=any

    RETURN    ${resp}

Search Product Without Parameter
    ${resp}=    POST On Session    api    /searchProduct    expected_status=any

    RETURN    ${resp}
