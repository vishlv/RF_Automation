*** Settings ***
Resource    ../Resources/Utility/Settings.robot
Resource    ../Resource/Utility/Common_keyword.robot

*** Variables ***
@{table_headers}=    Username     User Role    Employee Name    Status


# *** Test Cases ***

# test1
#     FOR  ${x}  IN  @{table_headers}
#         Log    ${x}
#     END

*** Keywords ***
Verify Admin Page details
    Wait Until Page Contains     Admin 
    Wait Until Page Contains     User Management

Verify admin user presense by search method
    Enter Text in text field    ${System_user_username_field}    Admin
    Click Button Element   ${Staus_drop_down}
    Click Button Element   ${enable_value_drpdwn}
    Click Button Element    ${search_btn}
    FOR  ${x}  IN   @{table_headers}
        Wait Until Element Is Visible     //div[@class='oxd-table-body']/div/div/div[count(//div[@class="oxd-table-header"]/div/div[text()='${x}']/preceding-sibling::div)+1]
        ${extracted_val}=    Get Text     //div[@class='oxd-table-body']/div/div/div[count(//div[@class="oxd-table-header"]/div/div[text()='${x}']/preceding-sibling::div)+1]
        Log     ${extracted_val}
    END  

Find User in Admin Page using username and role
    [Arguments]     ${username}     ${role}
    Enter Text in text field     ${System_user_username_field}   ${username}
    Common_keyword.Click Button Element     ${Role_type_dropdown}
    Common_keyword.Click Button Element     ${Select_ROLE_option}/span[text()='${role}']
    Click Button Element    ${search_btn}
    FOR  ${x}  IN   @{table_headers}
        Wait Until Element Is Visible     //div[@class='oxd-table-body']/div/div/div[count(//div[@class="oxd-table-header"]/div/div[text()='${x}']/preceding-sibling::div)+1]
        ${extracted_val}=    Get Text     //div[@class='oxd-table-body']/div/div/div[count(//div[@class="oxd-table-header"]/div/div[text()='${x}']/preceding-sibling::div)+1]
        Log     ${extracted_val}
    END 
