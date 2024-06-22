*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Wait until element is ready then click element
    [Arguments]    ${locator}
    Wait Until Keyword Succeeds    2x    10s    Click Element    ${locator}

Wait until element is ready then input text
    [Arguments]    ${locator}    ${text}
    Wait Until Keyword Succeeds    2x    10s    Input Text    ${locator}    ${text}
