*** Settings ***
Resource    ../resources/generic.robot
Resource    ../pageObjects/paymentGateWayPageObjects.robot
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
