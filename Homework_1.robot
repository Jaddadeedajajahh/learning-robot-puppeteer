*** Settings ***
Library    PuppeteerLibrary
# Suite Teardown    Close Browser

#12345789111213

***Variables***

***Keywords***
Open Browser Page
    ${HEADLESS}     Get variable value    ${HEADLESS}    ${False}
    &{options} =    create dictionary   headless=${HEADLESS}
    Open browser    https://www.w3schools.com/  options=${options}

Select Tutorials Menu
    Click Element    xpath=//a[@id='navbtn_tutorials']

Go to Learn Xpath Page
    Click Element    xpath=//body/nav[@id='nav_tutorials']/div[1]/div[1]/div[5]/a[17]
    Wait Until Page Contains Element  xpath=//h2[contains(text(),'What is XPath?')]


***Test Cases***
Open w3schools Page
    Open Browser Page
Click Tutorials Dropdown List
    Select Tutorials Menu
Click Learn Xpath
    Go to Learn Xpath Page



