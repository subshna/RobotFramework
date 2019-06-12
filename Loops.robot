*** Settings ***
Documentation    Suite description
Library  Collections
Library  String

*** Test Cases ***
For-Loop-In-Range
    : For   ${Index}    IN Range    0   10
    \   log  ${Index}
    \   ${Random_String}=   generate random string  ${Index}
    \   log  ${Random_String}

Create_List_With_Loop
    @{List}=  create list
    : For  ${i}    IN Range    1   10
    \   append to list  ${List}  ${i}
    log to console  ${List}

For_Loop_Elements
    @{Items}=   create list  Robot  robot1  robot2  robot3
    : For   ${Item}  IN  @{Items}
    \   log to console  ${Item}

Exit_For_Loop
    @{Movie_List}=  create list  Dragon  Intersteller  GodMan  Transporter
    : For   ${Movie}    IN  @{Movie_List}
    \   log to console  ${Movie}
    \   run keyword if  '${Movie}' == 'GodMan'  exit for loop

Repeat Actions
    repeat keyword  3   log to console  Repeating This...