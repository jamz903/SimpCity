*** Variables ***
${saved_file_path}    ./SimpCityBoard.csv
${leaderboard_file_path}    ./SimpCityLeaderboard.csv

# Test for starting the program and exiting immediately
${options_1}    0
${buildings_1}      None
${locations_1}      None
${bldgChoicesList_1}    None
${lb_names_1}     None
${board_size_list_1}    None
${board_choices_1}    None
${board_sizes_1}    None

# Test for starting a new game and using the default board dimensions
# User will firstly enter in an invalid option (not y/n OR Y/N)
${options_2}    1,0,0
${buildings_2}      SHP,PRK
${locations_2}      None
${bldgChoicesList_2}    HSE,FAC,MON,PRK,SHP
${lb_names_2}     None
${board_size_list_2}    None
${board_choices_2}    thisIsAnInvalidInput,n
${board_sizes_2}    None

# Test for starting a new game and using custom board dimensions
${options_3}    1,0,0
${buildings_3}      SHP,PRK
${locations_3}      None
${bldgChoicesList_3}    HSE,FAC,MON,PRK,SHP
${lb_names_3}     None
${board_size_list_3}    None
${board_choices_3}    y
${board_sizes_3}    thisIsAnInvalidInput.99,1.1,1.1,27.5,5

# Test for starting a new game and exiting with user passing in only 1 building for the building pool once
${options_4}    1,0,0
${buildings_4}      SHP,PRK 
${locations_4}      None
${bldgChoicesList_4}    HSE.HSE,FAC,MON,PRK,SHP
${lb_names_4}     None
${board_size_list_4}    None
${board_choices_4}    n
${board_sizes_4}    None

# Test for starting a new game and exiting with user passing in a repeated building in the building pool once 
${options_5}    1,0,0
${buildings_5}      SHP,PRK
${locations_5}      None
${bldgChoicesList_5}    HSE,HSE,MON,PRK,SHP.HSE,FAC,MON,PRK,SHP
${lb_names_5}     None
${board_size_list_5}    None
${board_choices_5}    n
${board_sizes_5}    None

# Test for starting a new game and exiting with user passing in an invalid building type in the building pool once
${options_6}    1,0,0
${buildings_6}      SHP,PRK
${locations_6}      None
${bldgChoicesList_6}    HEE,FAC,MON,PRK,SHP.HSE,FAC,MON,PRK,SHP
${lb_names_6}     None
${board_size_list_6}    None
${board_choices_6}    n
${board_sizes_6}    None

# Test for starting a game and customising a board with dimensions 40,1 and 1,26
${options_7}    1,0,1,0,0
${buildings_7}      SHP,PRK,SHP,PRK
${locations_7}      None
${bldgChoicesList_7}    HSE,FAC,MON,PRK,SHP.HSE,FAC,MON,PRK,SHP
${lb_names_7}     None
${board_size_list_7}    None
${board_choices_7}    y,y
${board_sizes_7}    40,1.1,26

# Test for loading a saved game successfully and exiting
${options_8}    2,0,0
${buildings_8}      SHP,PRK
${locations_8}      None
${bldgChoicesList_8}    None
${lb_names_8}     None
${board_size_list_8}    None
${board_choices_8}    None
${board_sizes_8}    None

# Test for loading an invalid saved file with invalid building types
${options_9}    2,0
${buildings_9}      None
${locations_9}      None
${bldgChoicesList_9}    None
${lb_names_9}     None
${board_size_list_9}    None
${board_choices_9}    None
${board_sizes_9}    None

# Test for loading a saved file that does not exist
${options_10}    2,0,0
${buildings_10}      HSE,HSE
${locations_10}      None
${bldgChoicesList_10}    HSE,FAC,MON,PRK,SHP
${lb_names_10}     None
${board_size_list_10}    None
${board_choices_10}    n
${board_sizes_10}    None

#Test for entering an invalid option in the play menu
${options_11}    1,9,0,0
${buildings_11}      HSE,HSE
${locations_11}      None
${bldgChoicesList_11}    HSE,FAC,MON,PRK,SHP
${lb_names_11}     None
${board_size_list_11}    None
${board_choices_11}    n
${board_sizes_11}    None

# Test for entering a series of invalid input for location when placing a building with no prior buldings placed
${options_12}    1,1,0,0
${buildings_12}      HSE,HSE,HSE,FAC
${locations_12}      ,A,C9,A1
${bldgChoicesList_12}    HSE,FAC,MON,PRK,SHP
${lb_names_12}     None
${board_size_list_12}    None
${board_choices_12}    n
${board_sizes_12}    None

# Test for entering a series of invalid input for location when placing a building with a building placed currently
${options_13}    2,1,0,0
${buildings_13}      HSE,HSE,HSE,FAC
${locations_13}      B2,A1,C1,B1
${bldgChoicesList_13}    HSE,FAC,MON,PRK,SHP
${lb_names_13}     None
${board_size_list_13}    None
${board_choices_13}    n
${board_sizes_13}    None

# Test for placing a building three times
${options_14}    1,1,2,1,0,0
${buildings_14}      HSE,HSE,MON,FAC,PRK,MON,SHP,SHP
${locations_14}      B2,A2,B1
${bldgChoicesList_14}    HSE,FAC,MON,PRK,SHP
${lb_names_14}     None
${board_size_list_14}    None
${board_choices_14}    n
${board_sizes_14}    None

#Test for see remaining buildings
${options_15}    1,2,1,0,0
${buildings_15}      HSE,HSE,MON,FAC,PRK,MON
${locations_15}      B2,A2
${bldgChoicesList_15}    HSE,FAC,MON,PRK,SHP
${lb_names_15}     None
${board_size_list_15}    None
${board_choices_15}    n
${board_sizes_15}    None

#Test for see current score
${options_16}    2,3,2,3,0,0
${buildings_16}      HSE,FAC,BCH,FAC
${locations_16}      B2
${bldgChoicesList_16}    BCH,SHP,HWY,FAC,HSE
${lb_names_16}     None
${board_size_list_16}    None
${board_choices_16}    n
${board_sizes_16}    None

#Test for save game
${options_17}    1,1,2,4,0,0
${buildings_17}      HSE,FAC,BCH,FAC,SHP,SHP
${locations_17}      B2,A2
${bldgChoicesList_17}    BCH,SHP,HWY,FAC,HSE
${lb_names_17}     None
${board_size_list_17}    None
${board_choices_17}    n
${board_sizes_17}    None

#Test for check game end without user reaching top 10 in highscore
${options_18}    2,1,0
${buildings_18}      HWY,FAC,SHP,SHP
${locations_18}      D4
${bldgChoicesList_18}    BCH,SHP,HWY,FAC,HSE
${lb_names_18}     None
${board_size_list_18}    None
${board_choices_18}    None
${board_sizes_18}    None

