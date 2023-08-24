*** Settings ***
Library    SeleniumLibrary
Library    Collections
Resource    ../../Resources/Resource1.robot
#Test Setup    Open browser and maximize window
#Test Teardown    Close browser window


*** Test Cases ***
#TC_004_1 Robot fetch data
#
#    ${page_title} =    get title
#    log    ${page_title}
#    ${speed} =    get selenium speed
#    log    ${speed}
#    ${value} =    get value  CSS:input[value="Sign up"]
#    log    ${value}
#    ${text} =    get text    CSS:a.displayPopup
#    log    ${text}
#    # selct from list
#    select from list by index    name:sex    1
#    ${list_value} =    get selected list value    name:sex
#    log    ${list_value}
#    ${list_label} =    get selected list label    name:sex
#    log    ${list_label}
#    ${all_labels} =    get list items    name:sex
#    log    ${all_labels}
#    ${url_actual} =    get location
#    log    ${url_actual}
#    ${page_html} =    get source
#    log    ${page_html}
#    ${attr} =    get element attribute    name:fld_username    class
#    log    ${attr}
#    ${count} =    get element count    class:field
#    log    ${count}

TC_004_2 create folder at runtime
    resource1.make folder at runtime

