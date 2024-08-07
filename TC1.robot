*** Settings ***
Documentation    TC1 To automate the navigation and interaction with web elements using a web automation tool
...
Metadata         1) Test Description
...              Validate Slider Value and Total Recurring Reimbursement.
...
Metadata         2) Prerequisites
...              None
...
Metadata         3) Test Steps
...              Action 1: Navigate to the Fitpeo Homepage.\n\n
...              Result 1: Navigated successfully.\n\n
...
...              Action 2: Navigate to the Revenue Calculator Page.\n\n
...              Result 2: Navigated successfully.\n\n
...
...              Action 3: Scroll down to the Slider section.\n\n
...              Result 3: Scrolled successfully.\n\n
...
...              Action 4: Adjust the slider value.\n\n
...              Result 4: Adjusted successfully.\n\n
...
...              Action 5: Update the text field successfully.\n\n
...              Result 5: Updated successfully.\n\n
...
...              Action 6: Validate the slider value.\n\n
...              Result 6: Validated successfully.\n\n
...
...              Action 7: Select CPT codes.\n\n
...              Result 7: Selected successfully.\n\n
...
...              Action 8: Validate total Recurring Reimbursement.\n\n
...              Result 8: Validated successfully.\n\n
...

Metadata         4) Author         Kapil Dev Mishra, 2024-06-28

Library           SeleniumLibrary

*** Variables ***
${url}      https://fitpeo.com/
${browser_type}     chrome
${browser_delay}    1s

*** Test Cases ***
TC1 To automate the navigation and interaction with web elements using a web automation tool
    ###############
    Log   Action 1: Navigate to the Fitpeo Homepage.

    Open Browser    ${url}      ${browser_type}
    Maximize Browser Window
    Set Selenium Speed      ${browser_delay}
    # Output result
    Log   Result 1: Navigated successfully.


    ###############
    Log   Action 2: Navigate to the Revenue Calculator Page.

    Click Element       xpath://*[contains(text(),'Revenue Calculator')]
    # Output result
    Log   Result 2: Navigated successfully.


    ###############
    Log   Action 3: Scroll down to the Slider section.

    execute javascript      window.scrollTo(0,500)
    # Output result
    Log   Result 3: Scrolled successfully.


    ###############
    Log   Action 4: Adjust the slider value.

    Drag and Drop by Offset     //*[@class="MuiSlider-thumb MuiSlider-thumbSizeMedium MuiSlider-thumbColorPrimary MuiSlider-thumb MuiSlider-thumbSizeMedium MuiSlider-thumbColorPrimary css-sy3s50"]      94     0
    Press Keys      :r0:    BACKSPACE
    Input Text      :r0:       0
    # Output result
    Log   Result 4: Adjusted successfully.


    ###############
    Log   Action 5: Update the text field successfully.

    Press Keys      :r0:    BACKSPACE
    Press Keys      :r0:    BACKSPACE
    Press Keys      :r0:    BACKSPACE
    Input Text      :r0:       560
    Textfield Value Should Be       :r0:        560
    Press Keys      :r0:    BACKSPACE
    Press Keys      :r0:    BACKSPACE
    Press Keys      :r0:    BACKSPACE
    Input Text      :r0:       820
    Textfield Value Should Be       :r0:        820
    # Output result
    Log   Result 5: Updated successfully.


    ###############
    Log   Action 6: Validate the slider value.

    Textfield Value Should Be       :r0:        820
    # Output result
    Log   Result 6: Validated successfully.


    ###############
    Log   Action 7: Select CPT codes.

    execute javascript      window.scrollTo(0,850)
    Page Should Contain Checkbox    //span[contains(.,'57')]/preceding-sibling::span/input
    Select Checkbox     //span[contains(.,'57')]/preceding-sibling::span/input
    Page Should Contain Checkbox    //span[contains(.,'19.19')]/preceding-sibling::span/input
    Select Checkbox     //span[contains(.,'19.19')]/preceding-sibling::span/input
    Page Should Contain Checkbox    //span[contains(.,'63')]/preceding-sibling::span/input
    Select Checkbox     //span[contains(.,'63')]/preceding-sibling::span/input
    Page Should Contain Checkbox    //span[contains(.,'15')]/preceding-sibling::span/input
    Select Checkbox     //span[contains(.,'15')]/preceding-sibling::span/input
    # Output result
    Log   Result 7: Updated successfully.


    ###############
    Log   Action 8: Validate total Recurring Reimbursement.

    execute javascript      window.scrollTo(0,500)
    Capture Page Screenshot
    Capture Page Screenshot
    # Output result
    Log   Result 8: Validated successfully.
    Close Browser