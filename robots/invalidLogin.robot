***Settings ***
Library     SeleniumLibrary
Library     BuiltIn
***Variables ***
***Test Cases ***
Invalid_Login
    openChromBrowser
    fillThePage
    submitThePage
    catchMsgForInvalidPage
***Keywords ***
openChromBrowser
    Create Webdriver        Chrome
    Maximize Browser Window
    Go To                   https://rahulshettyacademy.com/loginpagePractise/
fillThePage
    Wait Until Element Is Visible       id:username
    Input Text      id:username         rahulshettyacademy
    Input Text      id:password         learnings
submitThePage
    Click Button    xpath://input[@id='signInBtn']
catchMsgForInvalidPage
    Wait Until Element Is Visible   xpath://div[contains(@class,'alert-danger')]
    ${msg}=      Get Text            xpath://div[contains(@class,'alert-danger')]
    Log To Console      ${msg}
    Should Be Equal As Strings      Incorrect username/password.    ${msg}

