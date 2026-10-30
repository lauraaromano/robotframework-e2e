*** Settings ***
Documentation            Cenários de logouts de usuários

Library        JSONLibrary
Resource                 ../../resources/base.resource

Test Setup            Prepare Products Test
Test Teardown         Take Screenshot

*** Test Cases ***
Deve realizar a filtragem de roupas femininas + vestidos com sucesso
    Select Category      Women        Dress     

Deve realizar a filtragem de roupas femininas + tops com sucesso
    Select Category      Women        Tops

Deve realizar a filtragem de roupas femininas + saree com sucesso
    Select Category      Women      Saree

Deve realizar a filtragem de roupas masculinas + tshirts com sucesso
    Select Category      Men        Tshirts 
    
Deve realizar a filtragem de roupas masculinas + jeans com sucesso
    Select Category      Men        Jeans

Deve realizar a filtragem de roupas infantis + vestidos com sucesso
    Select Category      Kids       Dress

Deve realizar a filtragem de roupas infantis + tops e shirts com sucesso
    Select Category      Kids       Tops


Deve realizar a filtragem de marcas com sucesso
    Select Brand      Polo
    Select Brand      H&M
    Select Brand      Madame
    Select Brand      Mast & Harbour
    Select Brand      Babyhug
    Select Brand      Allen Solly Junior
    Select Brand      Kookie Kids
    Select Brand      Biba

Deve realizar um review de um produto com sucesso
    Review Product    Milena    milena@gmail.com    Gostei muito do produto, recomendo a compra!

Deve tentar realizar um review de um produto sem preencher o campo Nome
    Review Product    ${EMPTY}    milena@gmail.com    Gostei muito do produto, recomendo a compra!

Deve tentar realizar um review de um produto sem preencher o campo Email
    Review Product    Milena    ${EMPTY}    Gostei muito do produto, recomendo a compra!

Deve tentar realizar um review de um produto sem preencher o campo Email de forma válida
    Review Product    Milena    invalid-email    Gostei muito do produto, recomendo a compra!

Deve tentar realizar um review de um produto sem preencher o campo Review
    Review Product    Milena    milena@gmail.com    ${EMPTY}

Digitar o nome de um produto existente no campo "Search Product"
    ${data}=    Get fixture    products    products
    SearchBar    ${data}[product_1]

Buscar produto inexistente
    ${data}=    Get fixture    products    non-existentProduct
    SearchBar Negative    ${data}[product_1]

Realizar busca com o campo vazio
    SearchBar Empty

Buscar produto com letras maiúsculas
    ${data}=    Get fixture    products    products
    SearchBar    ${data}[maiuscula_product]

Buscar produto por nome parcial
    ${data}=    Get fixture    products    products
    SearchBar    ${data}[partial_product]

Buscar produto utilizando caracteres especiais
    ${data}=    Get fixture    products    non-existentProduct
    SearchBar Negative    ${data}[special_character_product]

*** Keywords ***
Prepare Products Test
    Start Session
    ${data}=    Get fixture    users    existed_user
    Login With Existing User    
    Header                      Products



 
