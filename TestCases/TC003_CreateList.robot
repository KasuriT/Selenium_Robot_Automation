*** Settings ***
Library        Selenium
Library        Collections

*** Variables ***

*** Test Cases ***
TC_001 variable Test
    @{List1}        Create List    Hello        22        34        56        World
    ${list_length}        Get Length        ${List1}
    Log To Console        ${list_length}
    ${list_data}=        Get From List        ${List1}        3
    Log To Console        ${list_data}
    
TC_002 variable Test
    @{List2}        Create List    Hello        22        34        56        World
    :        FOR        ${i}        IN        ${List2}
    \        Log To Console        ${i}
    
TC_003 Set variable
    ${Var1}=        Set Variable        Yes
    Run Keyword If        '${Var1}'=='Yes'        Log To Console        Value Found
    Run Keyword If        '${Var1}'=='No'        Log To Console        Value Not Found

*** Keywords ***

