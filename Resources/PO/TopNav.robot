*** Settings ***
Library    SeleniumLibrary


*** Variables ***


*** Keywords ***
Select eservicespage
#2nd test
    Wait Until Element Is Visible   xpath=//*[@id="8500009"]/a
    click element  xpath=//*[@id="8500009"]/a
    sleep    3s
    Wait Until Element Is Visible   xpath=//*[@id="8400001"]/a
    click element  xpath=//*[@id="8400001"]/a
    sleep    3s

    Wait Until Element Is Visible   xpath=//*[@id="8400010"]/a
    click element  xpath=//*[@id="8400010"]/a
    sleep    3s

    # //*[@id="8400010"]/a
    # Wait Until Element Is Visible   xpath=//*[@id="8400005"]/a
    # click element  xpath=//*[@id="8400005"]/a
    # sleep    10s