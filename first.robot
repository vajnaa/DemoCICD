*** Settings ***
Library           SeleniumLibrary

*** Test Cases ***
Demo0
    Open Browser    http://www.bing.com    chrome
    Maximize Browser Window
    Input Text    //*[@id="sb_form_q"]    Hello World
    Press Key    //*[@id="sb_form_q"]    //13
