*** Settings ***
Library        SeleniumLibrary
Library        ../../Resources/Resources.robot
Library        ../../ExternalKeywords/UserKeywords.py

*** Variables ***
${url}        https://www.thetestingworld.com/testings
${browser}        chrome

*** Test Cases ***
Fetch Data
    Open Browser        ${url}        ${browser}
    Maximize Browser Window
    ${PageTitle}=        Get Title
    Log        ${PageTitle}
    ${Speed}=        Get Selenium Speed
    Log        ${Speed}
    ${Value}=        Get Value        xpath://input[@type='submit']
    Log        ${Value}
    ${Text}=        Get Text        xpath://a[@class='displayPopup']
    Log        ${Text}

Fetch Dropdown Data
    Open Browser        ${url}        ${browser}
    Maximize Browser Window
    Select From List By Index        name:sex        2 
    ${Val1}        Get Selected List Value        name:sex
    Log        ${Val1}
    ${Text}        Get Selected List Label        name:sex
    Log        ${Text}
    ${AllLabel}        Get List Items        name:sex
    Log        ${AllLabel}
    
Fetch Values from the file

    Open Browser        ${url}        ${browser}
    Maximize Browser Window
    ${ActualURL}=        Get Location
    Log        ${ActualURL}
    ${PageHTML}=        Get Source
    Log        ${PageHTML}
    ${ElementAttribute}=        Get Element Attribute        name:fld_username        class
    Log        ${ElementAttribute}
    ${Count}=        Get Element Count        class:field
    Log        ${Count}
    
Create folder
    Create Folder at Runtime
    Open Browser        ${url}        ${browser}
    Maximize Browser Window

*** Keywords ***
