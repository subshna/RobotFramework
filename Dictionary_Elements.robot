*** Settings ***
Documentation    Suite description
Library  Collections

*** Variables ***
&{My_Dict}=  Name=John  EmpID=1234  Age=33  Role=Engineer

*** Test Cases ***
Dictionary Test
    ${len_dict}=  get length  ${My_Dict}
    log  ${len_dict}
    should be equal as integers  ${len_dict}  4

Check Elements Test
    dictionary should contain key  ${My_Dict}  Name
    dictionary should contain value  ${My_Dict}  Engineer

Access Key And Value Test
    ${dict_keys}=  get dictionary keys  ${My_Dict}
    log to console  ${dict_keys}
    ${dict_values}=  get dictionary values  ${My_Dict}
    log to console  ${dict_values}