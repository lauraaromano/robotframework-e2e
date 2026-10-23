*** Settings ***
Documentation        Elementos e ações da página de cadastro

Library              Browser
Resource             ../env.resource

*** Keywords ***

Select Category
    [Arguments]    ${gender}    ${category}

    Click    css=a[href="#${gender}"]
    Click    css=div#${gender} a >> text=${category}

    # Wait For Elements State    css=.features_items h2.title    visible

    # ${titulo}=    Get Text    css=.features_items h2.title

    # Should Contain    ${titulo}    ${gender}      ignore_case=True
    # Should Contain    ${titulo}    ${category}    ignore_case=True
