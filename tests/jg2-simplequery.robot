*** Settings ***
Library    SeleniumLibrary
Documentation

*** Test Cases ***
Simple Launch and Search in Google
    [Documentation]     Launch Google & Search for Python
    [tags]              Regression Testing, Haha; Hoho
    Open Browser        https://www.google.com
    Input Text          locator=q    text='x23x;l`2jlkl4k12jc32'
    Press Keys          None    ENTER
    Title Should Be     Google
    Location Should Be  https://www.google.com/
    [Teardown]          Close Browser