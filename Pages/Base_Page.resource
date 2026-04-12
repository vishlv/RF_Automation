*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Browser To URL
    [Arguments]    ${url}    ${browser}=chrome
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Close Browser Session
    Close Browser

Click Element By Locator
    [Arguments]    ${locator}
    ${is_clickable}=    Run Keyword And Return Status    Wait For Element To Be Clickable    ${locator}
    Run Keyword If    ${is_clickable}    Click Element    ${locator}

Input Text To Field
    [Arguments]    ${locator}    ${text}
    ${is_editable}=    Run Keyword And Return Status    Wait Until Element Is Enabled    ${locator}
    Run Keyword If    ${is_editable}    Clear Element Text    ${locator}
    Run Keyword If    ${is_editable}    Input Text    ${locator}    ${text}

Get Text From Element
    [Arguments]    ${locator}
    ${is_visible}=    Run Keyword And Return Status    Wait For Element To Be Visible    ${locator}
    ${text}=    Run Keyword If    ${is_visible}    Get Text    ${locator}
    [Return]    ${text}

Wait For Element To Be Visible
    [Arguments]    ${locator}    ${timeout}=10s
    Wait Until Element Is Visible    ${locator}    ${timeout}

Wait For Element To Be Clickable
    [Arguments]    ${locator}    ${timeout}=10s
    Wait Until Element Is Enabled    ${locator}    ${timeout}

Element Should Be Visible
    [Arguments]    ${locator}
    Element Should Be Visible    ${locator}

Element Should Contain Text
    [Arguments]    ${locator}    ${text}
    Element Should Contain    ${locator}    ${text}

Select From Dropdown
    [Arguments]    ${locator}    ${value}
    Select From List By Value    ${locator}    ${value}

Scroll To Element
    [Arguments]    ${locator}
    Scroll Element Into View    ${locator}

Get Element Attribute
    [Arguments]    ${locator}    ${attribute}
    ${value}=    Get Element Attribute    ${locator}    ${attribute}
    [Return]    ${value}