#*** Settings ***
#
#*** Variables ***
#${message}=     Helloworld!!!
#
#*** Test Cases ***
#Print Variable To Console
#    Log To Console      ${message}
#
#
#*** Keywords ***
*** Settings ***

*** Variables ***
${message}=     Helloworld!!!

*** Test Cases ***
Print Variable To Console
    display     2
    display     2

*** Keywords ***
display
    [Arguments]     ${value}
    IF  ${value} == 1
            printingTrue
    ELSE
            printingFalse
    END

printingTrue
    Log To Console      True

printingFalse
    Log To Console      False