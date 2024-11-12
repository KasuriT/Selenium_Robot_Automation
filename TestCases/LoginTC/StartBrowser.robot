*** Settings ***
Library        SeleniumLibrary
Library        ../../ExternalKeywords/Locators.py
Resource        ../../Resources/Resources.robot
Test Setup        Start and Maximize Browsers        ${url}        ${browser}
Test Teardown        Close Browser Window
Suite Setup        Before Each Test Suites
Suite Teardown        After Each Test Suites
Default Tags        DFLT
Force Tags        ALL_TC

*** Variables ***
${browser}        chrome
${url}        https://thetestingworld.com/testings/

*** Test Cases ***
Start window with Robert Framework
    [Tags]        smoke
    [Documentation]        This test case about registration and its functionalities
    ${username}=        Read Element Locators        Registration.UserNameText_name
    Input Text        name:${username}        Testingworld
    Input Text        name:fld_email        testingworld@india.com
    Input Password        name:fld_password        123456

#Robot next test case
    #[Tags]        smoke        sanity
    #Select Radio Button        add_type        office

*** Keywords ***
Read Element Locators
    [Arguments]        ${JsonPath}
    ${result}=        read_locator_from_json        ${JsonPath}
    [Return]        ${result}
    