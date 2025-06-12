*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${userName}                     rahulshettyacademy
${passWord}                     learning
${wrongPassword}                learning123
${url}                          https://rahulshettyacademy.com/loginpagePractise/

*** Keywords ***
catchMsgForInvalidPage
    Wait Until Element Is Visible   xpath://div[contains(@class,'alert-danger')]
    ${msg}=      Get Text            xpath://div[contains(@class,'alert-danger')]
    Log To Console      ${msg}
    Should Be Equal As Strings      Incorrect username/password.    ${msg}

logInScenarios
    [Arguments]  ${x}   ${y}  ${flag}
    Create Webdriver    Firefox
    Maximize Browser Window
    Go To    ${url}
    Wait Until Element Is Visible                           xpath://label[@for='username']/following-sibling::input
    Input Text      xpath://*[@id='username']               ${x}
    Input Text      xpath://input[@type='password']         ${y}
    Click Button    //input[@name='terms']/parent::span/parent::label/following-sibling::input
    IF  ${flag} == 1
        ShopingPageValidation
    ELSE
        logingPageObjects.catchMsgForInvalidPage
    END
    sleep   1
