*** Settings ***
Library      SeleniumLibrary
Resource     jg3-variables.robot

*** Test Cases ***
CCB used in Query
    Open Browser        ${my_URL}    Chrome
    Input Text          locator=q    text=${my_Query}
    Press Keys          None         ENTER
    Close Browser
