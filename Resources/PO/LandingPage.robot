*** Settings ***
Library    SeleniumLibrary

*** Variables ***
#${LANDINGPAGE_VERIFY_ELEMENT} =    id=1195003
${username}    EnteryourUsername
${password}    EnteryourPassword



*** Keywords ***
Goto page
    go to  ${URL}
    # (//a[text()="English"])[1]
    # Wait Until Element Is Visible   xpath=(//a[@id="fontSelection"])[1]
    # click link    xpath=(//a[@id="fontSelection"])[1]
    Wait Until Element Is Visible   //input[@name="username"]
    Click Element   //input[@name="username"]
    Input Text      //input[@name="username"]   ${username}
    Wait Until Element Is Visible   //input[@name="password"]
    Click Element   //input[@name="password"]
    Input Text      //input[@name="password"]   ${password}
    sleep    10s
    # //input[@value="உள்நுழைவு"]
    Wait Until Element Is Visible    //input[@value="உள்நுழைவு"]
    Click Element   //input[@value="உள்நுழைவு"]
    # Wait Until Element Is Visible    //input[@value="Sign In"]
    # Click Element   //input[@value="Sign In"]
    sleep    3s
    # Language
    Wait Until Element Is Visible   xpath=(//a[@id="fontSelection"])[1]
    click link    xpath=(//a[@id="fontSelection"])[1]


verify page loaded

#    wait until page contains element    ${LANDINGPAGE_VERIFY_ELEMENT}
    log to console    Landing page verified successfully