# Test for check game end with user reaching top 10 in highscore case 1
${options_19}    2,1,0
${buildings_19}      HWY,FAC,SHP,SHP
${locations_19}      D4
${bldgChoicesList_19}    BCH,SHP,HWY,FAC,HSE
${lb_names_19}     ,nameWithPunc!@#$%,abcdabcdabcdabcdabcda,abcdabcdabcdabcdabcdab,abcdabcdabcdabcdabcd       #0 chars, name with punctuation, 21 chars, 22 chars, 20 chars
${board_size_list_19}    None
${board_choices_19}    None
${board_sizes_19}    None

# Test for check game end with user reaching top 10 in highscore case 2
${options_20}    2,1,0
${buildings_20}      HWY,FAC,SHP,SHP
${locations_20}      D4
${bldgChoicesList_20}    BCH,SHP,HWY,FAC,HSE
${lb_names_20}     peter
${board_size_list_20}    None
${board_choices_20}    None
${board_sizes_20}    None

# Test for view high scores with an area size with no high scores currently
${options_21}    3,0
${buildings_21}      None
${locations_21}      None
${bldgChoicesList_21}    None
${lb_names_21}     None
${board_size_list_21}    invalidDimension.a,b,c.a,b.0,0.-1,-5.3,14.4,10
${board_choices_21}    None
${board_sizes_21}    None

# Test for view high scores with an area size with high scores
${options_22}    3,0
${buildings_22}      None
${locations_22}      None
${bldgChoicesList_22}    None
${lb_names_22}     None
${board_size_list_22}    4,4
${board_choices_22}    None
${board_sizes_22}    None

# Test for view score for a 1x26 board
${options_23}    2,3,0,0
${buildings_23}      SHP,PRK
${locations_23}      None
${bldgChoicesList_23}    None
${lb_names_23}     None
${board_size_list_23}    None
${board_choices_23}    None
${board_sizes_23}    None

# Test for placing a building
# ${options_3}    1   1   0   0
# ${buildings_3}      HSE     HSE     HSE     BCH
# ${locations_3}      A1 

*** Settings ***
Library     Dialogs
Library     BuiltIn
Library     ./start_menu.py
Library     Process
Library     OperatingSystem

*** Test Cases ***
Test Starting the program and exiting
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_1}       ${buildings_1}      ${locations_1}      ${bldgChoicesList_1}      ${lb_names_1}     ${board_size_list_1}    ${board_choices_1}      ${board_sizes_1}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

Test Starting a new game and using the default board dimensions
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_2}       ${buildings_2}      ${locations_2}      ${bldgChoicesList_2}      ${lb_names_2}     ${board_size_list_2}    ${board_choices_2}      ${board_sizes_2}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nInvalid input! Please enter in Y or N only.\nPlease select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n\n\nTurn 1${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}8\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}8\n${SPACE * 2}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}MON${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}PRK${SPACE * 15}7\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}7\n\n1. Build a SHP\n2. Build a PRK\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

Test Starting a new game and using custom board dimensions
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_3}       ${buildings_3}      ${locations_3}      ${bldgChoicesList_3}      ${lb_names_3}     ${board_size_list_3}    ${board_choices_3}      ${board_sizes_3}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nCustomizing your board size\n----------------------------------\nRequirements\n1) Max area size 40\n2)No. of columns <=26\n\nPlease ensure that the values inputted are numbers\nCustomizing your board size\n----------------------------------\nRequirements\n1) Max area size 40\n2)No. of columns <=26\n\nInvalid input! Please enter in a valid board size that has an area size smaller than or equal to 40 and greater than 2.\nCustomizing your board size\n----------------------------------\nRequirements\n1) Max area size 40\n2)No. of columns <=26\n\nInvalid input! Please enter in a valid board size that has an area size smaller than or equal to 40 and greater than 2.\nCustomizing your board size\n----------------------------------\nRequirements\n1) Max area size 40\n2)No. of columns <=26\n\nPlease do not exceed 26 in length\nCustomizing your board size\n----------------------------------\nRequirements\n1) Max area size 40\n2)No. of columns <=26\n\nPlease select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n\n\nTurn 1${SPACE * 33}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 5}E${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}8\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}8\n${SPACE * 2}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+-----+${SPACE * 5}MON${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+-----+${SPACE * 5}PRK${SPACE * 15}7\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}7\n${SPACE * 2}5|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+-----+${SPACE * 5}\n1. Build a SHP\n2. Build a PRK\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

Test Starting a new game and exiting with user passing in only 1 building for the building pool once
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_4}       ${buildings_4}      ${locations_4}      ${bldgChoicesList_4}    ${lb_names_4}       ${board_size_list_4}    ${board_choices_4}      ${board_sizes_4}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nPlease select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n\nPlease enter 5 building types\n\nTurn 1${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}8\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}8\n${SPACE * 2}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}MON${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}PRK${SPACE * 15}7\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}7\n\n1. Build a SHP\n2. Build a PRK\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

# building pool "HSE, HSE, MON, PRK, SHP" with HSE listed twice
# second input for building pool will be "HSE, FAC, MON, PRK, SHP"
Test Starting a new game and exiting with user passing in a repeated building in the building pool once
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_5}       ${buildings_5}      ${locations_5}      ${bldgChoicesList_5}    ${lb_names_5}       ${board_size_list_5}    ${board_choices_5}      ${board_sizes_5}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nPlease select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n\nPlease only choose 1 of each type of building\n\nTurn 1${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}8\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}8\n${SPACE * 2}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}MON${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}PRK${SPACE * 15}7\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}7\n\n1. Build a SHP\n2. Build a PRK\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

# user will pass in building type of HEE instead of HSE
# 1st building pool will be "HEE, FAC, MON, PRK, SHP"
# 2nd building pool will be "HSE, FAC, MON, PRK, SHP"
Test Starting a new game and exiting with user passing in an invalid building type in the building pool once
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_6}       ${buildings_6}      ${locations_6}      ${bldgChoicesList_6}    ${lb_names_6}       ${board_size_list_6}    ${board_choices_6}      ${board_sizes_6}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nPlease select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n\nInvalid building type input\n\nTurn 1${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}8\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}8\n${SPACE * 2}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}MON${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}PRK${SPACE * 15}7\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}7\n\n1. Build a SHP\n2. Build a PRK\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

