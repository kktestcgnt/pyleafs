*** Settings ***
Library     SeleniumLibrary
Resource  common/base.robot
Library     BuiltIn
Library     String
Library     Collections
Test Setup      openBrowser
*** Variables ***

*** Test Cases ***
childParentTransition
    goToNewWindow
    getEmailAddressFromNewWindow
    sendEmailidFromNewWindowToParentWindow

*** Keywords ***
goToNewWindow
    Click Element       xpath://div[@class='float-right']/a
    Switch Window       New
    sleep       3
    ${x}=   Get Title
    ${y}=   Set Variable    RS Academy
    IF      '${x}' == '${y}'
        Log To Console  ${x}
    END

getEmailAddressFromNewWindow
    ${data}=    Get Text    xpath://P[@class="im-para red"]
    @{seperated_data}=      Split String    ${data}     at
    ${email_parser}=        Get From List   ${seperated_data}   1
    @{email_catcher}=       Split String    ${email_parser}     with
    ${email}=          Get From List   ${email_catcher}   0
    Log To Console      ${email}
    Set Global Variable     ${email}

sendEmailidFromNewWindowToParentWindow
    Switch Window       MAIN
    sleep   5
    Input Text  //input[@id='username']     ${email}
