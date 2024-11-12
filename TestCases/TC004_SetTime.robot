*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${Browser}        Chrome
${URL}        https://thetestingworld.com/testings/

*** Test Cases ***
TC001 Browser start and close
    #${Speed}=        Get Selenium Speed
    #Log To Console        ${Speed}
    Open Browser        ${URL}        ${Browser}
    Maximize Browser Window
    #Set Selenium Speed        5Seconds
    Set Selenium Timeout        20Seconds
    ${tm}=        Get Selenium Timeout
    Log To Console        ${tm}
    Wait Until Page Contains        Testing
    Input Text        name:fld_username         TestingWorld        
    Input Text        xpath://input[@name='fld_email']        testingworldindia@gmail.com        
    Input Password        name:fld_password        123456
    #${Speed}=        Get Selenium Speed
    #Log To Console        ${Speed}
    #Capture Page Screenshot        C:/Users/lenovo/PycharmProjects/UdemyQAPractise/TC1.png

TC002 Scroll down
    Open Browser        ${URL}        ${Browser}
    Maximize Browser Window
    Execute Javascript        window.scrollTo(0,1000)
    Sleep        10Seconds

TC003 Open context
    Open Browser        ${URL}        ${Browser}
    Maximize Browser Window
    #Open Context Menu        xpath://span[contains(text(),'VIDEOS')]
    #Double Click Element        xpath://a[contains(text(),'Quick Demo')]
    Mouse Down        xpath://a[contains(text(),'Quick Demo')]
    Mouse Up        xpath://a[contains(text(),'Quick Demo')]