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
   

 bookingWorkPlace
      Click Element     xpath=/html/body/div[1]/div[1]/div/main/div/div/div[2]/div[3]/div/div[2]/div
      Click Element     xpath=/html/body/div[1]/div[1]/div/main/div/div/div[2]/div/div/div/div
      Click Element     xpath=/html/body/div[1]/div[1]/div/main/div/div/div[2]/div/div/div[1]/div/svg/g/g/g/g[1]/g[192]/g/g/g/rect    



  

*** Variables ***
${URL}              https://senseit-test.orange.md/
${BROWSER}          Chrome
${USERNAME}        vavornic
${PASSWORD}          Murtuz12

*** Test Cases ***
Google Search
  loginKW
   bookingWorkPlace
