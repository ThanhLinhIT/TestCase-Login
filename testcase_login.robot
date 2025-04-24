*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Valid Login
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    Wait Until Element Is Visible    name=username    10s
    Input Text    name=username    Admin
    Input Text    name=password    admin123
    Click Button    xpath=//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    Wait Until Location Contains    dashboard    10s
    Location Should Contain         dashboard
    Log    Đăng nhập thành công với tài khoản hợp lệ.
Invalid Login
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    chrome
    Wait Until Element Is Visible    name=username    10s
    Input Text    name=username    Admin1
    Input Text    name=password    admin1233
    Click Button    xpath=//*[@id="app"]/div[1]/div/div[1]/div/div[2]/div[2]/form/div[3]/button
    Wait Until Page Contains    Invalid credentials    10s
    Page Should Contain         Invalid credentials
    Log    Đăng nhập không thành công