Test Starting a new game and customising a board with dimensions 40,1 and 1,26
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_7}       ${buildings_7}      ${locations_7}      ${bldgChoicesList_7}    ${lb_names_7}       ${board_size_list_7}    ${board_choices_7}      ${board_sizes_7}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nCustomizing your board size\n----------------------------------\nRequirements\n1) Max area size 40\n2)No. of columns <=26\n\nPlease select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n\n\nTurn 1${SPACE * 9}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+${SPACE * 5}HSE${SPACE * 15}8\n${SPACE * 2}1|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}FAC${SPACE * 15}8\n${SPACE * 2}2|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}MON${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}PRK${SPACE * 15}7\n${SPACE * 2}4|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}SHP${SPACE * 15}7\n${SPACE * 2}5|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n${SPACE * 2}6|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n${SPACE * 2}7|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n${SPACE * 2}8|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n${SPACE * 2}9|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n 10|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n 11|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n 12|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n 13|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n 14|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n 15|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n 16|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n 17|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n 18|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n 19|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n 20|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n 21|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n 22|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n 23|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n 24|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n 25|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n 26|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n 27|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n 28|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n 29|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n 30|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n 31|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n 32|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n 33|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n 34|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n 35|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n 36|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n 37|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n 38|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n 39|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n 40|${SPACE * 5}|\n${SPACE * 3}+-----+${SPACE * 5}\n1. Build a SHP\n2. Build a PRK\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nCustomizing your board size\n----------------------------------\nRequirements\n1) Max area size 40\n2)No. of columns <=26\n\nPlease select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n\n\nTurn 1${SPACE * 159}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 5}E${SPACE * 5}F${SPACE * 5}G${SPACE * 5}H${SPACE * 5}I${SPACE * 5}J${SPACE * 5}K${SPACE * 5}L${SPACE * 5}M${SPACE * 5}N${SPACE * 5}O${SPACE * 5}P${SPACE * 5}Q${SPACE * 5}R${SPACE * 5}S${SPACE * 5}T${SPACE * 5}U${SPACE * 5}V${SPACE * 5}W${SPACE * 5}X${SPACE * 5}Y${SPACE * 5}Z${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}8\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}8\n\n${SPACE * 165}MON${SPACE * 15}8\n\n${SPACE * 165}PRK${SPACE * 15}7\n\n${SPACE * 165}SHP${SPACE * 15}7\n\n1. Build a SHP\n2. Build a PRK\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

Test Loading a saved game successfully and exiting
    Create File     ${saved_file_path}    26\nMON,SHP,HWY,PRK,HSE\nMON,HSE,HWY,HWY,MON,HSE,HWY,HWY,PRK,PRK,PRK,HSE,MON,MON,PRK,HSE,HWY,SHP,HSE,HWY,HWY,SHP,HSE,HWY,MON,?
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_8}       ${buildings_8}      ${locations_8}      ${bldgChoicesList_8}    ${lb_names_8}       ${board_size_list_8}    ${board_choices_8}      ${board_sizes_8}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\n\nTurn 26${SPACE * 158}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 5}E${SPACE * 5}F${SPACE * 5}G${SPACE * 5}H${SPACE * 5}I${SPACE * 5}J${SPACE * 5}K${SPACE * 5}L${SPACE * 5}M${SPACE * 5}N${SPACE * 5}O${SPACE * 5}P${SPACE * 5}Q${SPACE * 5}R${SPACE * 5}S${SPACE * 5}T${SPACE * 5}U${SPACE * 5}V${SPACE * 5}W${SPACE * 5}X${SPACE * 5}Y${SPACE * 5}Z${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+${SPACE * 5}MON${SPACE * 15}3\n${SPACE * 2}1| MON | HSE | HWY | HWY | MON | HSE | HWY | HWY | PRK | PRK | PRK | HSE | MON | MON | PRK | HSE | HWY | SHP | HSE | HWY | HWY | SHP | HSE | HWY | MON |${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}5\n\n${SPACE * 165}HWY${SPACE * 15}0\n\n${SPACE * 165}PRK${SPACE * 15}3\n\n${SPACE * 165}HSE${SPACE * 15}2\n\n1. Build a SHP\n2. Build a PRK\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

# saved file will contain invalid building types like HEE
Test Loading an invalid saved file with invalid building types
    Create File     ${saved_file_path}    16\nBCH,SHP,HWY,FAC,HSE\nBCH,HEE,HWY,HWY\nFAC,FAC,FAC,HSE\nHWY,SHP,HSE,HWY\nFAC,HSE,BCH,?
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_9}       ${buildings_9}      ${locations_9}      ${bldgChoicesList_9}    ${lb_names_9}       ${board_size_list_9}    ${board_choices_9}      ${board_sizes_9}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nThe saved file is invalid. Returning to main menu.\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

# saved file will have turn number 99 saved with a board missing 1 space, actual turn number should be 16
Test Loading an invalid saved file with board and turn number not corresponding
    Create File     ${saved_file_path}    99\nBCH,SHP,HWY,FAC,HSE\nBCH,HSE,HWY,HWY\nFAC,FAC,FAC,HSE\nHWY,SHP,HSE,HWY\nFAC,HSE,BCH,?
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_9}       ${buildings_9}      ${locations_9}      ${bldgChoicesList_9}    ${lb_names_9}       ${board_size_list_9}    ${board_choices_9}      ${board_sizes_9}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nThe saved file is invalid. Returning to main menu.\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

# saved file will have one missing building on its third row
Test Loading an invalid saved file with a board of unequal row lengths
    Create File     ${saved_file_path}    15\nBCH,SHP,HWY,FAC,HSE\nBCH,HSE,HWY,HWY\nFAC,FAC,FAC,HSE\nHWY,SHP,HWY\nFAC,HSE,BCH,?
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_9}       ${buildings_9}      ${locations_9}      ${bldgChoicesList_9}    ${lb_names_9}       ${board_size_list_9}    ${board_choices_9}      ${board_sizes_9}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nThe saved file is invalid. Returning to main menu.\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

Test Loading an invalid saved file where the buildings are not placed orthogonally adjacent to one another
    Create File     ${saved_file_path}    3\nBCH,SHP,HWY,FAC,HSE\nBCH,?,?,?\n?,?,?,?\n?,?,SHP,?\n?,?,?,?
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_9}       ${buildings_9}      ${locations_9}      ${bldgChoicesList_9}    ${lb_names_9}       ${board_size_list_9}    ${board_choices_9}      ${board_sizes_9}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nThe saved file is invalid. Returning to main menu.\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

Test Loading an invalid saved file where more than 8 instances of a building has been placed
    Create File     ${saved_file_path}    17\nBCH,SHP,HWY,FAC,HSE\HSE,HSE,HSE,HSE\nHSE,HSE,HSE,HSE\nHSE,HSE,HSE,HSE\nHSE,HSE,HSE,HSE
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_9}       ${buildings_9}      ${locations_9}      ${bldgChoicesList_9}    ${lb_names_9}       ${board_size_list_9}    ${board_choices_9}      ${board_sizes_9}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nThe saved file is invalid. Returning to main menu.\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

