*** Settings ***
Library    SeleniumLibrary
Documentation

*** Test Cases ***
URL Test
    Open Browser        https://www.google.com    chrome
    Title Should Be     Google
    Location Should Be  https://www.google.com/
    Close Browser