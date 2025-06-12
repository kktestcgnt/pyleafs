*** Settings ***
Resource    ../resources/generic.robot
Test Teardown   Close Browser
Test Template  logInScenarios


*** Test Cases ***
validlogin      rahulshettyacademy  learning    1
invalidUser     rahulshettyacademy123   learning    0
wrongPasswordss     rahulshettyacademy      mkc     0
wrongUserWrongPassword  rahulshettyacademy123   learning123    0

