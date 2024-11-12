*** Settings ***
Library        SeleniumLibrary

*** Variables ***
${Var1}        https://thetestingworld.com/testings/
${Var2}        https://www.google.co.uk/
${Var3}        https://thetestingworld.com/

*** Test Cases ***
TC001 Switch between Browsers
    Open Browser        ${Var1}        Chrome
    Maximize Browser Window
    Open Browser        ${Var2}        Chrome
    Maximize Browser Window
    Switch Browser        1 
    ${url1}=        Get Location
    Log To Console        ${url1}
    Switch Browser        2 
    ${url2}=        Get Location
    Log To Console        ${url2}

TC002 Check Page Contains
    Open Browser        ${Var3}        Chrome
    Maximize Browser Window
    
    Click Element        xpath://a[contains(text(),'Quick Demo')]
    Page Should Contain Textfield        name:wdform_1_element_first2
    Input Text        name:wdform_1_element_first2        Tesingworld@india.com
    
TC003 Check text Contains
    Open Browser        ${Var1}        Chrome
    Maximize Browser Window        
    #Element Text Should Be        xpath://div[@id='tab-content1']/p        Register now and kick start your career as a Software Testing Pro!
    #Input Text        name:fld_username        Hello
    Element Should Contain        xpath://div[@id='tab-content1']/p        Register now and kick start your
    Input Text        name:fld_username        Hello