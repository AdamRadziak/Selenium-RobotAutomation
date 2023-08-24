*** Settings ***
Library    SeleniumLibrary
Library    Collections
#Library    pyautogui
Library    ../../ExternalKeywords/Locators.py
Resource    ../../Resources/Resource1.robot
Test Setup    Open browser and maximize window
Test Teardown    Close browser window
#Suite Setup    Before each test suite
#Suite Teardown    After each test suite
Default Tags    DFLT
Force Tags    ALL_TC
Documentation    this file is for learninig robot framework

*** Variables ***
${Browser}       Chrome
${URL}           http://www.thetestingworld.com/testings
##${URL_home}      https://www.thetestingworld.com/
#${URL_google}    https://www.google.com/
#${URL_robot_framework}    https://robotframework.org/
*** Keywords ***
#Enter Userdata
#    [Arguments]  ${username}  ${email}  ${password}
#    input text    name:fld_username    ${username}
#    input text    name:fld_email    ${email}
#    input text    name:fld_password    ${password}
Read Element Locator ${jsonpath}
    ${result} =  Read Locator From Json  ${jsonpath}
    [Return]    ${result}

*** Test Cases ***
#TC_001 Varaible test
#    ${Var1} =    set variable    Hello world
#    log to console    ${Var1}

#TC_002 List test
#    ${List1} =    create list    Hello    22    22.23  World  Abcd1234
#    FOR    ${i}    IN RANGE    1    10
#       LOG TO CONSOLE    ${i}
#    END
#     FOR    ${i}    IN    ${List1}
#        log to console    ${i}
#     END
#    ${list_len} =  get length    ${List1}
#    log to console    ${list_len}
#    ${list_data} =    get from list    ${List1}    3
#    log to console    ${list_data}

#TC_003 Run keyword test
#    ${Key_var} =    set variable    log to console
#     ${var} =    set variable    YES
#    run keyword    ${Key_var}    cośtam
#     RUN KEYWORD IF  '${var}'=='YES'    log to console    Value found
#     RUN KEYWORD IF  '${var}'=='NO'    log to console    Value not found

#TC_001 Validate Login and Logout
#    open browser    ${URL}    ${Browser}
#    maximize browser window
##    set selenium timeout    20 seconds
##    ${tm} =    get selenium timeout
##    log to console    ${tm}
##    wait until page contains    Testing
##    ${def_time} =    get selenium implicit wait
##    log to console    ${def_time}
##    set selenium implicit wait    20 seconds
##    ${def_time} =    get selenium implicit wait
##    log to console    ${def_time}
#    input text  name:fld_username    TestingWorld
#    input text  name:fld_email       testingworld@gmail.com
#    input text  name:fld_password    abcd
#    capture page screenshot   ../Snapshots/TC_1.png
#    open browser    https://www.google.com    Chrome
#    close all browsers

#TC_002 browser nawigation
#    open browser    ${url_home}    ${browser}
#    maximize browser window
#    execute javascript  window.scrollTo(0,1000)
#    sleep    10 seconds
#    go to    https://www.google.com
#    ${URL1} =    get location
#    log to console    ${URL1}
#    go back
#    ${URL1} =    get location
#    log to console    ${URL1}

#TC001_mouse_operation
#    open browser    ${url_home}    ${browser}
#    maximize browser window
#    open context menu  id:menu499
#    double click element    css:.item-657 a
#    mouse down  css:.item-657 a
#    mouse up  css:.item-657 a
#     mouse over  id:menu499

#TCOO1_keyboard_operation
#    open browser    ${url_home}    ${browser}
#    maximize browser window
#    click link  css:.item-657 a
#    press keys    id:wdform_1_element_first2    hello
#    press keys  class:button-submit    \\13
#    sleep    5s

#TC_002 waits commands
#    open browser    ${url_home}    ${browser}
#    maximize browser window
#    set selenium timeout    10 seconds
#    wait until page contains  VIDEOS
#    wait until element contains  css:.item-657 a    Quick Demo
#    click link  css:.item-657 a
#    wait until page contains element    id:menu499
#    click element  id:menu499

