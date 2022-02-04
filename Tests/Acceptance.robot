*** Variables ***
${saved_file_path}    ./SimpCityBoard.csv
${leaderboard_file_path}    ./SimpCityLeaderboard.csv
${ITERATION}    $(1)

#Test for Play menu 10 invalid options
${options_1}    -1,4,a,abc,!,?,@,testvalue,!@#@,-100,0
${buildings_1}       HWY,HSE 
${locations_1}       None
${bldgChoicesList_1}    BCH,SHP,HWY,FAC,HSE
${lb_names_1}     None
${board_size_list_1}    None
${board_choices_1}    n
${board_sizes_1}    None
#Test for Place buildings 3 invalid options
${options_3}    1,0,0
${buildings_3}      FAC,HSE,SHP,SHP 
${locations_3}      None
${bldgChoicesList_3}    BCH,SHP,HWY,FAC,HSE
${lb_names_3}     None
${board_size_list_3}    None
${board_choices_3}    1,t,test,!,g,i,123,#@,testvalue,-1,n
${board_sizes_3}    None
#Test for Place buildings 3 invalid options
${options_2}    2,-1,%,a,0,0
${buildings_2}      FAC,HSE,SHP,SHP 
${locations_2}      D4
${bldgChoicesList_2}    BCH,SHP,HWY,FAC,HSE
${lb_names_2}     None
${board_size_list_2}    None
${board_choices_2}    n
${board_sizes_2}    None

*** Settings ***
Library     Dialogs
Library     BuiltIn
Library     ./start_menu.py
Library     Process
Library     OperatingSystem
Library           String

*** Test Cases ***

Test for Play menu 10 invalid options
        ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_1}       ${buildings_1}      ${locations_1}      ${bldgChoicesList_1}      ${lb_names_1}     ${board_size_list_1}        ${board_choices_1}      ${board_sizes_1}
        Should Be Equal     ${result.stdout}  	 Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nInvalid option! Please try again!\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nInvalid option! Please try again!\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nInvalid option! Please try again!\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nInvalid option! Please try again!\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nInvalid option! Please try again!\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nInvalid option! Please try again!\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nInvalid option! Please try again!\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nInvalid option! Please try again!\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nInvalid option! Please try again!\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nInvalid option! Please try again!\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...
Test for Place buildings 3 invalid options
        Create File     ${saved_file_path}    16\nBCH,SHP,HWY,FAC,HSE\nBCH,HSE,HWY,HWY\nFAC,FAC,FAC,HSE\nHWY,SHP,HSE,HWY\nFAC,HSE,BCH,?
        ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_2}       ${buildings_2}      ${locations_2}      ${bldgChoicesList_2}      ${lb_names_2}     ${board_size_list_2}        ${board_choices_2}      ${board_sizes_2}
        Should Be Equal     ${result.stdout}  	 Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\n\nTurn 16${SPACE * 26}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}6\n${SPACE * 2}1| BCH | HSE | HWY | HWY |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}7\n${SPACE * 2}2| FAC | FAC | FAC | HSE |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}4\n${SPACE * 2}3| HWY | SHP | HSE | HWY |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}3\n${SPACE * 2}4| FAC | HSE | BCH |${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}3\n\n1. Build a FAC\n2. Build a HSE\n3. See current score\n\n4. Save game\n0. Exit to main menu\nInvalid option! Please try again!\n\nTurn 16${SPACE * 26}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}6\n${SPACE * 2}1| BCH | HSE | HWY | HWY |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}7\n${SPACE * 2}2| FAC | FAC | FAC | HSE |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}4\n${SPACE * 2}3| HWY | SHP | HSE | HWY |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}3\n${SPACE * 2}4| FAC | HSE | BCH |${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}3\n\n1. Build a FAC\n2. Build a HSE\n3. See current score\n\n4. Save game\n0. Exit to main menu\nInvalid option! Please try again!\n\nTurn 16${SPACE * 26}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}6\n${SPACE * 2}1| BCH | HSE | HWY | HWY |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}7\n${SPACE * 2}2| FAC | FAC | FAC | HSE |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}4\n${SPACE * 2}3| HWY | SHP | HSE | HWY |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}3\n${SPACE * 2}4| FAC | HSE | BCH |${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}3\n\n1. Build a FAC\n2. Build a HSE\n3. See current score\n\n4. Save game\n0. Exit to main menu\nInvalid option! Please try again!\n\nTurn 16${SPACE * 26}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}6\n${SPACE * 2}1| BCH | HSE | HWY | HWY |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}7\n${SPACE * 2}2| FAC | FAC | FAC | HSE |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}4\n${SPACE * 2}3| HWY | SHP | HSE | HWY |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}3\n${SPACE * 2}4| FAC | HSE | BCH |${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}3\n\n1. Build a FAC\n2. Build a HSE\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...
Test for customise choice 10 invalid options
        ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_3}       ${buildings_3}      ${locations_3}      ${bldgChoicesList_3}      ${lb_names_3}     ${board_size_list_3}        ${board_choices_3}      ${board_sizes_3}
        Should Be Equal     ${result.stdout}  	 Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nInvalid input! Please enter in Y or N only.\nInvalid input! Please enter in Y or N only.\nInvalid input! Please enter in Y or N only.\nInvalid input! Please enter in Y or N only.\nInvalid input! Please enter in Y or N only.\nInvalid input! Please enter in Y or N only.\nInvalid input! Please enter in Y or N only.\nInvalid input! Please enter in Y or N only.\nInvalid input! Please enter in Y or N only.\nInvalid input! Please enter in Y or N only.\nPlease select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n\n\nTurn 1${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}8\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}8\n${SPACE * 2}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}7\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}7\n\n1. Build a FAC\n2. Build a HSE\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...
