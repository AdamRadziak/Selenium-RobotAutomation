*** Settings ***
Library    SeleniumLibrary
Library    Collections
Library    pyautogui
Resource    ../../Resources/Resource1.robot
Test Setup    Open browser and maximize window
Test Teardown    Close browser window
Default Tags    DFLT
Documentation    this file is for learninig robot framework

*** Variables ***
${Browser}       Chrome
${URL}           http://www.thetestingworld.com/testings
##${URL_home}      https://www.thetestingworld.com/
#${URL_google}    https://www.google.com/
#${URL_robot_framework}    https://robotframework.org/

*** Test Cases ***
TC_002_1 test case with setup and teardown
#    [Setup]    Open browser and maximize window
#    [Teardown]    Close browser window
    [Tags]    Smoke
    enter userdata  Adam  adam.radziak@gmail.com  costam

TC_002_2 test case with setup and teardown
    [Tags]    Smoke    Sanity
#    [Setup]    Open browser and maximize window
#    [Teardown]    Close browser window
    select radio button    add_type    office

#*** Keywords ***
#Enter Userdata
#    [Arguments]  ${username}  ${email}  ${password}
#    input text    name:fld_username    ${username}
#    input text    name:fld_email    ${email}
#    input text    name:fld_password    ${password}
