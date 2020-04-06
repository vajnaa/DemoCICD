*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Demo0
    Open Browser   http://www.bing.com  browser=headlesschrome
    Maximize Browser Window
    Input Text    //*[@id="sb_form_q"]    Hello World
    Click Element  //*[@id="sb_form"]/label/svg
    #Press Key    //*[@id="sb_form_q"]    //13
    Capture Page Screenshot
    [Teardown]  Close All Browsers
