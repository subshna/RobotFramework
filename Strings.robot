*** Settings ***
Documentation    Suite description
Library  String
Library  Collections

*** Test Cases ***
Strings_And_List
    ${str}=     set variable  'Testing String'
    log to console  ${str}
    @{Words}=   split string  ${str}    ${SPACE}
    ${First}=   get from list  ${Words}  -1
    log to console  ${First}