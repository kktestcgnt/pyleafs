*** Settings ***
Resource    ../resources/generic.robot
Library     ../commonLib/Shope.py
Test Setup      logInPage
Test Teardown   Close Browser
*** Variables ***
${productsToPurchase}       Nokia Edge      Samsung Note 8
*** Test Cases ***
checkoutingMultipleProducts
    Log to Console      Welcome to shoping
    selecting Products  ${productsToPurchase}
    paymentGageway

*** Keywords ***
paymentGageway
    Click Element   xpath://div[contains(@class,'navbar-collapse')]/ul/li
    sleep   3
    Wait Until Element Is Visible       //div[contains(@class,'col-md-10')]/table/thead/tr/th[1]
    Element Text Should Be      //div[contains(@class,'col-md-10')]/table/thead/tr/th[1]      Product
    Click Element   //button[@class='btn btn-success']
    Wait Until Element Is Visible   //input[contains(@class,'filter-input')]
    Click Element   //div[contains(@class,'checkbox')]/label
    Wait Until Element Is Visible   //input[contains(@class,'filter-input')]
    Input Text      //input[contains(@class,'filter-input')]    Ind
    sleep   2
    Wait Until Element Is Visible   //div[contains(@class,'input-field')]/following-sibling::div/ul/li[1]
    Click Element   //div[contains(@class,'input-field')]/following-sibling::div/ul/li[1]
    Wait Until Element Is Visible   //input[contains(@class,'btn-success')]
    Click Element   //input[contains(@class,'btn-success')]
    Wait Until Element Is Visible   //div[contains(@class,'alert-success')]
    ${msg}=     Get Text    //div[contains(@class,'alert-success')]/strong
    Log To Console  ${msg}
    Log to Console      Payment Successful
    sleep   10