*** Settings ***

Resource    loadcomponents.resource

*** Keywords ***


Verify_Element_is_Present
       [Documentation]    _*SUMMARY:*_
    ...    This Component is to verify if an element is present in the page
    ...    and do the highlig on it.
    ...
    ...    Returns the ${status2} that contains if element is visible PASS
    ...
    ...    If an element is not vissible stop the execution and fali the test
    ...
    ...    _*PRECONDITION:*_
    ...   - Library: Yggdrasil
    ...   - Version:  NA
    ...   - Installation Procedure:
    ...   - "Add the file py in the directory of python"
    ...
    ...   Use Example:
    ...   "Verify_Element_is_Present    variable or the item to highlight"
    ...
    ...    _*PRECONDITION:*_
    ...   Mantainer: Osvaldo Hernandez Alamo <e-oalamo@neoris.com> This is a Temporal email until August, 2020."
    ...   Last Doc Update: Aug 25, 2020.
    ...
    [Arguments]    ${l_element}
    Run Keyword and ignore error    Wait Until Page Contains Element    ${l_element}    ${SYSTEM}${TIMEOUT}
    ${status1}   ${value1}  Run Keyword And Ignore Error    Scroll Element Into View    ${l_element}
    ${status2}   ${value2}  Run Keyword And Ignore Error    Wait Until Page Contains Element    ${l_element}    ${SYSTEM}${TIMEOUT}
    Run Keyword And Return If  '${status1}'=='FAIL' and '${status2}'=='FAIL'  Run Keywords
    ...  Log Console And Log    Element is not present
    ...  AND  Fail  Execution stops because element is not present >> ${l_element}
    ${WebElement}  Get WebElement    ${l_element}
    Highlight    ${WebElement}
    Set Suite Variable    ${status1}
    Set Suite Variable    ${status2}
    [Return]  ${status2}
