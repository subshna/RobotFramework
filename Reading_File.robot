*** Settings ***
Documentation    Suite description
Library  OperatingSystem
Library  String
Library  Collections

*** Test Cases ***
Reading The File
    [Tags]  file-Reading
    ${File_Content}=    get file  ../Resources/Postcode.csv
    log  ${File_Content}
    @{Lines}=   Split Lines And Remove Header  ${File_Content}
    log to console  ${Lines}
    ${Result}=  Calculate Sum From List  ${Lines}
    log to console  ${Result}

*** Keywords ***
Split Lines And Remove Header
    [Arguments]  ${File_Content}
    @{Lines}=   split to lines  ${File_Content}
    remove from list  ${Lines}  0
    [Return]  @{Lines}

Calculate Sum From List
    [Arguments]  ${List}
    ${Result}=  set variable  0
    : For   ${line}  IN  @{List}
    \   log  ${line}
    \   @{Columns}=  split string  ${line}  separator=,
    \   ${value}=   get from list  ${Columns}   2
    \   log  ${value}
    \   ${Result}=  evaluate  ${Result}+${value}
    [Return]  ${Result}