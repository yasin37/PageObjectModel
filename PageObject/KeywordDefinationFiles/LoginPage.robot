*** Settings ***
Library  SeleniumLibrary
Variables  ../Locators/LocatorsLoginPage.py
Variables  ../TestData/Testdata.py

*** Keywords ***
Input Username
    Input Text  ${LoginUsernameInputBox}  ${Username}

Input MyPassword
    input password    ${LoginPasswordInputBox}  ${Password}

Click Login
    Click Element  ${LoginButton}