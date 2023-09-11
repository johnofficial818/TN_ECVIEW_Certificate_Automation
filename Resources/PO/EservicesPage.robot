*** Settings ***
Library    SeleniumLibrary
Library    JSONLibrary
Library    os
Library    os
Library    Collections


*** Variables ***
${eservicesPage_verification}=   css=#EncumbranceCertificateForm > div.container > div > h2



*** Keywords ***
#2nd test
verify page loaded
    sleep    3s
    wait until page contains element    ${eservicesPage_verification}
    sleep    3s

validation
    element text should be  ${eservicesPage_verification}   Search Encumbrance Certificate
    log to console    Eservices page verified successfully



#3rd test
Select Zone
    select from list by label    id=cmb_Zone    Chennai
Select District
    select from list by label    name=cmb_District    YourDistrict
Select SubRegistrarOffice
    select from list by label    name=cmb_SroName    your sroname
Select EC Details
    ${json_obj} =    load json from file    C:/Users/Johnbabu/Documents/00All_Automation_scripts/00TNREGDEMO/Resources/JSON/50.json
    # ${EC}     @{json_obj["EC"]}
    click element   xpath=//*[@id="txt_PeriodStartDt"]
    ${json_obj} =    load json from file    C:/Users/Johnbabu/Documents/00All_Automation_scripts/00TNREGDEMO/Resources/JSON/SurveyDetails.json

#   ${ecstartdate} =    get value from json    ${json_obj}    $.EC.startdate
    input text    id=txt_PeriodStartDt   05Aug2023

#   ${ecstartdate} =    get value from json    ${json_obj}    $.EC.startdate
    click element    xpath=//*[@id="txt_PeriodEndDt"]
    input text    id=txt_PeriodEndDt   05Sep2023


#*** Test Cases ***

Select Survey Details

   &{json_obj} =    load json from file    C:/Users/Johnbabu/Documents/00All_Automation_scripts/00TNREGDEMO/Resources/JSON/dump.json

    FOR    ${robot}    IN    @{json_obj["Survey Details"]}
        #Log    ${robot["Village"]}
        #Log    ${robot["Surveynumber"}
        select from list by label    name=cmb_Village   ${robot["Village"]}
        input text    id=txt_SurveyNo    ${robot["Surveynumber"]}
        input text    id=txt_SubDivisionNo   ${robot["Subdivisionnum"]}
        click element    xpath=//*[@id="btn_AddSurvey"]
    END
    sleep    10s
    mouse over    xpath=//*[@id="incCaptcha"]
    sleep    5s
#    mouse over    xpath=//*[@id="btn_SearchDoc"]
    Wait Until Element Is Visible    xpath=//*[@id="btn_SearchDoc"]
    click element    xpath=//*[@id="btn_SearchDoc"]
    sleep    50s
    Wait Until Element Is Visible    //span[text()='Click here']
    click element    //span[text()='Click here']
    log to console    Survey Details added successfully
    sleep    30s