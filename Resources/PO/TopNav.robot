*** Settings ***
Documentation  Amazon top navigation
Library  Selenium2Library

*** Variables ***
${TOPNAV_SEARCH_BAR} =  twotabsearchtextbox
${TOPNAV_SEARCH_BUTTON} =  xpath=//*[@id="nav-search"]/form/div[2]/div/input

*** Keywords ***
Search for Products
    Enter Search Term
    Submit Search

Enter Search Term
    Input Text  ${TOPNAV_SEARCH_BAR}  ${SEARCH_TERM}
    #sleep  10s

Submit Search
    Click Button  ${TOPNAV_SEARCH_BUTTON}