*** Settings ***
Library    SeleniumLibrary
Library    String
Resource      ../Resources/KariyerFilters.robot
Resource      ../Resources/KariyerAllFilterDelete.robot
*** Keywords ***
Filters and Compare title
    KariyerFilters.Select City filter
    KariyerFilters.Select town filter
    KariyerFilters.Select history filter
    KariyerFilters.Click apply button
    KariyerFilters.Filtering result and convert
    KariyerFilters.Delete filters
    KariyerFilters.After delete filters and convert
All Filters Delete
    KariyerFilters.Select City filter
    KariyerFilters.Select town filter
    KariyerFilters.Select history filter
    KariyerFilters.Click apply button
    KariyerFilters.Filtering result and convert
    KariyerAllFilterDelete.Delete all filters
    KariyerAllFilterDelete.Verify delete all fiters
    KariyerAllFilterDelete.After delete filters and convert


