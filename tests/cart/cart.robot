*** Settings ***
Documentation            Cenários de carrinho de compras

Library                JSONLibrary
Resource                 ../../resources/base.resource

Test Setup            Prepare Cart Test
Test Teardown         Take Screenshot

*** Test Cases ***
Deve adicionar um produto ao carrinho com sucesso
    Get Product Name    css=.product-image-wrapper >> nth=0 >> css=.productinfo p

    ${product_id}=    Get Attribute    css=.product-image-wrapper >> nth=0 >> css=.productinfo .add-to-cart    data-product-id
    Hover And Add Product To Cart    css=.product-image-wrapper >> nth=0    css=.productinfo .add-to-cart >> nth=0

    Continue Shopping
    Header                       "Cart"
    Product in Cart Validation    css=[id=product-${product_id}] >> css=.cart_description h4 a    ${product_name}

Deve adicionar múltiplos produtos ao carrinho
    # Produto 1 
    Get Product Name    css=.product-image-wrapper >> nth=0 >> css=.productinfo p
    ${product_name_1}=    Set Variable    ${product_name}
    ${product_id_1}=    Get Attribute    css=.product-image-wrapper >> nth=0 >> css=.productinfo .add-to-cart    data-product-id

    Hover And Add Product To Cart    css=.product-image-wrapper >> nth=0    css=.productinfo .add-to-cart >> nth=0
    Continue Shopping

    # Produto 2 
    Get Product Name    css=.product-image-wrapper >> nth=1 >> css=.productinfo p
    ${product_name_2}=    Set Variable    ${product_name}
    ${product_id_2}=    Get Attribute    css=.product-image-wrapper >> nth=1 >> css=.productinfo .add-to-cart    data-product-id

    Hover And Add Product To Cart    css=.product-image-wrapper >> nth=1    css=.productinfo .add-to-cart >> nth=1
    Continue Shopping

    # Produto 3
    Get Product Name    css=.product-image-wrapper >> nth=2 >> css=.productinfo p
    ${product_name_3}=    Set Variable    ${product_name}
    ${product_id_3}=    Get Attribute    css=.product-image-wrapper >> nth=2 >> css=.productinfo .add-to-cart    data-product-id

    Hover And Add Product To Cart    css=.product-image-wrapper >> nth=2    css=.productinfo .add-to-cart >> nth=2
    Continue Shopping

    Header                       "Cart"

    Product in Cart Validation    css=[id=product-${product_id_1}] >> css=.cart_description h4 a    ${product_name_1}
    Product in Cart Validation    css=[id=product-${product_id_2}] >> css=.cart_description h4 a    ${product_name_2}
    Product in Cart Validation    css=[id=product-${product_id_3}] >> css=.cart_description h4 a    ${product_name_3}

Deve remover um produto do carrinho
    Get Product Name    css=.product-image-wrapper >> nth=0 >> css=.productinfo p

    ${product_id}=    Get Attribute    css=.product-image-wrapper >> nth=0 >> css=.productinfo .add-to-cart    data-product-id
    Hover And Add Product To Cart    css=.product-image-wrapper >> nth=0    css=.productinfo .add-to-cart >> nth=0

    Continue Shopping
    Header                       "Cart"

    Product in Cart Validation    css=[id=product-${product_id}] >> css=.cart_description h4 a    ${product_name}
    Delete    css=[id=product-${product_id}] >> css=.cart_delete a
    Wait For Elements State    css=[id=product-${product_id}]    detached

Deve remover todos os produtos e exibir o carrinho 
    # Produto 1 
    Get Product Name    css=.product-image-wrapper >> nth=0 >> css=.productinfo p
    ${product_name_1}=    Set Variable    ${product_name}
    ${product_id_1}=    Get Attribute    css=.product-image-wrapper >> nth=0 >> css=.productinfo .add-to-cart    data-product-id

    Hover And Add Product To Cart    css=.product-image-wrapper >> nth=0    css=.productinfo .add-to-cart >> nth=0
    Continue Shopping

    # Produto 2 
    Get Product Name    css=.product-image-wrapper >> nth=1 >> css=.productinfo p
    ${product_name_2}=    Set Variable    ${product_name}
    ${product_id_2}=    Get Attribute    css=.product-image-wrapper >> nth=1 >> css=.productinfo .add-to-cart    data-product-id

    Hover And Add Product To Cart    css=.product-image-wrapper >> nth=1    css=.productinfo .add-to-cart >> nth=1
    Continue Shopping

    # Produto 3
    Get Product Name    css=.product-image-wrapper >> nth=2 >> css=.productinfo p
    ${product_name_3}=    Set Variable    ${product_name}
    ${product_id_3}=    Get Attribute    css=.product-image-wrapper >> nth=2 >> css=.productinfo .add-to-cart    data-product-id

    Hover And Add Product To Cart    css=.product-image-wrapper >> nth=2    css=.productinfo .add-to-cart >> nth=2
    Continue Shopping

    Header                       "Cart"

    Product in Cart Validation    css=[id=product-${product_id_1}] >> css=.cart_description h4 a    ${product_name_1}
    Product in Cart Validation    css=[id=product-${product_id_2}] >> css=.cart_description h4 a    ${product_name_2}
    Product in Cart Validation    css=[id=product-${product_id_3}] >> css=.cart_description h4 a    ${product_name_3}

    Delete        css=[id=product-${product_id_1}] >> css=.cart_delete a
    Delete        css=[id=product-${product_id_2}] >> css=.cart_delete a 
    Delete        css=[id=product-${product_id_3}] >> css=.cart_delete a 

    Wait For Elements State    css=[id=product-${product_id_1}]    detached
    Wait For Elements State    css=[id=product-${product_id_2}]    detached
    Wait For Elements State    css=[id=product-${product_id_3}]    detached

    Text Should Show    b    	Cart is empty!

