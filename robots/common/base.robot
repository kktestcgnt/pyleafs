*** Settings ***

*** Variables ***
${url}      https://rahulshettyacademy.com/loginpagePractise/
${username}     rahulshettyacademy
${password}     learning
${shopvalidation}=       Checkout ( 0 )



*** Keywords ***
openBrowser
    Create Webdriver        Firefox
    Maximize Browser Window
    Go To   ${url}
