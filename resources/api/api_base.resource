*** Settings ***
Library     RequestsLibrary
Library     Collections
Resource    ../env.resource
Resource    ./helpers.resource
Resource    ./ProductsService.resource
Resource    ./BrandsService.resource
Resource    ./UserService.resource

*** Keywords ***
Prepare API Test
    Create Session    api    ${API_URL}    verify=True