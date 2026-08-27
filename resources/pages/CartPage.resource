*** Settings ***
Documentation        Elementos e ações da página de cadastro

Library              Browser
Resource             ../env.resource

*** Keywords ***

Hover And Add Product To Cart
    [Arguments]    ${product_selector}    ${add_to_cart_selector}

    Hover    ${product_selector}
    Click    ${add_to_cart_selector}


Get Product Name
    [Arguments]    ${product_locator}

    ${name}=    Get Text    ${product_locator}

    Set Test Variable    ${product_name}    ${name}
    Log    ${product_name}    console=True

Continue Shopping

    Click        css=button >> text=Continue Shopping

Product in Cart Validation
    [Arguments]    ${product_locator}    ${product_name}

    ${texto_no_carrinho}=    Get Text    ${product_locator}

    ${esperado}=    Evaluate    ' '.join('''${product_name}'''.split())
    ${encontrado}=    Evaluate    ' '.join('''${texto_no_carrinho}'''.split())

    Should Be Equal    ${encontrado}    ${esperado}

Delete
    [Arguments]    ${product_locator}

    Click    ${product_locator}

Get Product Quantity In Cart
    [Arguments]    ${product_id}

    ${quantity}=    Get Text    css=[id=product-${product_id}] >> css=.cart_quantity button

    RETURN    ${quantity}

Product Quantity Should Be
    [Arguments]    ${product_id}    ${expected_quantity}

    ${quantity_atual}=    Get Product Quantity In Cart    ${product_id}

    Should Be Equal As Strings    ${quantity_atual}    ${expected_quantity}

Clear Cart
    ${delete_buttons}=    Get Elements    css=.cart_delete a

    FOR    ${botao}    IN    @{delete_buttons}
        Click    css=.cart_delete a >> nth=0
    END







