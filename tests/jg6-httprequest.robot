*** Settings ***
Library            RequestsLibrary
Documentation      This is the doc of the test cases suite.

*** Variables ***
${URL_request_base}    https://www.google.com
${session_name}        Green Tea Pokka

*** Test Cases ***
Get response from website
    Create Session    ${session_name}    ${URL_request_base}
    ${response} =     GET On Session    ${session_name}    \
    Should Be Equal As Strings    ${response.status_code}    200
