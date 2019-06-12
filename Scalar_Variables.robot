*** Settings ***
Documentation    Suite description

*** Variables ***
${Greet}  Hello
${name}  John

*** Test Cases ***
Constants
    log  Hello
    log  Hello World!

Variables
    log  ${Greet}
    log  ${greet}, ${name}
    log to console  ${SUITE_NAME}
    ${var}=  set variable  'Testing'
    log to console  ${var}

