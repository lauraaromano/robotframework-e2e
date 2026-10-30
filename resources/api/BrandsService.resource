*** Settings ***
Documentation       Endpoints de marcas (API 3 e 4)

Library             RequestsLibrary

*** Keywords ***
Get All Brands
    ${resp}=    GET On Session    api    /brandsList    expected_status=any

    RETURN    ${resp}

Put To Brands List
    ${resp}=    PUT On Session    api    /brandsList    expected_status=any

    RETURN    ${resp}
