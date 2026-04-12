*** Settings ***
Resource    ../Resources/Utility/Settings.resource
Test Setup     Common_keyword.Login to Application
Test Teardown     Common_keyword.Logout from Application

*** Test Cases ***
Verify Login Page title
    [tags]   debug
    ${actual_title}=    Get Login Page Title
    Should Be Equal As Strings     ${Homepage_title}    ${actual_title}

Verify_Succesfull_Login
    Wait Until Page Contains    Dashboard      
    Capture Element Screenshot     ${Dashboard_text_element}
    
Verify Admin text on Admin page
    Wait Until Page Contains    Dashboard       timeout=10
    Click Button Element    ${Admin_locator}
    AdminPage.Verify Admin Page details

Verify Admin user is present in Search Result table
    Click Button Element    ${Admin_locator}
    AdminPage.Verify Admin Page details
    AdminPage.Verify admin user presense by search method

Find User using username and role type
    [Tags]      New
    Click Button Element    ${Admin_locator}
    AdminPage.Find User in Admin Page using username and role      Admin    Admin