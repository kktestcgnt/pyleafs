*** Settings ***
Library  SeleniumLibrary
Library  DataDriver     file=userdata.csv   encoding=utf_8
Test Template  logInScenarios1
*** Variables ***
${url}      https://rahulshettyacademy.com/loginpagePractise/

*** Test Cases ***
login
*** Keywords ***
loginScenarios1
    [Arguments]  ${r}  ${y}  ${flag}
    Create Webdriver    Firefox
    Maximize Browser Window
    Go To    ${url}
    Wait Until Element Is Visible                           xpath://label[@for='username']/following-sibling::input
    Input Text      xpath://*[@id='username']               ${r}
    Input Text      xpath://input[@type='password']         ${y}
    Click Button    //input[@name='terms']/parent::span/parent::label/following-sibling::input
    IF  ${flag} == 1
        ShopingPageValidation
    ELSE
        logingPageObjects.catchMsgForInvalidPage
    END
    sleep   15

