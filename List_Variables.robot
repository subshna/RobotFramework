*** Settings ***
Documentation    Suite description
Library  Collections

*** variables ***
@{My_List}=  robot  User1  User2  User3

*** Test Cases ***
Check List Test
    List Should Not Contain Duplicates  ${My_List}
    List Should Contain Value  ${My_List}  robot

Process List Test
    ${Element}=  remove from list  ${My_List}  2
    should be equal  ${Element}  User2

Further Process List Test
    ${Num}=  get length  ${My_List}
    log  ${Num}
    append to list  ${My_List}  robot1  robot2
    ${len_after_app}=  get length  ${My_List}
    log  ${len_after_app}

    log  ${My_List[0]}
    @{Temp_List}=  create list  User1  User3  robot1
    list should contain sub list  ${My_List}  ${Temp_List}