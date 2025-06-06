*** Settings ***
Resource    ../resources/generic.robot
Test Setup      logInPage
*** Variables ***
*** Test Cases ***
productsInShopPage
    Log to Console      Welcome to shoping
    sleep   5
*** Keywords ***
