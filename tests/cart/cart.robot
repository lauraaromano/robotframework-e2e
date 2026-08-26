*** Settings ***
Documentation            Cenários de carrinho de compras

Library                JSONLibrary

Resource                 ../../resources/base.resource

Test Setup            Start Session
# Test Teardown         Take Screenshot

*** Test Cases ***
Deve adicionar um produto ao carrinho com sucesso
    ${data}    Get fixture    users    existed_user 

    Go to signup page

    Submit login form            ${data}[email]    ${data}[password]

    Page Should Be                /

    Header                      Products

    Hover And Add Product To Cart    css=.product-image-wrapper >> nth=0    css=.productinfo .add-to-cart >> nth=0

    Continue Shopping

    Header                      Cart

    VERIFICAR SE O PRODUTO COLCOADO NO CARRINHO REALMENTE FOI PRO CARRINHO


# Deve adicionar múltiplos produtos ao carrinho
# Deve remover um produto do carrinho
# Deve remover todos os produtos e exibir o carrinho vazio
# Deve atualizar a quantidade de um produto antes de adicioná-lo ao carrinho
# Deve exibir a quantidade correta de cada produto no carrinho
# Deve calcular o preço total corretamente com base nos produtos adicionados
# Deve exibir mensagem de carrinho vazio quando nenhum produto foi adicionado
# Deve adicionar o mesmo produto duas vezes e somar a quantidade corretamente
# Deve manter os produtos no carrinho após navegar para outra página do site
# Deve permitir continuar comprando a partir do carrinho (voltar para produtos)
# Deve exibir corretamente nome, preço e imagem de cada produto no carrinho