*** Settings ***
Resource    ../resources/generic.robot

Test Setup      logInPage
Test Teardown   Close Browser
*** Variables ***
${productsToPurchase}       Nokia Edge      Samsung Note 8
*** Test Cases ***
checkoutingMultipleProducts
    Log to Console      Welcome to shoping
    selecting Products  ${productsToPurchase} #custom keyword which is in shop.py
    paymentGageway
