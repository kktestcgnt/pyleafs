*** Settings ***

*** Variables ***
${url}      https://rahulshettyacademy.com/loginpagePractise/
${username}     rahulshettyacademy
${password}

*** Keywords ***
openBrowser
    Create Webdriver        Chrome
    Maximize Browser Window
    Go To   ${url}