# saved file building pool will contain one invalid building type of HEE
Test Loading an invalid saved file where the buildings in the building pool are invalid building types
    Create File     ${saved_file_path}    16\nBCH,SHP,HWY,FAC,HEE\nBCH,HSE,HWY,HWY\nFAC,FAC,FAC,HSE\nHWY,SHP,HSE,HWY\nFAC,HSE,BCH,?
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_9}       ${buildings_9}      ${locations_9}      ${bldgChoicesList_9}    ${lb_names_9}       ${board_size_list_9}    ${board_choices_9}      ${board_sizes_9}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nThe saved file is invalid. Returning to main menu.\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

# saved file board will contain a MON building even though its building pool are of BCH, SHP, HWY, FAC, HSE only
Test Loading an invalid saved file where the buildings placed on the board do not belong in the building pool
    Create File     ${saved_file_path}    16\nBCH,SHP,HWY,FAC,HSE\nMON,HSE,HWY,HWY\nFAC,FAC,FAC,HSE\nHWY,SHP,HSE,HWY\nFAC,HSE,BCH,?
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_9}       ${buildings_9}      ${locations_9}      ${bldgChoicesList_9}    ${lb_names_9}       ${board_size_list_9}    ${board_choices_9}      ${board_sizes_9}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nThe saved file is invalid. Returning to main menu.\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

# user currently does not have a saved file (SimpCityBoard.csv does not exist)
Test Loading a saved file that does not exist
    Remove File     ${saved_file_path}
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_10}       ${buildings_10}      ${locations_10}      ${bldgChoicesList_10}    ${lb_names_10}       ${board_size_list_10}    ${board_choices_10}      ${board_sizes_10}
    Should Be Equal     ${result.stdout}    	Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nNo saved game file found! Starting new game...\n\nPlease select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n\n\nTurn 1${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}6\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}8\n${SPACE * 2}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}MON${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}PRK${SPACE * 15}8\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}8\n\n1. Build a HSE\n2. Build a HSE\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

Test Entering an invalid option in the play menu
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_11}       ${buildings_11}      ${locations_11}      ${bldgChoicesList_11}    ${lb_names_11}       ${board_size_list_11}    ${board_choices_11}      ${board_sizes_11}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nPlease select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n\n\nTurn 1${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}6\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}8\n${SPACE * 2}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}MON${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}PRK${SPACE * 15}8\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}8\n\n1. Build a HSE\n2. Build a HSE\n3. See current score\n\n4. Save game\n0. Exit to main menu\nInvalid option! Please try again!\n\nTurn 1${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}6\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}8\n${SPACE * 2}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}MON${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}PRK${SPACE * 15}8\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}8\n\n1. Build a HSE\n2. Build a HSE\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

# first location input will be empty string (""), second input will be a location input that is not of appropriate length (""),
# third input will be an invalid location input ("C9"), last input will be a valid location ("A1")
Test Entering a series of invalid input for location when placing a building with no prior buldings placed
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_12}       ${buildings_12}      ${locations_12}      ${bldgChoicesList_12}    ${lb_names_12}       ${board_size_list_12}    ${board_choices_12}      ${board_sizes_12}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nPlease select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n\n\nTurn 1${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}6\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}8\n${SPACE * 2}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}MON${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}PRK${SPACE * 15}8\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}8\n\n1. Build a HSE\n2. Build a HSE\n3. See current score\n\n4. Save game\n0. Exit to main menu\nInvalid input! Please enter in a valid location coordinate!\nInvalid location coordinates! Please enter in a valid location coordinate!\nInvalid location coordinates! Please enter in a valid location coordinate!\n\nTurn 2${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}6\n${SPACE * 2}1| HSE |${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}7\n${SPACE * 2}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}MON${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}PRK${SPACE * 15}8\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}8\n\n1. Build a HSE\n2. Build a FAC\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

Test Entering a series of invalid input for location when placing a building with a building placed currently
    Create File     ${saved_file_path}    2\nBCH,SHP,HWY,FAC,HSE\n?,?,?,?\n?,FAC,?,?\n?,?,?,?\n?,?,?,?
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_13}       ${buildings_13}      ${locations_13}      ${bldgChoicesList_13}    ${lb_names_13}       ${board_size_list_13}    ${board_choices_13}      ${board_sizes_13}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\n\nTurn 2${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}8\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}8\n${SPACE * 2}2|${SPACE * 5}| FAC |${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}7\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}6\n\n1. Build a HSE\n2. Build a HSE\n3. See current score\n\n4. Save game\n0. Exit to main menu\nInvalid placement! There is already an existing building at B2. Please enter in a different location!\nYou must build next to an existing building.\nYou must build next to an existing building.\n\nTurn 3${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}8\n${SPACE * 2}1|${SPACE * 5}| HSE |${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}8\n${SPACE * 2}2|${SPACE * 5}| FAC |${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}6\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}6\n\n1. Build a HSE\n2. Build a FAC\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

Test Placing a building three times
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_14}       ${buildings_14}      ${locations_14}      ${bldgChoicesList_14}    ${lb_names_14}       ${board_size_list_14}    ${board_choices_14}      ${board_sizes_14}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nPlease select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n\n\nTurn 1${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}6\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}8\n${SPACE * 2}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}MON${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}PRK${SPACE * 15}8\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}8\n\n1. Build a HSE\n2. Build a HSE\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nTurn 2${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}7\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}7\n${SPACE * 2}2|${SPACE * 5}| HSE |${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}MON${SPACE * 15}7\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}PRK${SPACE * 15}8\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}8\n\n1. Build a MON\n2. Build a FAC\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nTurn 3${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}7\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}7\n${SPACE * 2}2| FAC | HSE |${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}MON${SPACE * 15}7\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}PRK${SPACE * 15}7\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}8\n\n1. Build a PRK\n2. Build a MON\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nTurn 4${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}7\n${SPACE * 2}1|${SPACE * 5}| PRK |${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}7\n${SPACE * 2}2| FAC | HSE |${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}MON${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}PRK${SPACE * 15}7\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}6\n\n1. Build a SHP\n2. Build a SHP\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

# user will proceed to place 2 buildings
Test See remaining buildings
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_15}       ${buildings_15}      ${locations_15}      ${bldgChoicesList_15}    ${lb_names_15}       ${board_size_list_15}    ${board_choices_15}      ${board_sizes_15}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nPlease select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n\n\nTurn 1${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}6\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}8\n${SPACE * 2}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}MON${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}PRK${SPACE * 15}8\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}8\n\n1. Build a HSE\n2. Build a HSE\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nTurn 2${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}7\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}7\n${SPACE * 2}2|${SPACE * 5}| HSE |${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}MON${SPACE * 15}7\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}PRK${SPACE * 15}8\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}8\n\n1. Build a MON\n2. Build a FAC\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nTurn 3${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}7\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}8\n${SPACE * 2}2| MON | HSE |${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}MON${SPACE * 15}6\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}PRK${SPACE * 15}7\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}8\n\n1. Build a PRK\n2. Build a MON\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

