*** Settings ***
Documentation     A test suite with a single test for Login & Sign Up Forms
...               Created by hats' Robotcorder
Library           Selenium2Library    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}    3

*** Test Cases ***
Login & Sign Up Forms test
    Open Browser    https:www.thetestingworld.com/testings/    ${BROWSER}
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    a[@href="#"]
    Click Link    a[@href="#"]
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    a[@href="https:t.me/joinchat/GgRlDbOsbSzkJElL"]
    Click Link    a[@href="https:t.me/joinchat/GgRlDbOsbSzkJElL"]
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    a[@href="https:www.facebook.com/groups/461729974772386/?ref=nf_target&hc_ref=ARSCrv_mrMgSSDWqT4b8kx3RpnWSI6K9uEhVNH-HHMESWvrSmtpqCg2IXKIcVMNXau8&fref=gs&dti=461729974772386&hc_location=group"]
    Click Link    a[@href="https:www.facebook.com/groups/461729974772386/?ref=nf_target&hc_ref=ARSCrv_mrMgSSDWqT4b8kx3RpnWSI6K9uEhVNH-HHMESWvrSmtpqCg2IXKIcVMNXau8&fref=gs&dti=461729974772386&hc_location=group"]
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    a[@href="https:www.youtube.com/channel/UCsdoSHH5bucBf_wwtvWJfnQ/playlists"]
    Click Link    a[@href="https:www.youtube.com/channel/UCsdoSHH5bucBf_wwtvWJfnQ/playlists"]
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    xpath=(a)[5]
    Click Link    xpath=(a)[5]
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    input[@name="tabs blue"]
    Click Element    input[@name="tabs blue"]
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    input[@name="fld_username"]
    Input Text    input[@name="fld_username"]
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    input[@name="fld_email"]
    Input Text    input[@name="fld_email"]
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    input[@name="fld_password"]
    Input Text    input[@name="fld_password"]    ***
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    input[@name="fld_cpassword"]
    Input Text    input[@name="fld_cpassword"]    ***
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    input[@name="dob"]
    Input Text    input[@name="dob"]
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    input[@name="phone"]
    Input Text    input[@name="phone"]
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    input[@name="address"]
    Input Text    input[@name="address"]
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    input[@name="add_type"]
    Click Element    input[@name="add_type"]
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    xpath=(input[@name="add_type"])[2]
    Click Element    xpath=(input[@name="add_type"])[2]
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    select[@name="sex"]
    Select From List By Value    select[@name="sex"]
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    select[@name="country"]
    Select From List By Value    select[@name="country"]
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    select[@name="state"]
    Select From List By Value    select[@name="state"]
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    select[@name="city"]
    Select From List By Value    select[@name="city"]
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    input[@name="zip"]
    Input Text    input[@name="zip"]
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    input[@name="terms"]
    Click Element    input[@name="terms"]
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    xpath=(a[@href="#"])[2]
    Click Link    xpath=(a[@href="#"])[2]
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    xpath=(input)[14]
    Click Element    xpath=(input)[14]
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    xpath=(input[@name="tabs blue"])[2]
    Click Element    xpath=(input[@name="tabs blue"])[2]
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    input[@name="_txtUserName"]
    Input Text    input[@name="_txtUserName"]
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    input[@name="_txtPassword"]
    Input Text    input[@name="_txtPassword"]    ***
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    xpath=(input[@name="terms"])[2]
    Click Element    xpath=(input[@name="terms"])[2]
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    xpath=(input)[20]
    Click Element    xpath=(input)[20]
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    a[@href="https:www.facebook.com/groups/1319017341783803"]
    Click Link    a[@href="https:www.facebook.com/groups/1319017341783803"]
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    xpath=(a)[8]
    Click Link    xpath=(a)[8]
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    a[@href="https:api.whatsapp.com/send?phone=918743913121&text=Hello,%20i%20am%20interested%20to%20purchase%20video%20course"]
    Click Link    a[@href="https:api.whatsapp.com/send?phone=918743913121&text=Hello,%20i%20am%20interested%20to%20purchase%20video%20course"]
    Sleep    ${SLEEP}
    Wait Until Page Contains Element    a[@href="https:www.google.com/search?client=firefox-b-ab&q=testing+world#lrd=0x390ce45bd130c3e3:0x2cbebc3a19808103,1,,,"]
    Click Link    a[@href="https:www.google.com/search?client=firefox-b-ab&q=testing+world#lrd=0x390ce45bd130c3e3:0x2cbebc3a19808103,1,,,"]
    Sleep    ${SLEEP}

    Close Browser