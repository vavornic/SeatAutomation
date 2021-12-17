*** Settings ***
Library  Selenium2Library
Library    RPA.Browser.Selenium
Library    RPA.Desktop.Windows
Library    RPA.Desktop
Library    Dialogs
Suite Setup         Open Browser    ${URL}   ${BROWSER}
# Suite Teardown      Close All Browsers

*** Keywords ***
loginKW
  Wait Until Page Contains    Forgot Password? 
  Input Text    name=username   ${USERNAME}
  Input Password    xpath=//*[@id="password"]/input    ${PASSWORD}
  Click Button     xpath=//*[@id="kc-login"]
  Execute Manual Step      Please write the code.
   Click Button     xpath=//*[@id="menu-button"]
  

*** Variables ***
${URL}              https://senseit-test.orange.md/
${BROWSER}          Chrome
${USERNAME}        vavornic
${PASSWORD}          Murtuz12

*** Test Cases ***
Google Search
  loginKW