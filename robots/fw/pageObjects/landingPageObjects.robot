*** Settings ***
Library     SeleniumLibrary
Resource    shopingPageObjects.robot


*** Variables ***
${userName}                     rahulshettyacademy
${passWord}                     learning
${wrongPassword}                learning123
${url}                          https://rahulshettyacademy.com/loginpagePractise/
*** Keywords ***
logInPage
    Log to Console      landingpageaccess
    Create Webdriver    Firefox
    Maximize Browser Window
    Go To    ${url}
    Wait Until Element Is Visible                           xpath://label[@for='username']/following-sibling::input
    Input Text      xpath://*[@id='username']               ${userName}
    Input Text      xpath://input[@type='password']         ${passWord}
    Click Button    //input[@name='terms']/parent::span/parent::label/following-sibling::input
    ShopingPageValidation