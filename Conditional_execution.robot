*** Settings ***
Documentation    Suite description

*** Test Cases ***
Run_Keyword
    ${My_Keyword}=  set variable  log to console
    run keyword  ${My_Keyword}  Test

Run_Keyword_If
    ${Type}=    set variable  V2
    run keyword if  '${Type}' == 'V1'  log to console  Testing Variant1
    run keyword if  '${Type}' == 'V2'  log to console  Testing Variant2
    run keyword if  '${Type}' == 'V3'  log to console  Testing Variant3

Run_Keyword_Ignore_Error
    @{Captains}=    create list  Picard  Kirk  Archer
    run keyword and ignore error  should be empty  ${Captains}
    log to console  Reach End, Inspite of Error