*** Settings ***
Resource    ../Resources/Utility/Settings.robot
Test Setup     Common_keyword.Login to OrangeHRM
Test Teardown     Common_keyword.Logout from OrangeHRM

*** Test Cases ***
Verify Login Page title
    ${actual_title}=    Get Login Page Title
    Should Be Equal As Strings     ${Homepage_title}    ${actual_title}

Verify_Succesfull_Login
    Wait Until Page Contains    Dashboard
    Capture Element Screenshot     ${Dashboard_text_element}
    
Verify Admin text on Admin page
    Wait Until Page Contains    Dashboard
    Click Button Element    ${Admin_locator}
    Page_Admin.Verify Admin Page details

Verify Admin user is present in Search Result table
    Click Button Element    ${Admin_locator}
    Page_Admin.Verify Admin Page details
    Page_Admin.Verify admin user presense by search method  
    