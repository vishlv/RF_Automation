*** Settings ***
Resource    ../Resources/Utility/Settings.resource

*** Keywords ***
Login to Application
    Open Browser    ${url}    Chrome    options=binary_location=r"D:\\WebDrivers\\chrome-win64\\chrome.exe"
    SeleniumLibrary.Maximize Browser Window
    Give Username
    Enter Password
    Click Button Element    ${login_btn}

Enter Text in text field
    [Arguments]     ${loc}    ${txt}
    Wait Until Element Is Visible    ${loc}    10 
    Input text    ${loc}    ${txt}

Click Button Element
    [Arguments]    ${loc}
    Wait Until Element Is Enabled    ${loc}    10
    Click Element     ${loc}

Logout from Application
    Click Button Element    ${user_drpdwn_menu}
    Click Button Element    ${login_btn}
    Close Browser
    