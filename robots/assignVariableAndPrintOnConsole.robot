*** Settings ***

*** Variables ***
${message}=     Helloworld!!!

*** Test Cases ***
Print Variable To Console
    Log To Console      ${message}

*** Keywords ***
