*** Settings ***
*** Variables ***
*** Keywords ***
ShopingPageValidation
    Wait Until Element Is Visible       xpath://nav[contains(class,navbar-expand-sm)]/a
    ${text}=    Get Text        xpath://nav[contains(class,navbar-expand-sm)]/a
    Log To Console      ${text}
    Element Text Should Be      xpath://nav[contains(class,navbar-expand-sm)]/a     ${text}
