*** Variables ***
${saved_file_path}    ./SimpCityBoard.csv
${leaderboard_file_path}    ./SimpCityLeaderboard.csv

${options_1}    0
${buildings_1}      None
${locations_1}      None
${bldgChoicesList_1}    None
${lb_names_1}     None
${board_size_list_1}    None

# Test for starting a new game and exiting with user passing in only 1 building for the building pool once
${options_2}    1,0,0
${buildings_2}      HSE,HSE 
${locations_2}      None
${bldgChoicesList_2}    HSE.HSE,FAC,MON,PRK,SHP
${lb_names_2}     None
${board_size_list_2}    None

# Test for starting a new game and exiting with user passing in a repeated building in the building pool once 
${options_3}    1,0,0
${buildings_3}      HSE,HSE
${locations_3}      None
${bldgChoicesList_3}    HSE,HSE,MON,PRK,SHP.HSE,FAC,MON,PRK,SHP
${lb_names_3}     None
${board_size_list_3}    None

# Test for starting a new game and exiting with user passing in an invalid building type in the building pool once
${options_4}    1,0,0
${buildings_4}      HSE,HSE
${locations_4}      None
${bldgChoicesList_4}    HEE,FAC,MON,PRK,SHP.HSE,FAC,MON,PRK,SHP
${lb_names_4}     None
${board_size_list_4}    None

# Test for loading a saved game successfully and exiting
${options_5}    2,0,0
${buildings_5}      HSE,HSE
${locations_5}      None
${bldgChoicesList_5}    None
${lb_names_5}     None
${board_size_list_5}    None

# Test for loading an invalid saved file with invalid building types
${options_6}    2,0
${buildings_6}      None
${locations_6}      None
${bldgChoicesList_6}    None
${lb_names_6}     None
${board_size_list_6}    None

# Test for loading a saved file that does not exist
${options_7}    2,0,0
${buildings_7}      HSE,HSE
${locations_7}      None
${bldgChoicesList_7}    HSE,FAC,MON,PRK,SHP
${lb_names_7}     None
${board_size_list_7}    None

# Test for entering an invalid option in the play menu
${options_8}    1,9,0,0
${buildings_8}      HSE,HSE
${locations_8}      None
${bldgChoicesList_8}    HSE,FAC,MON,PRK,SHP
${lb_names_8}     None
${board_size_list_8}    None

# Test for entering a series of invalid input for location when placing a building with no prior buldings placed
${options_9}    1,1,0,0
${buildings_9}      HSE,HSE,HSE,FAC
${locations_9}      ,A,C9,A1
${bldgChoicesList_9}    HSE,FAC,MON,PRK,SHP
${lb_names_9}     None
${board_size_list_9}    None

# Test for entering a series of invalid input for location when placing a building with a building placed currently
${options_10}    2,1,0,0
${buildings_10}      HSE,HSE,HSE,FAC
${locations_10}      B2,A1,C1,B1
${bldgChoicesList_10}    HSE,FAC,MON,PRK,SHP
${lb_names_10}     None
${board_size_list_10}    None

# Test for placing a building three times
${options_11}    1,1,2,1,0,0
${buildings_11}      HSE,HSE,MON,FAC,PRK,MON,SHP,SHP
${locations_11}      B2,A2,B1
${bldgChoicesList_11}    HSE,FAC,MON,PRK,SHP
${lb_names_11}     None
${board_size_list_11}    None

#Test for see remaining buildings
${options_12}    1,3,2,1,3,0,0
${buildings_12}      HSE,HSE,MON,FAC,PRK,MON
${locations_12}      B2,A2
${bldgChoicesList_12}    HSE,FAC,MON,PRK,SHP
${lb_names_12}     None
${board_size_list_12}    None

#Test for see current score
${options_13}    2,4,2,4,0,0
${buildings_13}      HSE,FAC,BCH,FAC
${locations_13}      B2
${bldgChoicesList_13}    BCH,SHP,HWY,FAC,HSE
${lb_names_13}     None
${board_size_list_13}    None

