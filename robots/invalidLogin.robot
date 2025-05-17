***Settings ***
Library     SeleniumLibrary
***Variables ***
***Test Cases ***
Invalid_Login
    openChromBrowser
#    fillThePage
#    submitThePage
#    catchMsgForInvalidPage
***Keywords ***
openChromBrowser
    Create Webdriver        Chrome
    Go To                   https://rahulshettyacademy.com/loginpagePractise/
    sleep   5
