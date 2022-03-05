*** Keywords ***
Begin Web Test
    Open Browser  about:blank  chrome
    Maximize Browser Window

Access MediaMarkts Web Site
    Go To  https://www.mediamarkt.se/
    Wait Until Page Contains  Om MediaMarkt
    Location Should Be  https://www.mediamarkt.se/

Search For Item
    [Documentation]  First argument is what to look for, second argument is what to verify against
    [Arguments]  ${item}  ${verify_text}
    Input Text  //*[@id="search-autocomplete"]/form/input[1]  ${item}
    Press Keys  //*[@id="search-autocomplete"]/form/input[1]  RETURN
    Wait Until Page Contains  ${verify_text}

Put Item In Cart Without Insurance
    [Arguments]  ${item}
    Wait Until Page Contains Element  //*[@id="product-list-add-to-cart-6364203"]/span
    Click Element  //*[@id="product-list-add-to-cart-6364203"]/span
    Wait Until Page Contains Element  //*[@id="cboxLoadedContent"]/div/button
    Click Element  //*[@id="cboxLoadedContent"]/div/button
    Click On Cart Button
    Wait Until Page Contains Element  //*[@id="js-cart-app"]/div[3]/table/tbody[2]/tr[1]/td[1]/div[1]/custom-template/ng-include/div/div/div/div/h2/a
    Element Should Contain  //*[@id="js-cart-app"]/div[3]/table/tbody[2]/tr[1]/td[1]/div[1]/custom-template/ng-include/div/div/div/div/h2/a   ${item}

End Web Test
    Close Browser