*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${url}    https://demo.nopcommerce.com/



*** Test Cases ***
TestingInputBox
    open browser    ${url}
    TextFieldCheck
    close browser



*** Keywords ***
TextFieldCheck
    maximize browser window
    title should be    e should be     nopCommerce demo store
    click link    xpath://a[@class='ico-login']
    ${email_txt}    set variable    xpath://input[@id='Email']

    element should be visible    ${email_txt}
    #element should not be visible    ${email_txt}

    element should be enabled    ${email_txt}

    input text    ${email_txt}    pbansal19@gmail.com
    sleep    3

    clear element text    ${email_txt}
    sleep    3



