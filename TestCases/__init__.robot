*** Settings ***
Suite Setup    Before each test suite
Suite Teardown    After each test suite

*** Variables ***


*** Keywords ***

Before each test suite
    Log    Test suite started

After each test suite
    Log  Test suite ended
