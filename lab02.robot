*** Setting ***

*** Variables ***
${num_from_var}     ${99}
@{empty_list_var}
@{list_var_1}   var1    var2    ${6}
&{empty_dict_var}
&{dic_var_1}    name=Anucha     surname=Wilailert    nickname=Aof


*** Test Cases ***
TC01
    [Documentation]     Testcase 01 string
    ${Hello}    Set Variable    Good Morning
    ${Number}   Set Variable    1234
    Log     ${Hello}
    Log     ${Number}
    ${name}     Set Variable    Aof
    ${Surname}      Set Variable    Wilailert
    ${fullname}     Set Variable    ${name} ${Surname}
    Log     ${fullname}

TC02
    [Documentation]     Testcase 02 int
    ${num_1}    Set Variable    ${4}
    ${num_2}    Set Variable    ${2}
    Log     ${num_1}
    Log     ${num_from_var}
    ${sum}  Evaluate    ${num_1}+${num_2}
    Log     ${sum}
    ${minus}    Evaluate    ${num_1}-${num_2}
    Log     ${minus}
    ${multiple}     Evaluate    ${num_1}*${num_2}
    Log     ${multiple}
    ${divide}     Evaluate    ${num_1}/${num_2}
    Log     ${divide}

TC03
    [Documentation]     Testcase 03 Float
    ${number}   Set Variable    ${12.35}
    Log     ${number}

TC04
    [Documentation]     Testcase 04 Boolean
    ${bool_1}      Set Variable     ${TRUE}
    ${bool_2}      Set Variable     ${FALSE}
    Log     ${bool_1}
    Log     ${bool_2}

TC05
    [Documentation]     Testcase 05 List
    ${list_1}   Create List     frame   king    mew
    ${list_2}   Create List     ${1}    ${2}    ${3}
    ${list_3}   Create List
    Log     ${list_2}   
    Log     ${list_1}
    Log     ${list_3}

    Log     ${empty_list_var}
    Log     ${list_var_1}

TC06
    [Documentation]     Testcase 06 Dictionary
    ${dic_01}   Create Dictionary   name=anu    surname=Wilailert   nickname=Aof
    &{dic_02}   Create Dictionary   name=anu    surname=Wilailert   nickname=Aof
    &{dic_03}   Create Dictionary
    Log     ${dic_01}
    Log     ${dic_02}
    Log     ${dic_03}
    Log     ${empty_dict_var}
    Log     ${dic_var_1}

TC07
    [Documentation]     Testcase 07 ListDict
    ${person_01}   Create Dictionary   name=anu    surname=Wilailert   nickname=Aof
    ${person_02}   Create Dictionary   name=Anucha     surname=Wilailert   nickname=Aof
    ${list_person}      Create List     ${person_01}    ${person_02}
    Log     ${list_person}[1][name]

TC08
    [Documentation]     Testcase 08 DictList
    ${list_name}    Create List     Aof     Pat     Kim
    ${person_03}   Create Dictionary   name=${list_name}
    Log     ${person_03}[name][1]




*** Keywords ***