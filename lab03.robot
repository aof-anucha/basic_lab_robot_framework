*** Setting ***

*** Variables ***
@{list_var_1}   a   b   c   d
&{dic_var_1}    name=anu    surname=Wilailert       nickname=Aof

*** Test Cases ***
TC01
    [Documentation]     How to Run Keyword If
    ${int_1}    Set Variable    ${5}
    Run Keyword If      ${int_1}>${4}   Log     int 1 is ${int_1}
    Run Keyword If      ${int_1}!=${5}   Log     int 1 is ${int_1}  ELSE    Log     int 1 is equal 5

TC02    
    [Documentation]     How to use If/ELSE  If  Condition
    ${string_1}     Set Variable    Lucky
    IF      '${string_1}'=='Lucky'
        Log     my name is ${string_1}
    END

    IF      '${string_1}'=='Aof'
        Log     my name is ${string_1} {on condition 1}
    ELSE IF     '${string_1}'=='Lucky'
        Log     my name is ${string_1} {on condition 2}
    ELSE
        Log     my name is ${string_1} {on condition 3}
    END

TC03
    FOR     ${var}      IN      @{list_var_1}
        Log     ${var}
    END

    FOR     ${idx}      ${item}     IN ENUMERATE    @{list_var_1}
        Log     value is ${idx} is ${item}
    END

TC04
    [Documentation]     Nest loop
    @{alphabets}    Create List     a       b       c 
    @{numbers}      Create List     ${1}    ${2}    ${3}
    FOR     ${alphabet}     IN      ${alphabets}
        FOR     ${number}   IN      ${numbers}
            Log     ${alphabet}${number}
        END
    END

TC05
    [Documentation]      loop a range
    FOR     ${index}    IN RANGE    10
        Log     ${index}
    END

    FOR     ${index}    IN RANGE    3   10
        Log     ${index}
    END

    ${length_list_var_1}    Get Length      ${list_var_1}
    FOR     ${idx}      IN RANGE    0   ${length_list_var_1}
        Log     Variable of index ${idx} is ${list_var_1}[${idx}]
    END

TC06
    [Documentation]     loop Dictionary

    FOR     ${key_value}    IN      &{dic_var_1}
        Log     ${key_value}
    END

    FOR     ${key}      IN      @{dic_var_1}
        Log     ${key}=${dic_var_1}[${key}]
    END


  
*** Keywords ***