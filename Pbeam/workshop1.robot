*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
${url}                        https://automate-test.stpb-digital.com/login/
${browser}                    edge
${locator_email}              id=email
${locator_password}           name=password
${locator_bottonlogin}        xpath=//*[@id="btn-login"]
${message_email}              xpath=//*[@id="__next"]/div[1]/div/div/div/div/div/form/div[1]/p

*** Keywords ***
Open web browser
    Set Selenium Speed    0.3s
    Open Browser    ${url}    ${browser}
    Maximize Browser Window    #Maxwindow

Input data for login page
    Set Selenium Speed    0.3s
    Input Text    ${locator_email}    user.test@krupbeam.com
    Input Text    ${locator_password}    123456789
    Click Element    ${locator_bottonlogin}

Input data fail for login page
    Set Selenium Speed    0.3s
    Input Text    ${locator_email}     admin.test@krupbeam.com
    Input Text    ${locator_password}    123456789
    Click Element    ${locator_bottonlogin}

Only click submit
    Set Selenium Speed    0.3s
    Click Element    ${locator_bottonlogin}

*** Test Cases ***
TC-001:login pass
    Open web browser
    Input data for login page
    Close Browser

TC-002:login fail
    Open web browser
    Input data fail for login page
    ${txt}=    Get Text    ${message_email}
    Should Be Equal As Strings    ${txt}    Email or Password is invalid 
    Close Browser

TC-003:login dose not write email and password
    Open web browser
    Only click submit
    ${txt}=    Get Text    xpath=//*[@id="__next"]/div[1]/div/div/div[2]/div/div/form/div[1]/p
    ${txt}=    Get Text    xpath=//*[@id="__next"]/div[1]/div/div/div[2]/div/div/form/div[2]/p
    Close Browser
