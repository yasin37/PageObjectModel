*** Settings ***
Documentation  Page Object in Robot Framework
...    This is a test
...    TestOps Repo is used
Library  SeleniumLibrary
Resource  ../PageObject/KeywordDefinationFiles/LoginPage.robot
Resource  ../PageObject/KeywordDefinationFiles/HomePage.robot
Resource  ../PageObject/KeywordDefinationFiles/Common.robot
Test Setup    Common.open the app browser
Test Teardown    Common.close the app browser

*** Variables ***

*** Test Cases ***
Verify Successful Login to OrangeHRM
    [Documentation]    This test case verifies that the user is able to successfully Login and Logout to OrangeHRM using Page Object
    [Tags]    Smoke    HappyPath
    LoginPage.Input Username
    LoginPage.Input MyPassword
    LoginPage.Click Login
    Verify Welcome Text is Visible
    HomePage.Verify Welcome Text is Visible
    HomePage.Logout

Feature 1 Test
    log    Executing Feature 1
