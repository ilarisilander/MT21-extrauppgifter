*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/keywords.robot
Resource  ../Resources/buttons.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test

*** Test Cases ***
User Can Add Item To Cart
    [Documentation]  Using arguments in "Search For Item" makes it reusable if we want to search for other items
    ...  in another test case
    Access MediaMarkts Web Site
    Search For Item     NINTENDO Switch 2019 - Grå     2019 - Grå
    Put Item In Cart Without Insurance  NINTENDO Switch 2019 - Grå

User Can Find Item
    Given Access MediaMarkts Web Site
    When Search For Item  Game & Watch   Game & Watch
    Then Page Should Contain  Game & Watch: The Legend of Zelda

User Can See Special Offers
    Access MediaMarkts Web Site
    Click On Kampanjer Button
    Page Should Contain  VÅRA AKTUELLA KAMPANJER
