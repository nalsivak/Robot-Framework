*** Settings ***
Library      SeleniumLibrary

*** Variables ***
${"URL"}  http://google.com
${"Browser"}  chrome

*** Test Cases ***
Valid Login
    Open Browser    ${"URL"}     ${"Browser"}
    Sleep  2
    Maximize Browser Window
    Input Text      id=APjFqb    Robot Framework
    Sleep  5
    Click Element       id=jZ2SBf
    Sleep  3
    ${"Robot_Text"}=  Get Text   xpath=(//h3[text()="Robot Framework"])[1]
    Log To Console  ${"Robot_Text"}
    ${"Selenium_Text"}=  Get Text   xpath=//a[text()="SeleniumLibrary"]
    Log To Console  ${"Selenium_Text"}
    ${"Introduction_text"}=  Get Text   xpath=//a[text()="Introduction"]
    Log To Console  ${"Introduction_text"}
    ${"RobotFramework_Tutorial_text"}=  Get Text   xpath=//h3[text()="Robot Framework Tutorial"]
    Log To Console  ${"RobotFramework_Tutorial_text"}
    Close Browser

*** Keywords ***
