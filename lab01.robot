*** Setting ***

*** Variables ***
${var1}     Hello World

*** Test Cases ***
TC01
    Log    Hello World

TC02
    Log     ${var1} 
    # Log     ${var2}     
*** Keywords ***