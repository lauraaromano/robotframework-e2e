*** Settings ***
Documentation        Elementos e ações da página de checkout

Library              Browser
Library              String

Resource             ../env.resource
Resource             ../../resources/base.resource


*** Keywords ***

Add Product To Cart And Validate
    Header    Products

    ${product_name}=    Get Text
    ...    css=.product-image-wrapper >> nth=0 >> css=.productinfo p

    ${product_id}=    Get Attribute
    ...    css=.product-image-wrapper >> nth=0 >> css=.productinfo .add-to-cart
    ...    data-product-id

    Hover And Add Product To Cart
    ...    css=.product-image-wrapper >> nth=0
    ...    css=.productinfo .add-to-cart >> nth=0

    Continue Shopping

    Header    "Cart"

    Product in Cart Validation
    ...    css=[id=product-${product_id}] >> css=.cart_description h4 a
    ...    ${product_name}


CheckOut
    [Arguments]    ${comment}=${EMPTY}

    Click
    ...    css=a >> text=Proceed To Checkout

    Wait For Elements State
    ...    css=textarea[name=message]
    ...    visible

    IF    '${comment}' != ''
        Fill Text
        ...    css=textarea[name=message]
        ...    ${comment}
    END

    Click
    ...    css=a >> text=Place Order



Payment
    [Arguments]
    ...    ${name_on_card}
    ...    ${card_number}
    ...    ${cvc}
    ...    ${expiration_month}
    ...    ${expiration_year}

    Fill Text
    ...    css=input[name=name_on_card]
    ...    ${name_on_card}

    Fill Text
    ...    css=input[name=card_number]
    ...    ${card_number}

    Fill Text
    ...    css=input[name=cvc]
    ...    ${cvc}

    Fill Text
    ...    css=input[name=expiry_month]
    ...    ${expiration_month}

    Fill Text
    ...    css=input[name=expiry_year]
    ...    ${expiration_year}

    Click
    ...    css=button >> text=Pay and Confirm Order

DownloadInvoice
    Click
    ...    css=a >> text=Download Invoice

Assert the Cart is Empty
    Header    "Cart"
    Text Should Show    b    	Cart is empty!


