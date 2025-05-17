*** Settings ***
Library     BuiltIn

*** Test Cases ***
Compare Strings
    Should Be Equal     robot   robot
        Log     Matched