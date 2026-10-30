*** Settings ***
Documentation        Elementos e ações da página de cadastro

Library              Browser
Resource             ../env.resource

*** Keywords ***

Select Category
    [Arguments]    ${gender}    ${category}

    Click    css=a[href="#${gender}"]
    Click    css=div#${gender} a >> text=${category}

    Wait For Elements State    css=.features_items h2.title    visible

    ${titulo}=    Get Text    css=.features_items h2.title

    Should Contain    ${titulo}    ${gender}      ignore_case=True
    Should Contain    ${titulo}    ${category}    ignore_case=True

Select Brand
    [Arguments]    ${brand}

    Click    css=.brands-name a[href="/brand_products/${brand}"]

    Wait For Elements State    css=.features_items h2.title    visible

    ${titulo}=    Get Text    css=.features_items h2.title

    Should Contain    ${titulo}    ${brand}    ignore_case=True

Review Product
    [Arguments]    ${name}    ${email}    ${review}

    Click    css=.features_items .choose a[href^="/product_details/"] >> nth=0

    Fill Text    id=name      ${name}
    Fill Text    id=email     ${email}
    Fill Text    id=review    ${review}

    Click    id=button-review

SearchBar
    [Arguments]    ${product}

    Fill Text    id=search_product    ${product}
    Click    id=submit_search

    Wait For Elements State    css=.features_items h2.title    visible

    ${quantidade}=    Get Element Count    css=.single-products:has-text("${product}")
    Should Be True    ${quantidade} > 0


SearchBar Negative
    [Arguments]    ${product}

    Fill Text    id=search_product    ${product}
    Click    id=submit_search

    Wait For Elements State    css=.features_items h2.title    visible

    ${quantidade}=    Get Element Count    css=.single-products:has-text("${product}")
    Should Be Equal As Integers    ${quantidade}    0


SearchBar Empty
    Fill Text    id=search_product    ${EMPTY}
    Click    id=submit_search

    Wait For Elements State    css=.features_items h2.title    visible

    ${quantidade}=    Get Element Count    css=.single-products
    Should Be True    ${quantidade} > 0
