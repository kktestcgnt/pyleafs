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
    cartPage

*** Keywords ***
fillTheFormPage
    [arguments]     ${name}     ${pwd}
    Input Text      xpath://div[@class='form-group']//input[@name='username']   ${name}
    Input Text      xpath://form[@id="login-form"]/*[3]/input                   ${password}
    Click Button    css:.btn-info

shopPageValidation
    Wait Until Element Is Visible   xpath:.//*[self::app-shop]/*//div[@class='container']/*[3]/ul/li/a
    ${value}=       Get Text    xpath:.//*[self::app-shop]/*//div[@class='container']/*[3]/ul/li/a
    Log to Console  ${value}


itemDetails
    ${item}=   Set Variable     Samsung Note 8
    ${value}=   Set Variable    0
    ${index}=   Set Variable    0
    ${elements}=    Get WebElements     xpath://div[@class='col-lg-9']/*[2]/*/div/div/h4
    ${second}=  Set Variable    /parent::div/following-sibling::div/button
    FOR     ${each}        IN     @{elements}
        ${text}=    Get Text    ${each}
        Log to Console  ${text}
        ${index}=   Evaluate    ${index} + 1
        IF  '${item}' == '${text}'
#            Log to Console  ${text}
            BREAK
        END
    END
    Click Element       //app-card[contains(@class,'col-lg-3')][${index}]/div/div[2]/button
    Click Element       xpath:.//*[self::app-shop]/*//div[@class='container']/*[3]/ul/li/a

cartPage
    Wait Until Element Is Visible   //button[contains(@class,'btn-success')]
    Click Element   //button[contains(@class,'btn-success')]
    Wait Until Element Is Visible   //input[contains(@class,'filter-input')]
    Input Text  //input[contains(@class,'filter-input')]    Ind
    sleep   5
    Wait Until Element Is Visible   //div[@class='suggestions']/ul
    ${elements}=   Get WebElements    //div[@class='suggestions']/ul
    ${item}=   Set Variable     India
    ${index}=   Set Variable    0
    FOR     ${each}    IN  ${elements}
        ${index}=   Evaluate    ${index} + 1
        ${text}=    Get Text    //div[@class='suggestions']/ul[${index}]
        IF  '${text}' == '${item}'
            #Log To Console  ${text}
            Click Element   //div[@class='suggestions']/ul[${index}]
            BREAK
        END
    END
    sleep   1
    click Element     //div[contains(@class,'checkbox-primary')]/label
    sleep   1
    Checkbox Should Be Selected     //div[contains(@class,'checkbox-primary')]/input
    click Element         //div[contains(@class,'checkbox-primary')]//following-sibling::form/input
    Wait Until Element Is Visible   //div[contains(@class,'alert-success')]/a
    ${msg}=     Get Text    //div[contains(@class,'alert-success')]/strong
    Log To Console  ${msg}
    sleep   5
