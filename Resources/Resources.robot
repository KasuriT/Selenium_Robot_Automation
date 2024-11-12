*** Settings ***
Library        SeleniumLibrary
Library        ../ExternalKeywords/UserKeywords.py


*** Variables ***
#${url}        https://thetestingworld.com/testings/
#${browser}        Chrome

*** Keywords ***
Start and Maximize Browsers
    [Documentation]        This keyword for start browser and maximize the window
    [Arguments]        ${userURL}        ${inputBrowser}
    Open Browser        ${userURL}        ${inputBrowser}
    Maximize Browser Window

Close Browser Window
    ${Title}=        Get Title
    Log        ${Title}
    Close Browser
    
Before Each Test Suites
    Log        Before Each Test Suites
    
After Each Test Suites
    Log        After Each Test Suites

Create Folder at Runtime
    create_folder
    create_sub_folder
    Log    "Task done.."