# user firstly loads a saved game from the saved file
# user will proceed to check the current score
# user will proceed to place a FAC at B2
# user will proceed to check the current score once more
Test See current score
    Create File     ${saved_file_path}    15\nBCH,SHP,HWY,FAC,HSE\nBCH,HSE,HWY,HWY\nFAC,?,FAC,HSE\nHWY,SHP,HSE,HWY\nFAC,HSE,BCH,?
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_16}       ${buildings_16}      ${locations_16}      ${bldgChoicesList_16}    ${lb_names_16}       ${board_size_list_16}    ${board_choices_16}      ${board_sizes_16}
    Should Be Equal     ${result.stdout}    	Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\n\nTurn 15${SPACE * 26}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}6\n${SPACE * 2}1| BCH | HSE | HWY | HWY |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}7\n${SPACE * 2}2| FAC |${SPACE * 5}| FAC | HSE |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}4\n${SPACE * 2}3| HWY | SHP | HSE | HWY |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}4\n${SPACE * 2}4| FAC | HSE | BCH |${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}3\n\n1. Build a HSE\n2. Build a FAC\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nBCH: 3 + 1 = 4\nSHP: 2 = 2\nHWY: 2 + 2 + 1 + 1 = 6\nFAC: 3 + 3 + 3 = 9\nHSE: 2 + 1 + 1 + 1 = 5\nTotal score: 26\n\nTurn 15${SPACE * 26}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}6\n${SPACE * 2}1| BCH | HSE | HWY | HWY |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}7\n${SPACE * 2}2| FAC |${SPACE * 5}| FAC | HSE |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}4\n${SPACE * 2}3| HWY | SHP | HSE | HWY |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}4\n${SPACE * 2}4| FAC | HSE | BCH |${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}3\n\n1. Build a HSE\n2. Build a FAC\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nTurn 16${SPACE * 26}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}5\n${SPACE * 2}1| BCH | HSE | HWY | HWY |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}7\n${SPACE * 2}2| FAC | FAC | FAC | HSE |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}4\n${SPACE * 2}3| HWY | SHP | HSE | HWY |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}3\n${SPACE * 2}4| FAC | HSE | BCH |${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}4\n\n1. Build a BCH\n2. Build a FAC\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nBCH: 3 + 1 = 4\nSHP: 3 = 3\nHWY: 2 + 2 + 1 + 1 = 6\nFAC: 4 + 4 + 4 + 4 = 16\nHSE: 1 + 1 + 1 + 1 = 4\nTotal score: 33\n\nTurn 16${SPACE * 26}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}5\n${SPACE * 2}1| BCH | HSE | HWY | HWY |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}7\n${SPACE * 2}2| FAC | FAC | FAC | HSE |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}4\n${SPACE * 2}3| HWY | SHP | HSE | HWY |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}3\n${SPACE * 2}4| FAC | HSE | BCH |${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}4\n\n1. Build a BCH\n2. Build a FAC\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

Test Save game
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_17}       ${buildings_17}      ${locations_17}      ${bldgChoicesList_17}    ${lb_names_17}       ${board_size_list_17}    ${board_choices_17}      ${board_sizes_17}
    ${file_content}     Get File    ${saved_file_path}    encoding=UTF-8
    Should Be Equal     ${file_content}     3\nBCH,SHP,HWY,FAC,HSE\n?,?,?,?\nFAC,HSE,?,?\n?,?,?,?\n?,?,?,?
    Should Be Equal     ${result.stdout}     	Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nPlease select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n\n\nTurn 1${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}8\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}8\n${SPACE * 2}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}7\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}7\n\n1. Build a HSE\n2. Build a FAC\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nTurn 2${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}7\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}8\n${SPACE * 2}2|${SPACE * 5}| HSE |${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}7\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}7\n\n1. Build a BCH\n2. Build a FAC\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nTurn 3${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}8\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}6\n${SPACE * 2}2| FAC | HSE |${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}7\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}7\n\n1. Build a SHP\n2. Build a SHP\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nGame saved!\n\nTurn 3${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}8\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}6\n${SPACE * 2}2| FAC | HSE |${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}7\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}7\n\n1. Build a SHP\n2. Build a SHP\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

# user's score does not match the 10th player in the high score
# user will score 34, whereas the 10th player in the leaderboard has a score of 40
Test Check game end without user reaching top 10 in highscore case 1
    Create File     ${saved_file_path}    16\nBCH,SHP,HWY,FAC,HSE\nBCH,HSE,HWY,HWY\nFAC,FAC,FAC,HSE\nHWY,SHP,HSE,HWY\nFAC,HSE,BCH,?
    Create File     ${leaderboard_file_path}    \n\n\n\n\n\n\n\n\n\n\n\n\n\n\njustin:48,juistin:48,test2:48,test:48,test:48,test9:48,test9:48,droog:48,prawg:48,reeeee1:40\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_18}       ${buildings_18}      ${locations_18}      ${bldgChoicesList_18}    ${lb_names_18}       ${board_size_list_18}    ${board_choices_18}      ${board_sizes_18}
    ${file_content}     Get File    ${leaderboard_file_path}    encoding=UTF-8
    Should Be Equal     ${file_content}         \n\n\n\n\n\n\n\n\n\n\n\n\n\n\njustin:48,juistin:48,test2:48,test:48,test:48,test9:48,test9:48,droog:48,prawg:48,reeeee1:40\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n
    Should Be Equal     ${result.stdout}        Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\n\nTurn 16${SPACE * 26}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}6\n${SPACE * 2}1| BCH | HSE | HWY | HWY |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}7\n${SPACE * 2}2| FAC | FAC | FAC | HSE |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}3\n${SPACE * 2}3| HWY | SHP | HSE | HWY |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}3\n${SPACE * 2}4| FAC | HSE | BCH |${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}4\n\n1. Build a HWY\n2. Build a FAC\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nFinal layout of Simp City:\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D\n${SPACE * 3}+-----+-----+-----+-----+\n${SPACE * 2}1| BCH | HSE | HWY | HWY |\n${SPACE * 3}+-----+-----+-----+-----+\n${SPACE * 2}2| FAC | FAC | FAC | HSE |\n${SPACE * 3}+-----+-----+-----+-----+\n${SPACE * 2}3| HWY | SHP | HSE | HWY |\n${SPACE * 3}+-----+-----+-----+-----+\n${SPACE * 2}4| FAC | HSE | BCH | HWY |\n${SPACE * 3}+-----+-----+-----+-----+\nBCH: 3 + 1 = 4\nSHP: 3 = 3\nHWY: 2 + 2 + 1 + 1 + 1 = 7\nFAC: 4 + 4 + 4 + 4 = 16\nHSE: 1 + 1 + 1 + 1 = 4\nTotal score: 34\n\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

