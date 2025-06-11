*** Settings ***
Resource    ../resources/generic.robot
Test Teardown   Close Browser
Test Template  logInScenarios


*** Test Cases ***
validlogin      rahulshettyacademy  learning
invalidUser     rahulshettyacademy123   learning

*** Keywords ***
logInScenarios
    [Arguments]  ${username}   ${learning}
    Create Webdriver    Firefox
    Maximize Browser Window
    Go To    ${url}
    Wait Until Element Is Visible                           xpath://label[@for='username']/following-sibling::input
    Input Text      xpath://*[@id='username']               ${userName}
    Input Text      xpath://input[@type='password']         ${passWord}
    Click Button    //input[@name='terms']/parent::span/parent::label/following-sibling::input
    ShopingPageValidation
    sleep   5