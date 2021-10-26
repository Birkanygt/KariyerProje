*** Settings ***
Library    SeleniumLibrary
*** Keywords ***
Start browser
    open browser     https://www.kariyer.net/is-ilanlari        Firefox
    set selenium speed    0.5
    maximize browser window
Finish browser
    close browser
click
    [Arguments]    ${SELECTOR}
    wait until page contains element    ${SELECTOR}
    click element    ${SELECTOR}
input
    [Arguments]    ${SELECTOR}     ${TEXT}
    wait until element is visible    ${SELECTOR}
    clear element text    ${SELECTOR}
    input text    ${SELECTOR} ${TEXT}
scroll
    [Arguments]    ${HEIGHT}
    execute javascript    window.scrollTo(0,${HEIGHT})
verify
    [Arguments]    ${SELECTOR}    ${TEXT}
    wait until page contains element    ${SELECTOR}
    page should contain    ${TEXT}
    wait until element is visible    ${SELECTOR}
check unavailable
    [Arguments]    ${SELECTOR}
    wait until page does not contain element    ${SELECTOR}
    wait until element is not visible    ${SELECTOR}