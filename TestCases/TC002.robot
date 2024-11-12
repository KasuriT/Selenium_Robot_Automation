*** Settings ***
Documentation        Sample test cases for Login scree
Library        SeleniumLibrary 


*** Variables ***
${Browser}        Chrome
${URL}        https://thetestingworld.com/testings/

*** Test Cases ***
TC_001 Variable Test
    ${Var1}        Set Variable        HelloWorld
    Log To Console        ${Var1}

    
