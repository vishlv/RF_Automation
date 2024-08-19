*** Variables ***
############### Homepage###################
${Homepage_title}=  OrangeHRM  
${Dashboard_text_element}=    //h6[text()='Dashboard']
${Admin_locator}=    //a/span[text()='Admin']
${user_drpdwn_menu}=   //p[@class='oxd-userdropdown-name']  
${logout_btn}=    //li/a[text()='Logout']
########## Admin page###########
${System_user_username_field}    //form[@class="oxd-form"]//input[@class="oxd-input oxd-input--active"]
${Staus_drop_down}     //label[text()='Status']/following::div[@class="oxd-select-text--after"]
${enable_value_drpdwn}    //span[text()="Enabled"]
${search_btn}     //button[text()=" Search "]
${search_result_table}    //div[@class="oxd-table"]
${fetch_value_from_table}    //div[@class='oxd-table-body']/div/div/div[count(//div[@class="oxd-table-header"]/div/div[text()='Actions']/preceding-sibling::div)+1]