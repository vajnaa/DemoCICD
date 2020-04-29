*** Settings ***
Library           SeleniumLibrary

*** Variable ***
${BROWSER} =  headlesschrome

*** Test Cases ***
Demo0
    Open Browser   http://www.bing.com  browser=${BROWSER}
    Maximize Browser Window
    Input Text    //*[@id="sb_form_q"]    Hello World
    Press Keys    //*[@id="sb_form_q"]    \\13
    Log  alma7
    Capture Page Screenshot
    Fail  Mert csak azért!
    [Teardown]  Close All Browsers