#Test for save game
${options_14}    1,1,2,5,0,0
${buildings_14}      HSE,FAC,BCH,FAC,SHP,SHP
${locations_14}      B2,A2
${bldgChoicesList_14}    BCH,SHP,HWY,FAC,HSE
${lb_names_14}     None
${board_size_list_14}    None

#Test for check game end without user reaching top 10 in highscore
${options_15}    2,1,0
${buildings_15}      HWY,FAC,SHP,SHP
${locations_15}      D4
${bldgChoicesList_15}    BCH,SHP,HWY,FAC,HSE
${lb_names_15}     None
${board_size_list_15}    None

# Test for check game end with user reaching top 10 in highscore case 1
${options_16}    2,1,0
${buildings_16}      HWY,FAC,SHP,SHP
${locations_16}      D4
${bldgChoicesList_16}    BCH,SHP,HWY,FAC,HSE
${lb_names_16}     ,nameWithPunc!@#$%,abcdabcdabcdabcdabcda,abcdabcdabcdabcdabcdab,abcdabcdabcdabcdabcd       #0 chars, name with punctuation, 21 chars, 22 chars, 20 chars
${board_size_list_16}    None

# Test for check game end with user reaching top 10 in highscore case 2
${options_17}    2,1,0
${buildings_17}      HWY,FAC,SHP,SHP
${locations_17}      D4
${bldgChoicesList_17}    BCH,SHP,HWY,FAC,HSE
${lb_names_17}     peter
${board_size_list_17}    None

# Test for view high scores with an area size with no high scores currently
${options_18}    3,0
${buildings_18}      None
${locations_18}      None
${bldgChoicesList_18}    None
${lb_names_18}     None
${board_size_list_18}    invalidDimension.a,b,c.a,b.0,0.-1,-5.3,14.4,10

# Test for view high scores with an area size with high scores
${options_19}    3,0
${buildings_19}      None
${locations_19}      None
${bldgChoicesList_19}    None
${lb_names_19}     None
${board_size_list_19}    4,4

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
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_1}       ${buildings_1}      ${locations_1}      ${bldgChoicesList_1}      ${lb_names_1}     ${board_size_list_1}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

Test Starting a new game and exiting with user passing in only 1 building for the building pool once
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_2}       ${buildings_2}      ${locations_2}      ${bldgChoicesList_2}    ${lb_names_2}       ${board_size_list_2}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nPlease select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n\nPlease enter 5 building types\n\nTurn 1\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a HSE\n2. Build a HSE\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

# building pool "HSE, HSE, MON, PRK, SHP" with HSE listed twice
# second input for building pool will be "HSE, FAC, MON, PRK, SHP"
Test Starting a new game and exiting with user passing in a repeated building in the building pool once
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_3}       ${buildings_3}      ${locations_3}      ${bldgChoicesList_3}    ${lb_names_3}       ${board_size_list_3}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nPlease select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n\nPlease only choose 1 of each type of building\n\nTurn 1\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a HSE\n2. Build a HSE\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

# user will pass in building type of HEE instead of HSE
# 1st building pool will be "HEE, FAC, MON, PRK, SHP"
# 2nd building pool will be "HSE, FAC, MON, PRK, SHP"
Test Starting a new game and exiting with user passing in an invalid building type in the building pool once
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_4}       ${buildings_4}      ${locations_4}      ${bldgChoicesList_4}    ${lb_names_4}       ${board_size_list_4}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nPlease select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n\nInvalid building type input\n\nTurn 1\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a HSE\n2. Build a HSE\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

