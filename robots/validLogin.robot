*** Settings ***
Library     SeleniumLibrary
Library     BuiltIn
Library     Collections
Test Setup  openBrowser
Resource    common/base.robot

*** Variables ***
*** Test Cases ***
ValidLogIn
    fillTheFormPage     ${username}     ${password}
    shopPageValidation
    itemDetails

*** Keywords ***
fillTheFormPage
    [arguments]     ${name}     ${pwd}
    Input Text      xpath://div[@class='form-group']//input[@name='username']   ${name}
    Input Text      xpath://form[@id="login-form"]/*[3]/input                   ${password}
    Click Button    css:.btn-info
#//div[@class='container']/*[3]/*/*/a
#.//*[self::app-shop]/*//div[@class='container']/*[3]/ul/li/a

shopPageValidation
    Wait Until Element Is Visible   xpath:.//*[self::app-shop]/*//div[@class='container']/*[3]/ul/li/a
    ${value}=       Get Text    xpath:.//*[self::app-shop]/*//div[@class='container']/*[3]/ul/li/a
    Log to Console  ${value}


itemDetails
    @{expected_items}=   Create List     iphone X    Samsung Note 8  Nokia Edge  Blackberry
    @{actual_items} =     Create List
    ${elements}=    Get WebElements     xpath://div[@class='col-lg-9']/*[2]/*/div/div/h4
    Log to Console      ${elements}
    FOR     ${each}        IN     @{elements}
        Log to Console  ${each.text}
        Append To List  ${actual_items}   ${each.text}
    END
    Log to Console      ${expected_items}
    Log to Console      ${actual_items}
    sleep   50
    Should Be Equal     ${expected_items}   ${actual_items}