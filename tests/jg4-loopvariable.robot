*** Settings ***
Library        SeleniumLibrary
Library        OperatingSystem
Library        String
Documentation    This is the documentation of the test cases suite.

*** Variables ***
${csv_file_path}         ${CURDIR}${/}myData.csv
@{ROBOTS}=      Bender    Johnny5    Terminator    Robocop


*** Test Cases ***
Test - Read from CSV
    ${csv_data} =    Run    type ${csv_file_path}
    Log    CSV Data : ${csv_data}
    ${csv_rows} =    Split To Lines    ${csv_data}
    FOR  ${element}  IN  ${csv_rows}
        Log     ${element}
    END

Test - Loop over a list of items and log each of them
    FOR    ${robot}    IN    @{ROBOTS}
        Log    ${robot}
    END
