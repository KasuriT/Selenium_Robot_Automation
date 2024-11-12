*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${Browser}        Chrome
${URL}        https://thetestingworld.com/testings/

*** Test Cases ***
TC001 Browser start and close
    Open Browser        ${URL}        ${Browser}
    Maximize Browser Window
    Enter username, email and password        TestingWorld        testingworldindia@gmail.com        123456
    Set Selenium Speed        2Seconds
    #Select From List By Index        name:sex        2
    #Select From List By Value        name:sex        1
    Select From List By Label        name:sex        Female
    Close Browser

*** Keywords ***
Enter username, email and password
    [Arguments]        ${username}        ${email}        ${password}
    Input Text        name:fld_username         ${username}
    Input Text        xpath://input[@name='fld_email']        ${email}
    Input Password        name:fld_password        ${password}
    #Clear Element Text        name:fld_username