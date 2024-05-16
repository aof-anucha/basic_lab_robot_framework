*** Setting ***

*** Variables ***
&{dic_var_1}    name=anu    surname=Wilailert       nickname=Aof

*** Test Cases ***
TC01
    [Documentation]    How to use Keyword
    Print profile infomation    Anucha    Wilailert    Aof
    Print profile infomation    Anucha    Wilailert    Aof    gender=Female

TC02
    [Documentation]     use keyword with return
    ${a}    ${b}    Add number      ${5}    ${4}
    Log     ${a}
    Log     ${b},${a}

TC03
    [Documentation]     Print Fizz Buzz
    # Create keyword for send number
    # keyword loop print 
    # ถ้าตัวเลขหารด้วย 3 ลงตัว ให้แสดงคำว่า Fizz
    # ถ้าตัวเลขหารด้วย 5 ลงตัว ให้แสดงคำว่า Buzz
    # ถ้าตัวเลขหารด้วย 3 และ 5 ลงตัว ให้แสดงคำว่า FizzBuzz
    @{numbers}      Create List     ${3}    ${5}    ${15}

    # Fizz Buzz    ${72}

    Fizz Buzz 2    @{numbers}






   
*** Keywords ***
Print profile infomation
    [Documentation]    print name
    [Arguments]    ${name}    ${surname}    ${nickname}     ${gender}=Male
    Log    My name is ${name} ${surname}
    Log     My gender is ${gender}

Add number  
    [Documentation]     add number
    [Arguments]     ${num_1}    ${num_2}
    ${sum}      Evaluate    ${num_1}+${num_2}
    ${minus}    Evaluate    ${num_1}-${num_2}
    RETURN      ${sum}      ${minus}

Fizz Buzz
    [Arguments]     ${num_1}
    # ${result}    Evaluate    ${num_1}%${3}
    # Log    ${result} 

    IF    ${num_1}%${15} == ${0}
        Log    Fizz Buzz
    ELSE IF    ${num_1}%${3} == ${0}        
        Log    Fizz
    ELSE IF    ${num_1}%${5} == ${0}        
        Log    Buzz
    END



Fizz Buzz 2
    [Arguments]     @{num_1}
    # ${result}    Evaluate    ${num_1}%${3}
    # Log    ${result}

    FOR    ${num_2}    IN    @{num_1}
        IF    ${num_2}%${15} == ${0}
            Log    Fizz Buzz
        ELSE IF    ${num_2}%${3} == ${0}        
            Log    Fizz
        ELSE IF    ${num_2}%${5} == ${0}        
            Log    Buzz
        END
    END 


    # IF    ${num_1}%${15} == ${0}
    #     Log    Fizz Buzz
    # ELSE IF    ${num_1}%${3} == ${0}        
    #     Log    Fizz
    # ELSE IF    ${num_1}%${5} == ${0}        
    #     Log    Buzz
    # END
  
    



    