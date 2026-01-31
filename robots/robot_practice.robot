*** Variables ***
${total}=    Evaluate    10 + 20
*** Test Cases ***
Add Numbers Without Variables
    ${value}=    Evaluate    10 + 20
    Log To Console    The result is ${value}
    Log To Console    The result is ${total}
