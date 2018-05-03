*** Settings ***
Library  Selenium2Library

*** Keywords ***
Verify Product Added
    Wait Until Page Contains  Added to Cart
    #simple comment change shows this file in default tree in the version control

another bla keyword
    no test code for it yet

Proceed to Checkout
    Click Link  id=hlb-ptc-btn-native