Test Loading a saved game successfully and exiting
    Create File     ${saved_file_path}    16\nBCH,SHP,HWY,FAC,HSE\nBCH,HSE,HWY,HWY\nFAC,FAC,FAC,HSE\nHWY,SHP,HSE,HWY\nFAC,HSE,BCH,?
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_5}       ${buildings_5}      ${locations_5}      ${bldgChoicesList_5}    ${lb_names_5}       ${board_size_list_5}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\n\nTurn 16\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1| BCH | HSE | HWY | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 2| FAC | FAC | FAC | HSE |\n${SPACE * 2}+-----+-----+-----+-----+\n 3| HWY | SHP | HSE | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 4| FAC | HSE | BCH |${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a HSE\n2. Build a HSE\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

# saved file will contain invalid building types like HEE
Test Loading an invalid saved file with invalid building types
    Create File     ${saved_file_path}    16\nBCH,SHP,HWY,FAC,HSE\nBCH,HEE,HWY,HWY\nFAC,FAC,FAC,HSE\nHWY,SHP,HSE,HWY\nFAC,HSE,BCH,?
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_6}       ${buildings_6}      ${locations_6}      ${bldgChoicesList_6}    ${lb_names_6}       ${board_size_list_6}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nThe saved file is invalid. Returning to main menu.\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

# saved file will have turn number 99 saved with a board missing 1 space, actual turn number should be 16
Test Loading an invalid saved file with board and turn number not corresponding
    Create File     ${saved_file_path}    99\nBCH,SHP,HWY,FAC,HSE\nBCH,HSE,HWY,HWY\nFAC,FAC,FAC,HSE\nHWY,SHP,HSE,HWY\nFAC,HSE,BCH,?
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_6}       ${buildings_6}      ${locations_6}      ${bldgChoicesList_6}    ${lb_names_6}       ${board_size_list_6}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nThe saved file is invalid. Returning to main menu.\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

# saved file will have one missing building on its third row
Test Loading an invalid saved file with a board of unequal row lengths
    Create File     ${saved_file_path}    15\nBCH,SHP,HWY,FAC,HSE\nBCH,HSE,HWY,HWY\nFAC,FAC,FAC,HSE\nHWY,SHP,HWY\nFAC,HSE,BCH,?
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_6}       ${buildings_6}      ${locations_6}      ${bldgChoicesList_6}    ${lb_names_6}       ${board_size_list_6}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nThe saved file is invalid. Returning to main menu.\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

Test Loading an invalid saved file where the buildings are not placed orthogonally adjacent to one another
    Create File     ${saved_file_path}    3\nBCH,SHP,HWY,FAC,HSE\nBCH,?,?,?\n?,?,?,?\n?,?,SHP,?\n?,?,?,?
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_6}       ${buildings_6}      ${locations_6}      ${bldgChoicesList_6}    ${lb_names_6}       ${board_size_list_6}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nThe saved file is invalid. Returning to main menu.\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

Test Loading an invalid saved file where more than 8 instances of a building has been placed
    Create File     ${saved_file_path}    17\nBCH,SHP,HWY,FAC,HSE\HSE,HSE,HSE,HSE\nHSE,HSE,HSE,HSE\nHSE,HSE,HSE,HSE\nHSE,HSE,HSE,HSE
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_6}       ${buildings_6}      ${locations_6}      ${bldgChoicesList_6}    ${lb_names_6}       ${board_size_list_6}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nThe saved file is invalid. Returning to main menu.\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

# saved file building pool will contain one invalid building type of HEE
Test Loading an invalid saved file where the buildings in the building pool are invalid building types
    Create File     ${saved_file_path}    16\nBCH,SHP,HWY,FAC,HEE\nBCH,HSE,HWY,HWY\nFAC,FAC,FAC,HSE\nHWY,SHP,HSE,HWY\nFAC,HSE,BCH,?
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_6}       ${buildings_6}      ${locations_6}      ${bldgChoicesList_6}    ${lb_names_6}       ${board_size_list_6}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nThe saved file is invalid. Returning to main menu.\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

# saved file board will contain a MON building even though its building pool are of BCH, SHP, HWY, FAC, HSE only
Test Loading an invalid saved file where the buildings placed on the board do not belong in the building pool
    Create File     ${saved_file_path}    16\nBCH,SHP,HWY,FAC,HSE\nMON,HSE,HWY,HWY\nFAC,FAC,FAC,HSE\nHWY,SHP,HSE,HWY\nFAC,HSE,BCH,?
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_6}       ${buildings_6}      ${locations_6}      ${bldgChoicesList_6}    ${lb_names_6}       ${board_size_list_6}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nThe saved file is invalid. Returning to main menu.\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

