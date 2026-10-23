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

# Deve realizar a filtragem de marcas com sucesso

# Deve realizar um review de um produto com sucesso

# Deve tentar realizar um review de um produto sem preencher o campo Nome

# Deve tentar realizar um review de um produto sem preencher o campo Email

# Deve tentar realizar um review de um produto sem preencher o campo Email de forma válida

# Deve tentar realizar um review de um produto sem preencher o campo Review


*** Keywords ***
Prepare Products Test
    Start Session
    ${data}=    Get fixture    users    existed_user
    Login With Existing User    
    Header                      Products



 
