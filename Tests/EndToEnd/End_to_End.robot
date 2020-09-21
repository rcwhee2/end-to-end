*** Settings ***
Documentation  Talk about what this suite of tests does
Resource  ../../Resources/FrontOffice/FrontOfficeApp.robot
Resource  ../../Resources/BackOffice/BackOfficeApp.robot
Resource  ../../Resources/Common/CommonWeb.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test
Resource  ../../Data/InputData.robot
# robot -d results tests/EndToEnd/End_to_End.robot



*** Test Cases ***
Should be able to access "Landing" page
    [Documentation]  This is test 1
    [Tags]  test1
    FrontOfficeApp.Go to Landing Page
    BackOfficeApp.Go to Landing Page