#TC_003 multiple handling windows
#    open browser    ${url_home}    ${browser}
#    maximize browser window
#    open browser    ${url_google}    ${browser}
#    maximize browser window
#    switch browser    1
#    ${url1} =    get location
#    log to console    ${url1}
#    click element    class:item-657
#    switch browser    2
#    ${url2} =    get location
#    log to console    ${url2}
#    execute javascript  window.scrollTo(0,1000)
#    click element    id:L2AGLb
#    close all browsers

#TC_003 multiple handling tabs
#    open browser    ${url_robot_framework}    ${browser}
##    maximize browser window
#    open context menu    link:Robot Framework Foundation
#    ${y_element} =    get horizontal position  link:Robot Framework Foundation
#    ${x_element} =    get vertical position  link:Robot Framework Foundation
#    ${x_cont_menu} =     evaluate    ${x_element} * 2 + 180
#    ${y_cont_menu} =    evaluate     ${y_element} + 10
#    moveTo    x=${x_cont_menu}    y=${y_cont_menu}   duration=2
#    click    button=LEFT
#    BuiltIn.sleep    2s
#    # get unixe value of browser windows
#    ${list1} =    get window handles
#    log to console    ${list1}
#    ${list1_len} =    get length    ${list1}
#    FOR   ${i}    IN    @{list1}
#        switch window   ${i}
#        ${url} =    get location
#        log to console    ${url}
#    END
#    close browser

#TC_004 Validations on page
#    open browser    ${URL_home}    ${browser}
#    page should contain    VIDEOS
#    page should not contain  HOME14
#    click element  css=a[href$="Itemid=657"]
#    close browser

#TC_004 Validations on page with elements
#    open browser    ${URL_home}    ${browser}
#    click element  css=a[href$="Itemid=657"]
#    page should not contain textfield  id=wdform_1_element_first2
#    input text  id=wdform_1_element_first2  text=dupablada
##    close browser
#TC_005 Validations on page with checkbox
#    open browser    ${URL}    ${browser}
#    select checkbox    css=.btn input[type="checkbox"]
#    checkbox should be selected  css=.btn input[type="checkbox"]
#    click element    css=.btn input[type="checkbox"]
#    checkbox should not be selected  css=.btn input[type="checkbox"]
##    close browser
#TC_006 Validations on page with element text
#    open browser    ${URL}    ${browser}
#    element text should be    locator=css=#tab-content1 p    expected=Register now and kick start your career as a Software Testing Pro!
#    input text  name:fld_username    Adam
#    element should contain   locator=css=#tab-content1 p    expected=Register now
#    close browser
#TC_007 Validations on page with element visible
#    [Teardown]    close browser
#    open browser    ${URL}    ${browser}
#    title should be     Login & Sign Up Forms
#    element should be enabled    name:fld_username
##    element should be disabled    name:fld_password
#    element should be visible    css=input[value=home]

#First Test case
#    open browser    ${URL}    ${Browser}
#    maximize browser window
#    Enter Userdata    testing    test@gmail.com    123456
#    set selenium speed    1seconds
#    select from list by index  name:sex    2
#    select from list by value  name:sex    1
#    select from list by label    name:sex    Female
#    select radio button  add_type  office
#    select checkbox  name:terms
#    click link   css:a.displayPopup
#    click button  css:input[value="Sign up"]
    # fill textbox
#    input text  name:fld_username    TestingWorld
#    input text  name:fld_email       testingworld@gmail.com
#    clear element text  name:fld_username
#    close browser
#TC_001 test case from keywords from separate file
#    [Documentation]    this test case case is to check registration functionality of aplication
#    [Timeout]    6s
#    ${title} =    Start browser and maximize window  ${URL}  ${Browser}
#    title should be     Login & Sign Up Forms
#    enter userdata  Adam  adam.radziak@gmail.com  costam
#    close browser

#TC_001_1 test case with setup and teardown
#    [Tags]    Regression
##    [Setup]    Open browser and maximize window
##    [Teardown]    Close browser window
#    enter userdata  Adam  adam.radziak@gmail.com  costam
#
#TC_001_2 test case with setup and teardown
#    [Tags]    Sanity
##    [Setup]    Open browser and maximize window
##    [Teardown]    Close browser window
#    select radio button    add_type    office
Robot test case with locator from json
    [Tags]    Smoke
    ${username} =  Read Element Locator Registration.username_textbox
    input text    name:${username}    Testing
    input text    name:fld_email    adam.radziak@wp.pl
    input text    name:fld_password    123456

