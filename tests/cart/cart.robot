*** Settings ***
Documentation            Cenários de carrinho de compras

Library                JSONLibrary

Resource                 ../../resources/base.resource

Test Setup            Start Session
Test Teardown         Take Screenshot

*** Test Cases ***
Deve adicionar um produto ao carrinho com sucesso
    ${data} =    Get fixture    users    existed_user

    Login With Existing User    

    Header                      Products

    Get Product Name    css=.product-image-wrapper >> nth=0 >> css=.productinfo p

    ${product_id}=    Get Attribute    css=.product-image-wrapper >> nth=0 >> css=.productinfo .add-to-cart    data-product-id

    Hover And Add Product To Cart    css=.product-image-wrapper >> nth=0    css=.productinfo .add-to-cart >> nth=0

    Continue Shopping

    Header                       "Cart"

    Product in Cart Validation    css=[id=product-${product_id}] >> css=.cart_description h4 a    ${product_name}


Deve adicionar múltiplos produtos ao carrinho

    ${data} =    Get fixture    users    existed_user

    Login With Existing User    

    Header                      Products

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
    ${data} =    Get fixture    users    existed_user

    Login With Existing User    

    Header                      Products

    Get Product Name    css=.product-image-wrapper >> nth=0 >> css=.productinfo p

    ${product_id}=    Get Attribute    css=.product-image-wrapper >> nth=0 >> css=.productinfo .add-to-cart    data-product-id

    Hover And Add Product To Cart    css=.product-image-wrapper >> nth=0    css=.productinfo .add-to-cart >> nth=0

    Continue Shopping

    Header                       "Cart"

    Product in Cart Validation    css=[id=product-${product_id}] >> css=.cart_description h4 a    ${product_name}

    Delete    css=[id=product-${product_id}] >> css=.cart_delete a

    Wait For Elements State    css=[id=product-${product_id}]    detached

Deve remover todos os produtos e exibir o carrinho 

    ${data} =    Get fixture    users    existed_user

    Login With Existing User    


    Header                      Products

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
    Login With Existing User

    Header                       "Cart"

    Clear Cart

    Header                      Products

    ${product_id}=    Get Attribute    css=.product-image-wrapper >> nth=0 >> css=.productinfo .add-to-cart    data-product-id

    FOR    ${vez}    IN RANGE    1    4
        Header                      Products

        Hover And Add Product To Cart    css=.product-image-wrapper >> nth=0    css=.productinfo .add-to-cart >> nth=0

        Continue Shopping

        Header                       "Cart"

        Product Quantity Should Be    ${product_id}    ${vez}
    END



# Deve calcular o preço total corretamente com base nos produtos adicionados
# Deve exibir mensagem de carrinho vazio quando nenhum produto foi adicionado
# Deve adicionar o mesmo produto duas vezes e somar a quantidade corretamente
# Deve manter os produtos no carrinho após navegar para outra página do site
# Deve permitir continuar comprando a partir do carrinho (voltar para produtos)
# Deve exibir corretamente nome, preço e imagem de cada produto no carrinho
# Deve exibir corretamente o preço de um produto que foi adicionado no carrinho de acorod com seu preço e quantidade(preco x quantidade = total)


#COLOCAR NO DOCS