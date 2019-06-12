*** Settings ***
Library                 SeleniumLibrary

*** Variables ***
${url_hrm}              https://opensource-demo.orangehrmlive.com
&{User_Credentials}          UserName=Admin          Password=admin123

*** Test Cases ***
Test1
          Log To Console          Test Executed Successfully

Test2
          [Tags]          Sanity
          Log To Console          Test 4 started
          Open Browser          http://google.com          Chrome
          Close All Browsers
          Log To Console          Test 4 Completed
          Set Tags          Smoke
          Remove Tags          Smoke

Test5
          [Tags]          Sanity
          LOg to Console          Testing Error

*** Keywords ***
Initial_Browser
          Open Browser          ${url_hrm}          Chrome
          Maximize Browser Window

Enter_Credentials
          Input Text          id=txtUsername          &{User_Credentials}[UserName]
          Input Password          name=txtPassword          &{User_Credentials}[Password]
          Click Button          name=Submit

Quit_Browser
          Close Browser
          Close All Browsers
