*** Settings ***
Documentation   Example using the space seperated plain text format
Library  OperatingSystem

*** Variables ***
${Message}  Hello, World
${dirpath}  /tmp

*** Test Cases ***
My Test
    [Documentation]  Example Test
    Log  ${Message}

Positional Arguments
    create directory  ..${dirpath}/staff
    create file  ..${dirpath}/file.txt  file content is not empty
    copy file  ..${dirpath}/file.txt  ..${dirpath}/staff

Valid Login
    Given login page is open
    When valid userid and password are entered
    and credentials was submitted
    Then welcome page should be displayed

*** Keywords ***
Given login page is open
    log  page opened successfully

When valid userid and password are entered
    log  Username and pswd are entered

and credentials was submitted
    log  Credentails submitted

Then welcome page should be displayed
    log  Welcome page displayed successfully

