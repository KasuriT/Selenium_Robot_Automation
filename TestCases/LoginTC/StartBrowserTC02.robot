*** Settings ***
Library        SeleniumLibrary
Resource        /../../Resources/Resources.robot
Test Setup        Start and Maximize Browsers        ${url}        ${browser}
Test Teardown        Close Browser Window
Default Tags        DFLT

*** Variables ***
${browser}        chrome
${url}        https://thetestingworld.com/testings/

*** Test Cases ***
Start window with Robert Framework
    [Documentation]        This test case about registration and its functionalities
    Input Text        name:fld_username        Testingworld
    Input Text        name:fld_email        testingworld@india.com
    Input Password        name:fld_password        123456

Robot next test case
    Select Radio Button        add_type        office

