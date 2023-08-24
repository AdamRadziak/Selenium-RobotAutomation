*** Settings ***
Library    SeleniumLibrary
Library    ../ExternalKeywords/UserKeywords.py

*** Variables ***
${Browser}       Chrome
${URL}           http://www.thetestingworld.com/testings

*** Keywords ***
Open browser and maximize window
    open browser    ${URL}    ${Browser}
    maximize browser window

Close browser window
    ${Title} =    get title
    Log    ${Title}
    close browser

Start browser and maximize window
    [Arguments]    ${User_URL}    ${User_Browser}
    open browser    ${User_URL}    ${User_Browser}
    maximize browser window
    ${title} =    get title
    log    ${title}
    [Return]    ${title}

Enter Userdata
    [Arguments]  ${username}  ${email}  ${password}
    input text    name:fld_username    ${username}
    input text    name:fld_email    ${email}
    input text    name:fld_password    ${password}

Before each test suite
    Log    before each test suite

After each test suite
    Log    after each test suite

create folder at runtime
    create folder