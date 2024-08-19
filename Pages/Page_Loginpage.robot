*** Settings ***
Resource    ../Resources/Utility/Settings.robot

*** Keywords ***
Get Login Page Title
    ${title}=   Get Title
    RETURN     ${title}

Give Username
    Enter Text in text field    ${username_field}    ${uname}

Enter password
    Enter Text in text field    ${password_field}    ${pwd}


     