# user's score matches the 10th player in the high score
# the user will score 34, similarly the 10th player in the leaderboard has a score of 34
Test Check game end without user reaching top 10 in highscore case 2
    Create File     ${saved_file_path}    16\nBCH,SHP,HWY,FAC,HSE\nBCH,HSE,HWY,HWY\nFAC,FAC,FAC,HSE\nHWY,SHP,HSE,HWY\nFAC,HSE,BCH,?
    Create File     ${leaderboard_file_path}    \n\n\n\n\n\n\n\n\n\n\n\n\n\n\njustin:48,juistin:48,test2:48,test:48,test:48,test9:48,test9:48,droog:48,prawg:48,reeeee1:34\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_18}       ${buildings_18}      ${locations_18}      ${bldgChoicesList_18}    ${lb_names_18}       ${board_size_list_18}    ${board_choices_18}      ${board_sizes_18}
    ${file_content}     Get File    ${leaderboard_file_path}    encoding=UTF-8
    Should Be Equal     ${file_content}     \n\n\n\n\n\n\n\n\n\n\n\n\n\n\njustin:48,juistin:48,test2:48,test:48,test:48,test9:48,test9:48,droog:48,prawg:48,reeeee1:34\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n
    Should Be Equal     ${result.stdout}     Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\n\nTurn 16${SPACE * 26}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}6\n${SPACE * 2}1| BCH | HSE | HWY | HWY |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}7\n${SPACE * 2}2| FAC | FAC | FAC | HSE |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}3\n${SPACE * 2}3| HWY | SHP | HSE | HWY |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}3\n${SPACE * 2}4| FAC | HSE | BCH |${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}4\n\n1. Build a HWY\n2. Build a FAC\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nFinal layout of Simp City:\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D\n${SPACE * 3}+-----+-----+-----+-----+\n${SPACE * 2}1| BCH | HSE | HWY | HWY |\n${SPACE * 3}+-----+-----+-----+-----+\n${SPACE * 2}2| FAC | FAC | FAC | HSE |\n${SPACE * 3}+-----+-----+-----+-----+\n${SPACE * 2}3| HWY | SHP | HSE | HWY |\n${SPACE * 3}+-----+-----+-----+-----+\n${SPACE * 2}4| FAC | HSE | BCH | HWY |\n${SPACE * 3}+-----+-----+-----+-----+\nBCH: 3 + 1 = 4\nSHP: 3 = 3\nHWY: 2 + 2 + 1 + 1 + 1 = 7\nFAC: 4 + 4 + 4 + 4 = 16\nHSE: 1 + 1 + 1 + 1 = 4\nTotal score: 34\n\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

# user's score will be higher than the 10th player in the high score, coming in 10th place
# the user will score 34, whereas the 10th player in the leaderboard will have a score of 33
# also tests the name validation which only allows for a max of 20 characters and does not contain any punctuation
Test Check game end with user reaching top 10 in highscore case 1
    Create File     ${saved_file_path}    16\nBCH,SHP,HWY,FAC,HSE\nBCH,HSE,HWY,HWY\nFAC,FAC,FAC,HSE\nHWY,SHP,HSE,HWY\nFAC,HSE,BCH,?
    Create File     ${leaderboard_file_path}    \n\n\n\n\n\n\n\n\n\n\n\n\n\n\njustin:48,juistin:48,test2:48,test:48,test:48,test9:48,test9:48,droog:48,prawg:48,reeeee1:33\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_19}       ${buildings_19}      ${locations_19}      ${bldgChoicesList_19}    ${lb_names_19}       ${board_size_list_19}    ${board_choices_19}      ${board_sizes_19}
    ${file_content}     Get File    ${leaderboard_file_path}    encoding=UTF-8
    Should Be Equal     ${file_content}     \n\n\n\n\n\n\n\n\n\n\n\n\n\n\njustin:48,juistin:48,test2:48,test:48,test:48,test9:48,test9:48,droog:48,prawg:48,abcdabcdabcdabcdabcd:34\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n
    Should Be Equal     ${result.stdout}     Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\n\nTurn 16${SPACE * 26}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}6\n${SPACE * 2}1| BCH | HSE | HWY | HWY |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}7\n${SPACE * 2}2| FAC | FAC | FAC | HSE |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}3\n${SPACE * 2}3| HWY | SHP | HSE | HWY |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}3\n${SPACE * 2}4| FAC | HSE | BCH |${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}4\n\n1. Build a HWY\n2. Build a FAC\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nFinal layout of Simp City:\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D\n${SPACE * 3}+-----+-----+-----+-----+\n${SPACE * 2}1| BCH | HSE | HWY | HWY |\n${SPACE * 3}+-----+-----+-----+-----+\n${SPACE * 2}2| FAC | FAC | FAC | HSE |\n${SPACE * 3}+-----+-----+-----+-----+\n${SPACE * 2}3| HWY | SHP | HSE | HWY |\n${SPACE * 3}+-----+-----+-----+-----+\n${SPACE * 2}4| FAC | HSE | BCH | HWY |\n${SPACE * 3}+-----+-----+-----+-----+\nBCH: 3 + 1 = 4\nSHP: 3 = 3\nHWY: 2 + 2 + 1 + 1 + 1 = 7\nFAC: 4 + 4 + 4 + 4 = 16\nHSE: 1 + 1 + 1 + 1 = 4\nTotal score: 34\nCongratulations! You made the high score board at position 10\nThe name you have entered is invalid. Please try again!\nThe name you have entered is invalid. Please try again!\nThe name you have entered is invalid. Please try again!\nThe name you have entered is invalid. Please try again!\n\n--------- HIGH SCORES ---------\nPos Player${SPACE * 16}Score\n--- ------${SPACE * 16}-----\n 1. justin${SPACE * 19}48\n 2. juistin${SPACE * 18}48\n 3. test2${SPACE * 20}48\n 4. test${SPACE * 21}48\n 5. test${SPACE * 21}48\n 6. test9${SPACE * 20}48\n 7. test9${SPACE * 20}48\n 8. droog${SPACE * 20}48\n 9. prawg${SPACE * 20}48\n10. abcdabcdabcdabcdabcd${SPACE * 5}34\n-------------------------------\n\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

