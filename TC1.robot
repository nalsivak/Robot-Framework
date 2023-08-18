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
    @{"Robot_Elements"}=  Get WebElements   xpath=//h3[text()="Robot Framework"]
    FOR    ${robot1}    IN    @{"Robot_Elements"}
        ${robot}=  Get Text     ${robot1}
        Log To Console  ${robot}
    END
    ${"Selenium_Text"}=  Get Text   xpath=//a[text()="SeleniumLibrary"]
    Log To Console  ${"Selenium_Text"}
    ${"Introduction_text"}=  Get Text   xpath=//a[text()="Introduction"]
    Log To Console  ${"Introduction_text"}
    ${"RobotFramework_Tutorial_text"}=  Get Text   xpath=//h3[text()="Robot Framework Tutorial"]
    Log To Console  ${"RobotFramework_Tutorial_text"}
    Close Browser

*** Keywords ***
