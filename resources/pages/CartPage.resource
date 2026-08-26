*** Settings ***
Documentation        Elementos e ações da página de cadastro

Library              Browser
Resource             ../env.resource

*** Keywords ***

Hover And Add Product To Cart
    [Arguments]    ${product_selector}    ${add_to_cart_selector}

    Hover    ${product_selector}
    Click    ${add_to_cart_selector}

Continue Shopping

    Click        css=button >> text=Continue Shopping