Deve exibir a quantidade correta de cada produto no carrinho
    Clear Cart

    Header                      Products
    ${product_id}=    Get Attribute    css=.product-image-wrapper >> nth=0 >> css=.productinfo .add-to-cart    data-product-id

    Add Product And Validate Quantity    ${product_id}

Deve manter os produtos no carrinho após navegar para outra página do site
    Get Product Name    css=.product-image-wrapper >> nth=0 >> css=.productinfo p

    ${product_id}=    Get Attribute    css=.product-image-wrapper >> nth=0 >> css=.productinfo .add-to-cart    data-product-id
    Hover And Add Product To Cart    css=.product-image-wrapper >> nth=0    css=.productinfo .add-to-cart >> nth=0

    Continue Shopping
    Header                       "Home"

    Click    css=a[href="/test_cases"] >> nth=0    
    Click    css=.panel-group >> nth=3                    

    Header                       "Cart"
    Product in Cart Validation    css=[id=product-${product_id}] >> css=.cart_description h4 a    ${product_name}
    
Deve calcular corretamente o preço total do produto no carrinho com base no preço unitário e na quantidade (preço × quantidade = total).
    # Produto 1
    Get Product Name    css=.product-image-wrapper >> nth=0 >> css=.productinfo p
    ${product_name_1}=    Set Variable    ${product_name}
    ${product_id_1}=    Get Attribute
    ...    css=.product-image-wrapper >> nth=0 >> css=.productinfo .add-to-cart
    ...    data-product-id

    Hover And Add Product To Cart
    ...    css=.product-image-wrapper >> nth=0
    ...    css=.productinfo .add-to-cart >> nth=0
    Continue Shopping

    # Adiciona Produto 1 novamente
    Hover And Add Product To Cart
    ...    css=.product-image-wrapper >> nth=0
    ...    css=.productinfo .add-to-cart >> nth=0
    Continue Shopping

    # Produto 2
    Get Product Name    css=.product-image-wrapper >> nth=1 >> css=.productinfo p
    ${product_name_2}=    Set Variable    ${product_name}
    ${product_id_2}=    Get Attribute
    ...    css=.product-image-wrapper >> nth=1 >> css=.productinfo .add-to-cart
    ...    data-product-id

    Hover And Add Product To Cart
    ...    css=.product-image-wrapper >> nth=1
    ...    css=.productinfo .add-to-cart >> nth=1
    Continue Shopping

    # Adiciona Produto 2 novamente
    Hover And Add Product To Cart
    ...    css=.product-image-wrapper >> nth=1
    ...    css=.productinfo .add-to-cart >> nth=1
    Continue Shopping

    # Adiciona Produto 2 pela terceira vez
    Hover And Add Product To Cart
    ...    css=.product-image-wrapper >> nth=1
    ...    css=.productinfo .add-to-cart >> nth=1
    Continue Shopping

    # Produto 3
    Get Product Name    css=.product-image-wrapper >> nth=2 >> css=.productinfo p
    ${product_name_3}=    Set Variable    ${product_name}
    ${product_id_3}=    Get Attribute
    ...    css=.product-image-wrapper >> nth=2 >> css=.productinfo .add-to-cart
    ...    data-product-id

    Hover And Add Product To Cart
    ...    css=.product-image-wrapper >> nth=2
    ...    css=.productinfo .add-to-cart >> nth=2

    Continue Shopping
    Header    "Cart"

    Validate Cart Product Total    ${product_id_1}
    Validate Cart Product Total    ${product_id_2}
    Validate Cart Product Total    ${product_id_3}

*** Keywords ***
Prepare Cart Test
    Start Session
    ${data}=    Get fixture    users    existed_user
    Login With Existing User
    Header                      Products
