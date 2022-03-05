*** Settings ***
Documentation  It's possible to gather all buttons from the whole website and gather them all
...  in one keyword file. In this case we call it buttons.robot and it works just like keywords.robot.
...  Make sure to import this as a Library in extrauppgifter.robot

*** Keywords ***
Click On Cart Button
    Wait Until Page Contains Element  //*[@id="rise-header"]/div[1]/div/div[5]/div/a/span[3]
    Click Element  //*[@id="rise-header"]/div[1]/div/div[5]/div/a/span[3]
    Wait Until Page Contains  Summa

Click On Kampanjer Button
    Wait Until Page Contains Element  //*[@id="rise-header"]/div[1]/nav[2]/div[1]/ul/li[3]/a/span
    Click Element  //*[@id="rise-header"]/div[1]/nav[2]/div[1]/ul/li[3]/a/span
    Location Should Be  https://www.mediamarkt.se/sv/shop/kampanjer.html