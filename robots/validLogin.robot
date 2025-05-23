*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
Test Setup  openBrowser
Resource    common/base.robot

*** Variables ***
*** Test Cases ***
ValidLogIn
    fillTheFormPage     ${username}     ${password}

*** Keywords ***
fillTheFormPage
    [arguments]     ${name}     ${pwd}
    Input Text  xpath://div[@class='form-group']//input[@name='username']   ${name}
    sleep   25

