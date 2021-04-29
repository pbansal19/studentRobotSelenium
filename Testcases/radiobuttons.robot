*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${url}  http://www.practiceselenium.com/practice-form.html


*** Test Cases ***
Testing Radio buttons and Check boxes
    open browser    ${url}

    set selenium speed    1seconds
    Radio button test
    CheckboxTest
    close browser




*** Keywords ***
Radio button test
    select radio button     sex    Female
    select radio button    exp     5


CheckboxTest
    select checkbox    BlackTea
    select checkbox    RedTea
    unselect checkbox    BlackTea
