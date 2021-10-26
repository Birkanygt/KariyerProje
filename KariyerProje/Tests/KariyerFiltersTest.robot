*** Settings ***
Library    SeleniumLibrary
Library    String
Resource    ../Resources/functionalcodes.robot
Resource    ../PageObjects/KariyerFiltersApp.robot
Test Setup    functionalcodes.Start browser
Test Teardown    functionalcodes.Finish browser
*** Test Cases ***
Filters and Compare Tests
    KariyerFiltersApp.Filters and Compare title
All Filters Delete and Compare Tests
    KariyerFiltersApp.All Filters Delete