# user's score will be higher than the 3rd player in the high score, coming in 3rd place
# the user will score 34, whereas the 3rd player in the leaderboard will have a score of 33
Test Check game end with user reaching top 10 in highscore case 2
    Create File     ${saved_file_path}    16\nBCH,SHP,HWY,FAC,HSE\nBCH,HSE,HWY,HWY\nFAC,FAC,FAC,HSE\nHWY,SHP,HSE,HWY\nFAC,HSE,BCH,?
    Create File     ${leaderboard_file_path}    \n\n\n\n\n\n\n\n\n\n\n\n\n\n\njustin:48,juistin:48,reeeee1:33,r10:30,reeeee2:29\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_20}       ${buildings_20}      ${locations_20}      ${bldgChoicesList_20}    ${lb_names_20}       ${board_size_list_20}    ${board_choices_20}      ${board_sizes_20}
    ${file_content}     Get File    ${leaderboard_file_path}    encoding=UTF-8
    Should Be Equal     ${file_content}     \n\n\n\n\n\n\n\n\n\n\n\n\n\n\njustin:48,juistin:48,peter:34,reeeee1:33,r10:30,reeeee2:29\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n
    Should Be Equal     ${result.stdout}     Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\n\nTurn 16${SPACE * 26}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}6\n${SPACE * 2}1| BCH | HSE | HWY | HWY |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}7\n${SPACE * 2}2| FAC | FAC | FAC | HSE |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}3\n${SPACE * 2}3| HWY | SHP | HSE | HWY |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}3\n${SPACE * 2}4| FAC | HSE | BCH |${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}4\n\n1. Build a HWY\n2. Build a FAC\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nFinal layout of Simp City:\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D\n${SPACE * 3}+-----+-----+-----+-----+\n${SPACE * 2}1| BCH | HSE | HWY | HWY |\n${SPACE * 3}+-----+-----+-----+-----+\n${SPACE * 2}2| FAC | FAC | FAC | HSE |\n${SPACE * 3}+-----+-----+-----+-----+\n${SPACE * 2}3| HWY | SHP | HSE | HWY |\n${SPACE * 3}+-----+-----+-----+-----+\n${SPACE * 2}4| FAC | HSE | BCH | HWY |\n${SPACE * 3}+-----+-----+-----+-----+\nBCH: 3 + 1 = 4\nSHP: 3 = 3\nHWY: 2 + 2 + 1 + 1 + 1 = 7\nFAC: 4 + 4 + 4 + 4 = 16\nHSE: 1 + 1 + 1 + 1 = 4\nTotal score: 34\nCongratulations! You made the high score board at position 3\n\n--------- HIGH SCORES ---------\nPos Player${SPACE * 16}Score\n--- ------${SPACE * 16}-----\n 1. justin${SPACE * 19}48\n 2. juistin${SPACE * 18}48\n 3. peter${SPACE * 20}34\n 4. reeeee1${SPACE * 18}33\n 5. r10${SPACE * 22}30\n 6. reeeee2${SPACE * 18}29\n-------------------------------\n\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

Test Save high score for an area size with no high scores currently
    Create File     ${saved_file_path}    16\nBCH,SHP,HWY,FAC,HSE\nBCH,HSE,HWY,HWY\nFAC,FAC,FAC,HSE\nHWY,SHP,HSE,HWY\nFAC,HSE,BCH,?
    Create File     ${leaderboard_file_path}    \n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_20}       ${buildings_20}      ${locations_20}      ${bldgChoicesList_20}    ${lb_names_20}       ${board_size_list_20}    ${board_choices_20}      ${board_sizes_20}
    ${file_content}     Get File    ${leaderboard_file_path}    encoding=UTF-8
    Should Be Equal     ${file_content}     \n\n\n\n\n\n\n\n\n\n\n\n\n\n\npeter:34\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n
    Should Be Equal     ${result.stdout}     	Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\n\nTurn 16${SPACE * 26}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}6\n${SPACE * 2}1| BCH | HSE | HWY | HWY |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}7\n${SPACE * 2}2| FAC | FAC | FAC | HSE |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}3\n${SPACE * 2}3| HWY | SHP | HSE | HWY |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}3\n${SPACE * 2}4| FAC | HSE | BCH |${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}4\n\n1. Build a HWY\n2. Build a FAC\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nFinal layout of Simp City:\n${SPACE * 5} A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D\n${SPACE * 3}+-----+-----+-----+-----+\n${SPACE * 2}1| BCH | HSE | HWY | HWY |\n${SPACE * 3}+-----+-----+-----+-----+\n${SPACE * 2}2| FAC | FAC | FAC | HSE |\n${SPACE * 3}+-----+-----+-----+-----+\n${SPACE * 2}3| HWY | SHP | HSE | HWY |\n${SPACE * 3}+-----+-----+-----+-----+\n${SPACE * 2}4| FAC | HSE | BCH | HWY |\n${SPACE * 3}+-----+-----+-----+-----+\nBCH: 3 + 1 = 4\nSHP: 3 = 3\nHWY: 2 + 2 + 1 + 1 + 1 = 7\nFAC: 4 + 4 + 4 + 4 = 16\nHSE: 1 + 1 + 1 + 1 = 4\nTotal score: 34\nCongratulations! You made the high score board at position 1\n\n--------- HIGH SCORES ---------\nPos Player${SPACE * 16}Score\n--- ------${SPACE * 16}-----\n 1. peter${SPACE * 20}34\n-------------------------------\n\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

Test Save high score for when the leaderboard CSV file does not exist
    Remove File     ${leaderboard_file_path}
    Create File     ${saved_file_path}    16\nBCH,SHP,HWY,FAC,HSE\nBCH,HSE,HWY,HWY\nFAC,FAC,FAC,HSE\nHWY,SHP,HSE,HWY\nFAC,HSE,BCH,?
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_20}       ${buildings_20}      ${locations_20}      ${bldgChoicesList_20}    ${lb_names_20}       ${board_size_list_20}    ${board_choices_20}      ${board_sizes_20}
    ${file_content}     Get File    ${leaderboard_file_path}    encoding=UTF-8
    Should Be Equal     ${file_content}     \n\n\n\n\n\n\n\n\n\n\n\n\n\n\npeter:34\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n
    Should Be Equal     ${result.stdout}     	Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\n\nTurn 16${SPACE * 26}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}6\n${SPACE * 2}1| BCH | HSE | HWY | HWY |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}7\n${SPACE * 2}2| FAC | FAC | FAC | HSE |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}3\n${SPACE * 2}3| HWY | SHP | HSE | HWY |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}3\n${SPACE * 2}4| FAC | HSE | BCH |${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}4\n\n1. Build a HWY\n2. Build a FAC\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nFinal layout of Simp City:\n${SPACE * 5} A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D\n${SPACE * 3}+-----+-----+-----+-----+\n${SPACE * 2}1| BCH | HSE | HWY | HWY |\n${SPACE * 3}+-----+-----+-----+-----+\n${SPACE * 2}2| FAC | FAC | FAC | HSE |\n${SPACE * 3}+-----+-----+-----+-----+\n${SPACE * 2}3| HWY | SHP | HSE | HWY |\n${SPACE * 3}+-----+-----+-----+-----+\n${SPACE * 2}4| FAC | HSE | BCH | HWY |\n${SPACE * 3}+-----+-----+-----+-----+\nBCH: 3 + 1 = 4\nSHP: 3 = 3\nHWY: 2 + 2 + 1 + 1 + 1 = 7\nFAC: 4 + 4 + 4 + 4 = 16\nHSE: 1 + 1 + 1 + 1 = 4\nTotal score: 34\nCongratulations! You made the high score board at position 1\n\n--------- HIGH SCORES ---------\nPos Player${SPACE * 16}Score\n--- ------${SPACE * 16}-----\n 1. peter${SPACE * 20}34\n-------------------------------\n\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