# user currently does not have a saved file (SimpCityBoard.csv does not exist)
Test Loading a saved file that does not exist
    Remove File     ${saved_file_path}
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_7}       ${buildings_7}      ${locations_7}      ${bldgChoicesList_7}    ${lb_names_7}       ${board_size_list_7}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nNo saved game file found! Starting new game...\n\nPlease select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n\n\nTurn 1\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a HSE\n2. Build a HSE\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

Test Entering an invalid option in the play menu
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_8}       ${buildings_8}      ${locations_8}      ${bldgChoicesList_8}    ${lb_names_8}       ${board_size_list_8}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nPlease select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n\n\nTurn 1\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a HSE\n2. Build a HSE\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\nInvalid option! Please try again!\n\nTurn 1\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a HSE\n2. Build a HSE\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

# first location input will be empty string (""), second input will be a location input that is not of appropriate length (""),
# third input will be an invalid location input ("C9"), last input will be a valid location ("A1")
Test Entering a series of invalid input for location when placing a building with no prior buldings placed
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_9}       ${buildings_9}      ${locations_9}      ${bldgChoicesList_9}    ${lb_names_9}       ${board_size_list_9}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nPlease select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n\n\nTurn 1\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a HSE\n2. Build a HSE\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\nInvalid input! Please enter in a valid location coordinate!\nInvalid input! Please enter in a valid location coordinate!\nInvalid location coordinates! Please enter in a valid location coordinate!\n\nTurn 2\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1| HSE |${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a HSE\n2. Build a FAC\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

Test Entering a series of invalid input for location when placing a building with a building placed currently
    Create File     ${saved_file_path}    2\nBCH,SHP,HWY,FAC,HSE\n?,?,?,?\n?,FAC,?,?\n?,?,?,?\n?,?,?,?
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_10}       ${buildings_10}      ${locations_10}      ${bldgChoicesList_10}    ${lb_names_10}       ${board_size_list_10}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\n\nTurn 2\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 2|${SPACE * 5}| FAC |${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a HSE\n2. Build a HSE\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\nInvalid placement! There is already an existing building at B2. Please enter in a different location!\nYou must build next to an existing building.\nYou must build next to an existing building.\n\nTurn 3\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1|${SPACE * 5}| HSE |${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 2|${SPACE * 5}| FAC |${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a HSE\n2. Build a FAC\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

Test Placing a building three times
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_11}       ${buildings_11}      ${locations_11}      ${bldgChoicesList_11}    ${lb_names_11}       ${board_size_list_11}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nPlease select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n\n\nTurn 1\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a HSE\n2. Build a HSE\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\n\nTurn 2\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 2|${SPACE * 5}| HSE |${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a MON\n2. Build a FAC\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\n\nTurn 3\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 2| FAC | HSE |${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a PRK\n2. Build a MON\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\n\nTurn 4\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1|${SPACE * 5}| PRK |${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 2| FAC | HSE |${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a SHP\n2. Build a SHP\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

# see remaining buildings option will be triggered at the start
# user will proceed to place 2 buildings
# see remaining buildings option will then be triggered again
Test See remaining buildings
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_12}       ${buildings_12}      ${locations_12}      ${bldgChoicesList_12}    ${lb_names_12}       ${board_size_list_12}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nPlease select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n\n\nTurn 1\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a HSE\n2. Build a HSE\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\n\nBuilding${SPACE * 10}Remaining\n--------${SPACE * 10}---------\nHSE${SPACE * 15}6\nFAC${SPACE * 15}8\nMON${SPACE * 15}8\nPRK${SPACE * 15}8\nSHP${SPACE * 15}8\n\nTurn 1\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a HSE\n2. Build a HSE\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\n\nTurn 2\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 2|${SPACE * 5}| HSE |${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a MON\n2. Build a FAC\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\n\nTurn 3\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 2| MON | HSE |${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a PRK\n2. Build a MON\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\n\nBuilding${SPACE * 10}Remaining\n--------${SPACE * 10}---------\nHSE${SPACE * 15}7\nFAC${SPACE * 15}8\nMON${SPACE * 15}6\nPRK${SPACE * 15}7\nSHP${SPACE * 15}8\n\nTurn 3\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 2| MON | HSE |${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a PRK\n2. Build a MON\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

# user firstly loads a saved game from the saved file
# user will proceed to check the current score
# user will proceed to place a FAC at B2
# user will proceed to check the current score once more
Test See current score
    Create File     ${saved_file_path}    15\nBCH,SHP,HWY,FAC,HSE\nBCH,HSE,HWY,HWY\nFAC,?,FAC,HSE\nHWY,SHP,HSE,HWY\nFAC,HSE,BCH,?
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_13}       ${buildings_13}      ${locations_13}      ${bldgChoicesList_13}    ${lb_names_13}       ${board_size_list_13}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\n\nTurn 15\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1| BCH | HSE | HWY | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 2| FAC |${SPACE * 5}| FAC | HSE |\n${SPACE * 2}+-----+-----+-----+-----+\n 3| HWY | SHP | HSE | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 4| FAC | HSE | BCH |${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a HSE\n2. Build a FAC\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\n\nBCH: 3 + 1 = 4\nSHP: 2 = 2\nHWY: 2 + 2 + 1 + 1 = 6\nFAC: 3 + 3 + 3 = 9\nHSE: 2 + 1 + 1 + 1 = 5\nTotal score: 26\n\nTurn 15\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1| BCH | HSE | HWY | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 2| FAC |${SPACE * 5}| FAC | HSE |\n${SPACE * 2}+-----+-----+-----+-----+\n 3| HWY | SHP | HSE | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 4| FAC | HSE | BCH |${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a HSE\n2. Build a FAC\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\n\nTurn 16\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1| BCH | HSE | HWY | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 2| FAC | FAC | FAC | HSE |\n${SPACE * 2}+-----+-----+-----+-----+\n 3| HWY | SHP | HSE | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 4| FAC | HSE | BCH |${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a BCH\n2. Build a FAC\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\n\nBCH: 3 + 1 = 4\nSHP: 3 = 3\nHWY: 2 + 2 + 1 + 1 = 6\nFAC: 4 + 4 + 4 + 4 = 16\nHSE: 1 + 1 + 1 + 1 = 4\nTotal score: 33\n\nTurn 16\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1| BCH | HSE | HWY | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 2| FAC | FAC | FAC | HSE |\n${SPACE * 2}+-----+-----+-----+-----+\n 3| HWY | SHP | HSE | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 4| FAC | HSE | BCH |${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a BCH\n2. Build a FAC\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

Test Save game
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_14}       ${buildings_14}      ${locations_14}      ${bldgChoicesList_14}    ${lb_names_14}       ${board_size_list_14}
    ${file_content}     Get File    ${saved_file_path}    encoding=UTF-8
    Should Be Equal     ${file_content}     3\nBCH,SHP,HWY,FAC,HSE\n?,?,?,?\nFAC,HSE,?,?\n?,?,?,?\n?,?,?,?
    Should Be Equal     ${result.stdout}     Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nPlease select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n\n\nTurn 1\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a HSE\n2. Build a FAC\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\n\nTurn 2\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 2|${SPACE * 5}| HSE |${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a BCH\n2. Build a FAC\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\n\nTurn 3\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 2| FAC | HSE |${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a SHP\n2. Build a SHP\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\n\nGame saved!\n\nTurn 3\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 2| FAC | HSE |${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n 4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a SHP\n2. Build a SHP\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

# user's score does not match the 10th player in the high score
# user will score 34, whereas the 10th player in the leaderboard has a score of 40
Test Check game end without user reaching top 10 in highscore case 1
    Create File     ${saved_file_path}    16\nBCH,SHP,HWY,FAC,HSE\nBCH,HSE,HWY,HWY\nFAC,FAC,FAC,HSE\nHWY,SHP,HSE,HWY\nFAC,HSE,BCH,?
    Create File     ${leaderboard_file_path}    \n\n\n\n\n\n\n\n\n\n\n\n\n\n\njustin:48,juistin:48,test2:48,test:48,test:48,test9:48,test9:48,droog:48,prawg:48,reeeee1:40\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_15}       ${buildings_15}      ${locations_15}      ${bldgChoicesList_15}    ${lb_names_15}       ${board_size_list_15}
    ${file_content}     Get File    ${leaderboard_file_path}    encoding=UTF-8
    Should Be Equal     ${result.stdout}     Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\n\nTurn 16\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1| BCH | HSE | HWY | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 2| FAC | FAC | FAC | HSE |\n${SPACE * 2}+-----+-----+-----+-----+\n 3| HWY | SHP | HSE | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 4| FAC | HSE | BCH |${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a HWY\n2. Build a FAC\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\n\nFinal layout of Simp City:\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1| BCH | HSE | HWY | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 2| FAC | FAC | FAC | HSE |\n${SPACE * 2}+-----+-----+-----+-----+\n 3| HWY | SHP | HSE | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 4| FAC | HSE | BCH | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\nBCH: 3 + 1 = 4\nSHP: 3 = 3\nHWY: 2 + 2 + 1 + 1 + 1 = 7\nFAC: 4 + 4 + 4 + 4 = 16\nHSE: 1 + 1 + 1 + 1 = 4\nTotal score: 34\n\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...
    Should Be Equal     ${file_content}     \n\n\n\n\n\n\n\n\n\n\n\n\n\n\njustin:48,juistin:48,test2:48,test:48,test:48,test9:48,test9:48,droog:48,prawg:48,reeeee1:40\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n

# user's score matches the 10th player in the high score
# the user will score 34, similarly the 10th player in the leaderboard has a score of 34
Test Check game end without user reaching top 10 in highscore case 2
    Create File     ${saved_file_path}    16\nBCH,SHP,HWY,FAC,HSE\nBCH,HSE,HWY,HWY\nFAC,FAC,FAC,HSE\nHWY,SHP,HSE,HWY\nFAC,HSE,BCH,?
    Create File     ${leaderboard_file_path}    \n\n\n\n\n\n\n\n\n\n\n\n\n\n\njustin:48,juistin:48,test2:48,test:48,test:48,test9:48,test9:48,droog:48,prawg:48,reeeee1:34\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_15}       ${buildings_15}      ${locations_15}      ${bldgChoicesList_15}    ${lb_names_15}       ${board_size_list_15}
    ${file_content}     Get File    ${leaderboard_file_path}    encoding=UTF-8
    Should Be Equal     ${result.stdout}     Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\n\nTurn 16\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1| BCH | HSE | HWY | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 2| FAC | FAC | FAC | HSE |\n${SPACE * 2}+-----+-----+-----+-----+\n 3| HWY | SHP | HSE | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 4| FAC | HSE | BCH |${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a HWY\n2. Build a FAC\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\n\nFinal layout of Simp City:\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1| BCH | HSE | HWY | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 2| FAC | FAC | FAC | HSE |\n${SPACE * 2}+-----+-----+-----+-----+\n 3| HWY | SHP | HSE | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 4| FAC | HSE | BCH | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\nBCH: 3 + 1 = 4\nSHP: 3 = 3\nHWY: 2 + 2 + 1 + 1 + 1 = 7\nFAC: 4 + 4 + 4 + 4 = 16\nHSE: 1 + 1 + 1 + 1 = 4\nTotal score: 34\n\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...
    Should Be Equal     ${file_content}     \n\n\n\n\n\n\n\n\n\n\n\n\n\n\njustin:48,juistin:48,test2:48,test:48,test:48,test9:48,test9:48,droog:48,prawg:48,reeeee1:34\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n

# user's score will be higher than the 10th player in the high score, coming in 10th place
# the user will score 34, whereas the 10th player in the leaderboard will have a score of 33
# also tests the name validation which only allows for a max of 20 characters and does not contain any punctuation
Test Check game end with user reaching top 10 in highscore case 1
    Create File     ${saved_file_path}    16\nBCH,SHP,HWY,FAC,HSE\nBCH,HSE,HWY,HWY\nFAC,FAC,FAC,HSE\nHWY,SHP,HSE,HWY\nFAC,HSE,BCH,?
    Create File     ${leaderboard_file_path}    \n\n\n\n\n\n\n\n\n\n\n\n\n\n\njustin:48,juistin:48,test2:48,test:48,test:48,test9:48,test9:48,droog:48,prawg:48,reeeee1:33\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_16}       ${buildings_16}      ${locations_16}      ${bldgChoicesList_16}    ${lb_names_16}       ${board_size_list_16}
    ${file_content}     Get File    ${leaderboard_file_path}    encoding=UTF-8
    Should Be Equal     ${result.stdout}     Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\n\nTurn 16\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1| BCH | HSE | HWY | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 2| FAC | FAC | FAC | HSE |\n${SPACE * 2}+-----+-----+-----+-----+\n 3| HWY | SHP | HSE | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 4| FAC | HSE | BCH |${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a HWY\n2. Build a FAC\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\n\nFinal layout of Simp City:\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1| BCH | HSE | HWY | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 2| FAC | FAC | FAC | HSE |\n${SPACE * 2}+-----+-----+-----+-----+\n 3| HWY | SHP | HSE | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 4| FAC | HSE | BCH | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\nBCH: 3 + 1 = 4\nSHP: 3 = 3\nHWY: 2 + 2 + 1 + 1 + 1 = 7\nFAC: 4 + 4 + 4 + 4 = 16\nHSE: 1 + 1 + 1 + 1 = 4\nTotal score: 34\nCongratulations! You made the high score board at position 10\nThe name you have entered is invalid. Please try again!\nThe name you have entered is invalid. Please try again!\nThe name you have entered is invalid. Please try again!\nThe name you have entered is invalid. Please try again!\n\n--------- HIGH SCORES ---------\nPos Player${SPACE * 16}Score\n--- ------${SPACE * 16}-----\n 1. justin${SPACE * 19}48\n 2. juistin${SPACE * 18}48\n 3. test2${SPACE * 20}48\n 4. test${SPACE * 21}48\n 5. test${SPACE * 21}48\n 6. test9${SPACE * 20}48\n 7. test9${SPACE * 20}48\n 8. droog${SPACE * 20}48\n 9. prawg${SPACE * 20}48\n10. abcdabcdabcdabcdabcd${SPACE * 5}34\n-------------------------------\n\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...
    Should Be Equal     ${file_content}     \n\n\n\n\n\n\n\n\n\n\n\n\n\n\njustin:48,juistin:48,test2:48,test:48,test:48,test9:48,test9:48,droog:48,prawg:48,abcdabcdabcdabcdabcd:34\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n

# user's score will be higher than the 3rd player in the high score, coming in 3rd place
# the user will score 34, whereas the 3rd player in the leaderboard will have a score of 33
Test Check game end with user reaching top 10 in highscore case 2
    Create File     ${saved_file_path}    16\nBCH,SHP,HWY,FAC,HSE\nBCH,HSE,HWY,HWY\nFAC,FAC,FAC,HSE\nHWY,SHP,HSE,HWY\nFAC,HSE,BCH,?
    Create File     ${leaderboard_file_path}    \n\n\n\n\n\n\n\n\n\n\n\n\n\n\njustin:48,juistin:48,reeeee1:33,r10:30,reeeee2:29\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_17}       ${buildings_17}      ${locations_17}      ${bldgChoicesList_17}    ${lb_names_17}       ${board_size_list_17}
    ${file_content}     Get File    ${leaderboard_file_path}    encoding=UTF-8
    Should Be Equal     ${result.stdout}     Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\n\nTurn 16\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1| BCH | HSE | HWY | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 2| FAC | FAC | FAC | HSE |\n${SPACE * 2}+-----+-----+-----+-----+\n 3| HWY | SHP | HSE | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 4| FAC | HSE | BCH |${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a HWY\n2. Build a FAC\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\n\nFinal layout of Simp City:\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1| BCH | HSE | HWY | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 2| FAC | FAC | FAC | HSE |\n${SPACE * 2}+-----+-----+-----+-----+\n 3| HWY | SHP | HSE | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 4| FAC | HSE | BCH | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\nBCH: 3 + 1 = 4\nSHP: 3 = 3\nHWY: 2 + 2 + 1 + 1 + 1 = 7\nFAC: 4 + 4 + 4 + 4 = 16\nHSE: 1 + 1 + 1 + 1 = 4\nTotal score: 34\nCongratulations! You made the high score board at position 3\n\n--------- HIGH SCORES ---------\nPos Player${SPACE * 16}Score\n--- ------${SPACE * 16}-----\n 1. justin${SPACE * 19}48\n 2. juistin${SPACE * 18}48\n 3. peter${SPACE * 20}34\n 4. reeeee1${SPACE * 18}33\n 5. r10${SPACE * 22}30\n 6. reeeee2${SPACE * 18}29\n-------------------------------\n\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...
    Should Be Equal     ${file_content}     \n\n\n\n\n\n\n\n\n\n\n\n\n\n\njustin:48,juistin:48,peter:34,reeeee1:33,r10:30,reeeee2:29\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n

Test View high scores for an area size with no high scores currently
    Create File     ${leaderboard_file_path}    \n\n\n\n\n\n\n\n\n\n\n\n\n\n\njustin:48,juistin:48,reeeee1:33,r10:30,reeeee2:29\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_18}       ${buildings_18}      ${locations_18}      ${bldgChoicesList_18}    ${lb_names_18}       ${board_size_list_18}
    Should Be Equal     ${result.stdout}     Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nInvalid input. Please try again...(e.g. 5,8)\nInvalid input. Please try again...(e.g. 5,8)\nInvalid input. Please try again...(e.g. 5,8)\nInvalid input. Board size cannot have height/length lesser than 0. Please try again...(e.g. 5,8)\nInvalid input. Board size cannot have height/length lesser than 0. Please try again...(e.g. 5,8)\nArea of the board cannot be more than 40. Please try again...\n\n--------- HIGH SCORES ---------\nPos Player${SPACE * 16}Score\n--- ------${SPACE * 16}-----\nNo high scores currently!\n-------------------------------\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

Test View high scores for an area size with high scores
    Create File     ${leaderboard_file_path}    \n\n\n\n\n\n\n\n\n\n\n\n\n\n\njustin:48,juistin:48,reeeee1:33,r10:30,reeeee2:29\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_19}       ${buildings_19}      ${locations_19}      ${bldgChoicesList_19}    ${lb_names_19}       ${board_size_list_19}
    Should Be Equal     ${result.stdout}     Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\n\n--------- HIGH SCORES ---------\nPos Player${SPACE * 16}Score\n--- ------${SPACE * 16}-----\n 1. justin${SPACE * 19}48\n 2. juistin${SPACE * 18}48\n 3. reeeee1${SPACE * 18}33\n 4. r10${SPACE * 22}30\n 5. reeeee2${SPACE * 18}29\n-------------------------------\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

# Placing a building
# ${result} = Run Process   python      start_menu.py       ${-1}     ${True}    ${options_3}       ${buildings_3}         ${locations_3}
#     [Documentation]         LOG 1:1  W          	Welcome, mayor of Simps City!\n----------------------------\n1. Start new game\n2. Load saved game\n\n0. Exit\n\nTurn 1\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n${SPACE}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n${SPACE}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n${SPACE}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n${SPACE}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a HSE\n2. Build a HSE\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\n\nTurn 2\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n${SPACE}1| HSE |${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n${SPACE}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n${SPACE}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n${SPACE}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a HSE\n2. Build a BCH\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to ma 