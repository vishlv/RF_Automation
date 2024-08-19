*** Settings ***
Resource    ../../Resources/Utility/Settings.robot


*** Keywords ***
Login to OrangeHRM
    Open Browser    ${url}    Chrome    options=binary_location=r"D:\\WebDrivers\\chrome-win64\\chrome.exe"
    Maximize Browser Window
    Page_Loginpage.Give Username
    Page_Loginpage.Enter password
    Click Button Element    ${login_btn}

Enter Text in text field
    [Arguments]     ${loc}    ${txt}
    Wait Until Element Is Visible    ${loc}    10 
    Input text    ${loc}    ${txt}

Click Button Element
    [Arguments]    ${loc}
    Wait Until Element Is Enabled    ${loc}    10
    Click Element     ${loc}

Logout from OrangeHRM
    Click Button Element    ${user_drpdwn_menu}
    Click Button Element    ${login_btn}
    Close Browser
    