Test View high scores for an area size with no high scores currently
    Create File     ${leaderboard_file_path}    \n\n\n\n\n\n\n\n\n\n\n\n\n\n\njustin:48,juistin:48,reeeee1:33,r10:30,reeeee2:29\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_21}       ${buildings_21}      ${locations_21}      ${bldgChoicesList_21}    ${lb_names_21}       ${board_size_list_21}    ${board_choices_21}      ${board_sizes_21}
    Should Be Equal     ${result.stdout}     Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nInvalid input. Please try again...(e.g. 5,8)\nInvalid input. Please try again...(e.g. 5,8)\nInvalid input. Please try again...(e.g. 5,8)\nInvalid input. Board size cannot have height/length lesser than 0. Please try again...(e.g. 5,8)\nInvalid input. Board size cannot have height/length lesser than 0. Please try again...(e.g. 5,8)\nArea of the board cannot be more than 40. Please try again...\n\n--------- HIGH SCORES ---------\nPos Player${SPACE * 16}Score\n--- ------${SPACE * 16}-----\nNo high scores currently!\n-------------------------------\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

Test View high scores for an area size with high scores
    Create File     ${leaderboard_file_path}    \n\n\n\n\n\n\n\n\n\n\n\n\n\n\njustin:48,juistin:48,reeeee1:33,r10:30,reeeee2:29\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_22}       ${buildings_22}      ${locations_22}      ${bldgChoicesList_22}    ${lb_names_22}       ${board_size_list_22}    ${board_choices_22}      ${board_sizes_22}
    Should Be Equal     ${result.stdout}     Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\n\n--------- HIGH SCORES ---------\nPos Player${SPACE * 16}Score\n--- ------${SPACE * 16}-----\n 1. justin${SPACE * 19}48\n 2. juistin${SPACE * 18}48\n 3. reeeee1${SPACE * 18}33\n 4. r10${SPACE * 22}30\n 5. reeeee2${SPACE * 18}29\n-------------------------------\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

Test View high scores when the leaderboard CSV file does not exist
    Remove File     ${leaderboard_file_path}
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_22}       ${buildings_22}      ${locations_22}      ${bldgChoicesList_22}    ${lb_names_22}       ${board_size_list_22}    ${board_choices_22}      ${board_sizes_22}
    Should Be Equal     ${result.stdout}     Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\n\n--------- HIGH SCORES ---------\nPos Player${SPACE * 16}Score\n--- ------${SPACE * 16}-----\nNo high scores currently!\n-------------------------------\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

Test View score for a 1x26 board
    Create File     ${saved_file_path}    26\nMON,SHP,HWY,PRK,HSE\nMON,HSE,HWY,HWY,MON,HSE,HWY,HWY,PRK,PRK,PRK,HSE,MON,MON,PRK,HSE,HWY,SHP,HSE,HWY,HWY,SHP,HSE,HWY,MON,?
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_23}       ${buildings_23}      ${locations_23}      ${bldgChoicesList_23}    ${lb_names_23}       ${board_size_list_23}    ${board_choices_23}      ${board_sizes_23}
    Should Be Equal     ${result.stdout}     	Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\n\nTurn 26${SPACE * 158}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 5}E${SPACE * 5}F${SPACE * 5}G${SPACE * 5}H${SPACE * 5}I${SPACE * 5}J${SPACE * 5}K${SPACE * 5}L${SPACE * 5}M${SPACE * 5}N${SPACE * 5}O${SPACE * 5}P${SPACE * 5}Q${SPACE * 5}R${SPACE * 5}S${SPACE * 5}T${SPACE * 5}U${SPACE * 5}V${SPACE * 5}W${SPACE * 5}X${SPACE * 5}Y${SPACE * 5}Z${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+${SPACE * 5}MON${SPACE * 15}3\n${SPACE * 2}1| MON | HSE | HWY | HWY | MON | HSE | HWY | HWY | PRK | PRK | PRK | HSE | MON | MON | PRK | HSE | HWY | SHP | HSE | HWY | HWY | SHP | HSE | HWY | MON |${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}5\n\n${SPACE * 165}HWY${SPACE * 15}0\n\n${SPACE * 165}PRK${SPACE * 15}3\n\n${SPACE * 165}HSE${SPACE * 15}2\n\n1. Build a SHP\n2. Build a PRK\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nMON: 2 + 1 + 1 + 1 + 1 = 6\nSHP: 2 + 2 = 4\nHWY: 2 + 2 + 2 + 2 + 1 + 2 + 2 + 1 = 14\nPRK: 8 + 1 = 9\nHSE: 0 + 0 + 0 + 0 + 1 + 1 = 2\nTotal score: 35\n\nTurn 26${SPACE * 158}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 5}E${SPACE * 5}F${SPACE * 5}G${SPACE * 5}H${SPACE * 5}I${SPACE * 5}J${SPACE * 5}K${SPACE * 5}L${SPACE * 5}M${SPACE * 5}N${SPACE * 5}O${SPACE * 5}P${SPACE * 5}Q${SPACE * 5}R${SPACE * 5}S${SPACE * 5}T${SPACE * 5}U${SPACE * 5}V${SPACE * 5}W${SPACE * 5}X${SPACE * 5}Y${SPACE * 5}Z${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+${SPACE * 5}MON${SPACE * 15}3\n${SPACE * 2}1| MON | HSE | HWY | HWY | MON | HSE | HWY | HWY | PRK | PRK | PRK | HSE | MON | MON | PRK | HSE | HWY | SHP | HSE | HWY | HWY | SHP | HSE | HWY | MON |${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}5\n\n${SPACE * 165}HWY${SPACE * 15}0\n\n${SPACE * 165}PRK${SPACE * 15}3\n\n${SPACE * 165}HSE${SPACE * 15}2\n\n1. Build a SHP\n2. Build a PRK\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

# Placing a building
# ${result} = Run Process   python      start_menu.py       ${-1}     ${True}    ${options_3}       ${buildings_3}         ${locations_3}
#     [Documentation]         LOG 1:1  W          	Welcome, mayor of Simps City!\n----------------------------\n1. Start new game\n2. Load saved game\n\n0. Exit\n\nTurn 1\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n${SPACE}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n${SPACE}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n${SPACE}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n${SPACE}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a HSE\n2. Build a HSE\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\n\nTurn 2\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n${SPACE}1| HSE |${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n${SPACE}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n${SPACE}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n${SPACE}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a HSE\n2. Build a BCH\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to ma 
