*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${form_url}            https://formy-project.herokuapp.com/form
${firstName}           <YOUR-FIRSTNAME>
${lastName}            <YOUR-LASTNAME>
${date}                21-09-2023
${description}         This is my very own test for Formy
${button_text}         Submit
${checkbox_locator}    css:input[type='checkbox']
${years_exp}           2

*** Test Cases ***
Submit Form
    Open Browser         ${form_url}    chrome
    Input Text           id:first-name    ${lastName}
    Input Text           id:last-name    ${lastName}
    Input Text           id:job-title    QA Engineer
    Click Element        id:radio-button-2
    Click Element        ${checkbox_locator}
    Select From List By Value    id:select-menu    ${years_exp}
    Input Text           id:datepicker    ${date}
    Click Element        css:a.btn.btn-lg.btn-primary
    Capture Page Screenshot
    Sleep                5s
    [Teardown]           Close Browser
