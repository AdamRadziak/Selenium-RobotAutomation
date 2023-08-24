*** Settings ***
Library  SeleniumLibrary
*** Variables ***
*** Test Cases ***
TC_001
    Open Browser    https://www.thetestingworld.com/testings/    Chrome
    Input Text    //input[@name="fld_username"]    testing
    Input Text    //input[@name="fld_email"]    abcd@com
    Input Text    //input[@name="fld_password"]    ***
    Input Text    //input[@name="fld_cpassword"]    ***
    Click Element    //span[@class="ui-icon ui-icon-circle-triangle-w"]
    Click Element    //span[@class="ui-icon ui-icon-circle-triangle-w"]
    Click Element    //span[@class="ui-datepicker-year"]
    Click Element    //span[@class="ui-icon ui-icon-circle-triangle-w"]
    Click Element    //span[@class="ui-icon ui-icon-circle-triangle-w"]
    Click Element    //span[@class="ui-icon ui-icon-circle-triangle-w"]
    Click Element    //span[@class="ui-icon ui-icon-circle-triangle-w"]
    Click Element    //span[@class="ui-icon ui-icon-circle-triangle-w"]
    Click Element    //span[@class="ui-icon ui-icon-circle-triangle-w"]
    Click Element    //span[@class="ui-icon ui-icon-circle-triangle-w"]
    Click Element    //span[@class="ui-icon ui-icon-circle-triangle-w"]
    Click Element    //span[@class="ui-icon ui-icon-circle-triangle-w"]
    Click Element    //span[@class="ui-icon ui-icon-circle-triangle-w"]
    Click Element    //span[@class="ui-icon ui-icon-circle-triangle-w"]
    Click Element    //span[@class="ui-icon ui-icon-circle-triangle-w"]
    Click Element    //span[@class="ui-datepicker-year"]
    Click Link    xpath=(//a[@href="#"])[12]
    Input Text    //input[@name="phone"]    455667777
    Close Browser