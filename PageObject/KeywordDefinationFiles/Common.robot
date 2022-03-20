*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/LocatorsLoginPage.py
Variables  ../TestData/Testdata.py

*** Variables ***
${site_url}  https://opensource-demo.orangehrmlive.com/
${browser}  Chrome

*** Keywords ***
open the app browser
    Open Browser    ${site_url}    ${browser}
    maximize browser window
    Wait Until Element Is Visible  ${LoginUsernameInputBox}  timeout=5

close the app browser
    close browser