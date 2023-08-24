*** Settings ***
Resource  ../../Resources/Resource1.robot

*** Variables ***

*** Test Cases ***
Test case in BDD format
    Given Open Browser And Maximize Window
    When Create Folder At Runtime
    Then Enter Userdata  Adam  adam.radziak@gmail.com  costam