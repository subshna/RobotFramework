*** Settings ***
Library                 SeleniumLibrary
Library                 Collections

*** Variables ***
${url}                  https://opensource-demo.orangehrmlive.com/
@{credentails}          Admin          admin123
&{Dict_Login}           Username=Admin          Test          Password=admin123

*** Test Cases ***
Test1
          Open Browser          http://robotframework.org          chrome
          Close Browser
          Log To Console          Test Completed Successfully

Login_Test
          [Tags]          test2
          Open Browser          ${url}          Chrome
          Input Text          id=txtUsername          @{credentails}[0]
          Input Password          id=txtPassword          &{Login}[Password]
          Click Button          id=btnLogin
          Maximize Browser Window
          Close Browser
          Log To Console          %{username} ran on %{os}

Test3
          [Tags]          Test3
          Login
          Close All Browsers

*** Keywords ***
Login
          Open Browser          ${url}          Chrome
          Maximize Browser Window
          Input Text          id=txtUsername          @{credentails}[0]
          Input Password          id=txtPassword          &{Dict_Login}[Password]
          Click Button          id=btnLogin

Close_Browser
          Close All Browsers
