*** Variables ***
${saved_file_path}    ./SimpCityBoard.csv
${leaderboard_file_path}    ./SimpCityLeaderboard.csv


#Test for Play Menu function integrate with check_remaining_buildings
${options_1}    1,3,0,0
${buildings_1}      HSE,FAC,BCH,FAC,SHP,SHP
${locations_1}      None
${bldgChoicesList_1}    BCH,SHP,HWY,FAC,HSE
${lb_names_1}     None
${board_size_list_1}    None
${board_choices_1}    n
${board_sizes_1}    None
#Test for Play Menu function integrate with view_score
${options_2}    1,4,1,4,0,0
${buildings_2}      HSE,FAC,BCH,FAC,SHP,SHP
${locations_2}      D4
${bldgChoicesList_2}    BCH,SHP,HWY,FAC,HSE
${lb_names_2}     None
${board_size_list_2}    None
${board_choices_2}    n
${board_sizes_2}    None
#Test for Play Menu function integrate with save_game (Save and load file)
${options_3}    1,1,4,0,2,0,0
${buildings_3}      FAC,HSE,HWY,HWY 
${locations_3}      D4
${bldgChoicesList_3}    BCH,SHP,HWY,FAC,HSE
${lb_names_3}     None
${board_size_list_3}    None
${board_choices_3}    n
${board_sizes_3}    None
#Test for final_layout function integrate with check_game_end , display_board view_score
${options_4}    2,1,0
${buildings_4}      FAC,HSE,SHP,SHP 
${locations_4}      D4
${bldgChoicesList_4}    BCH,SHP,HWY,FAC,HSE
${lb_names_4}     test
${board_size_list_4}    None
${board_choices_4}    n
${board_sizes_4}    None
#Test for final_layout function integrate with save_high_score and view_high_score
${options_5}    3,2,1,3,0
${buildings_5}      FAC,HSE,SHP,SHP 
${locations_5}      D4
${bldgChoicesList_5}    BCH,SHP,HWY,FAC,HSE
${lb_names_5}     highscoretest
${board_size_list_5}    4,4.4,4
${board_choices_5}    n
${board_sizes_5}    None
#Test for start_game function integrate with pick_buildings
${options_6}    1,0,0
${buildings_6}      FAC,FAC
${locations_6}      None
${bldgChoicesList_6}    BCH,SHP,HWY,FAC,HSE
${lb_names_6}     None
${board_size_list_6}    None
${board_choices_6}    n
${board_sizes_6}    None
#Test for start_game function integrate with place_buildings
${options_7}    1,1,0,0
${buildings_7}      FAC,HSE,SHP,SHP 
${locations_7}      A1
${bldgChoicesList_7}    BCH,SHP,HWY,FAC,HSE
${lb_names_7}     None
${board_size_list_7}    None
${board_choices_7}    n
${board_sizes_7}    None
#Test for Start_game with custom board dimensions
${options_8}    1,0,0
${buildings_8}      FAC,HSE,SHP,SHP 
${locations_8}      None
${bldgChoicesList_8}    BCH,SHP,HWY,FAC,HSE
${lb_names_8}     None
${board_size_list_8}    None
${board_choices_8}    y
${board_sizes_8}    1,3
#Test for Start_game with validation of custom board dimensions
${options_9}    1,0,0
${buildings_9}      FAC,HSE,SHP,SHP 
${locations_9}      None
${bldgChoicesList_9}    BCH,SHP,HWY,FAC,HSE
${lb_names_9}     None
${board_size_list_9}    None
${board_choices_9}    test,y
${board_sizes_9}    1,3
#Test for Start_game with default board dimensions
${options_10}    1,0,0
${buildings_10}      FAC,HSE,SHP,SHP 
${locations_10}      None
${bldgChoicesList_10}    BCH,SHP,HWY,FAC,HSE
${lb_names_10}     None
${board_size_list_10}    None
${board_choices_10}    n
${board_sizes_10}    1,3
#Test for Start_game with validation of default board dimensions
${options_11}    1,0,0
${buildings_11}      FAC,HSE,SHP,SHP 
${locations_11}      None
${bldgChoicesList_11}    BCH,SHP,HWY,FAC,HSE
${lb_names_11}     None
${board_size_list_11}    None
${board_choices_11}    test,n
${board_sizes_11}    1,3
#Test for Start_game to show empty highscore board with validation
${options_12}    3,0,0
${buildings_12}      None
${locations_12}      None
${bldgChoicesList_12}    None
${lb_names_12}     None
${board_size_list_12}    i,t.7,5
${board_choices_12}    None
${board_sizes_12}    None
#Test for Start_game function integrate with pick_buildings with validation
${options_13}    1,0,0
${buildings_13}      FAC,HSE,SHP,SHP
${locations_13}      None
${bldgChoicesList_13}    test,test,test,test,test.BCH,SHP,HWY,FAC,HSE
${lb_names_13}     None
${board_size_list_13}    None
${board_choices_13}    n
${board_sizes_13}    None
#Test for Start_game with invalid save file
${options_14}    2,0,0
${buildings_14}      None
${locations_14}      None
${bldgChoicesList_14}    None
${lb_names_14}     None
${board_size_list_14}    None
${board_choices_14}    n
${board_sizes_14}    None

*** Settings ***
Library     Dialogs
Library     BuiltIn
Library     ./start_menu.py
Library     Process
Library     OperatingSystem

*** Test Cases ***
Test for Play Menu function integrate with check_remaining_buildings
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_1}       ${buildings_1}      ${locations_1}      ${bldgChoicesList_1}      ${lb_names_1}     ${board_size_list_1}      ${board_choices_1}      ${board_sizes_1}
    Should Be Equal     ${result.stdout}  	 Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nPlease select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n\n\nTurn 1${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}8\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}8\n${SPACE * 2}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}7\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}7\n\n1. Build a HSE\n2. Build a FAC\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nBCH: 0\nSHP: 0\nHWY: 0\nFAC: 0\nHSE: 0\nTotal score: 0\n\nTurn 1${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}8\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}8\n${SPACE * 2}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}7\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}7\n\n1. Build a HSE\n2. Build a FAC\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

Test for Play Menu function integrate with view_score
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_2}       ${buildings_2}      ${locations_2}      ${bldgChoicesList_2}      ${lb_names_2}     ${board_size_list_2}      ${board_choices_2}      ${board_sizes_2}
    Should Be Equal     ${result.stdout}     Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nPlease select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n\n\nTurn 1${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}8\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}8\n${SPACE * 2}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}7\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}7\n\n1. Build a HSE\n2. Build a FAC\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nGame saved!\n\nTurn 1${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}8\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}8\n${SPACE * 2}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}7\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}7\n\n1. Build a HSE\n2. Build a FAC\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nTurn 2${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}7\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}8\n${SPACE * 2}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}7\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}| HSE |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}7\n\n1. Build a BCH\n2. Build a FAC\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nGame saved!\n\nTurn 2${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}7\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}8\n${SPACE * 2}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}7\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}| HSE |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}7\n\n1. Build a BCH\n2. Build a FAC\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

Test for Play Menu function integrate with save_game (Save and load file)
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_3}       ${buildings_3}      ${locations_3}      ${bldgChoicesList_3}      ${lb_names_3}     ${board_size_list_3}     ${board_choices_3}      ${board_sizes_3}
	Should Be Equal     ${result.stdout}	 Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nPlease select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n\n\nTurn 1${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}8\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}8\n${SPACE * 2}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}7\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}7\n\n1. Build a FAC\n2. Build a HSE\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nTurn 2${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}8\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}8\n${SPACE * 2}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}6\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}7\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}| FAC |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}8\n\n1. Build a HWY\n2. Build a HWY\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nGame saved!\n\nTurn 2${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}8\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}8\n${SPACE * 2}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}6\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}7\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}| FAC |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}8\n\n1. Build a HWY\n2. Build a HWY\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\n\nTurn 2${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}8\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}8\n${SPACE * 2}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}6\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}7\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}| FAC |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}8\n\n1. Build a HWY\n2. Build a HWY\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...
Test for final_layout function integrate with check_game_end, displayboard and view_score
    Create File     ${saved_file_path}    16\nBCH,SHP,HWY,FAC,HSE\nBCH,HSE,HWY,HWY\nFAC,FAC,FAC,HSE\nHWY,SHP,HSE,HWY\nFAC,HSE,BCH,?
    Create File     ${leaderboard_file_path}    \n\n\n\n\n\n\n\n\n\n\n\n\n\n\njustin:48,juistin:48,test2:48,test:48,test:48,test9:48,test9:48,droog:48,prawg:48,reeeee1:34\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_4}       ${buildings_4}      ${locations_4}      ${bldgChoicesList_4}      ${lb_names_4}     ${board_size_list_4}     ${board_choices_4}      ${board_sizes_4}
    Should Be Equal     ${result.stdout}     Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\n\nTurn 16${SPACE * 26}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}6\n${SPACE * 2}1| BCH | HSE | HWY | HWY |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}7\n${SPACE * 2}2| FAC | FAC | FAC | HSE |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}4\n${SPACE * 2}3| HWY | SHP | HSE | HWY |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}3\n${SPACE * 2}4| FAC | HSE | BCH |${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}3\n\n1. Build a FAC\n2. Build a HSE\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nFinal layout of Simp City:\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D\n${SPACE * 3}+-----+-----+-----+-----+\n${SPACE * 2}1| BCH | HSE | HWY | HWY |\n${SPACE * 3}+-----+-----+-----+-----+\n${SPACE * 2}2| FAC | FAC | FAC | HSE |\n${SPACE * 3}+-----+-----+-----+-----+\n${SPACE * 2}3| HWY | SHP | HSE | HWY |\n${SPACE * 3}+-----+-----+-----+-----+\n${SPACE * 2}4| FAC | HSE | BCH | FAC |\n${SPACE * 3}+-----+-----+-----+-----+\nBCH: 3 + 1 = 4\nSHP: 3 = 3\nHWY: 2 + 2 + 1 + 1 = 6\nFAC: 4 + 4 + 4 + 4 + 1 = 17\nHSE: 1 + 1 + 1 + 1 = 4\nTotal score: 34\n\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

Test for final_layout function integrate with save_high_score and view_high_score
    Create File     ${saved_file_path}    16\nBCH,SHP,HWY,FAC,HSE\nBCH,HSE,HWY,HWY\nFAC,FAC,FAC,HSE\nHWY,SHP,HSE,HWY\nFAC,HSE,BCH,?
    Create File     ${leaderboard_file_path}    \n\n\n\n\n\n\n\n\n\n\n\n\n\n\njustin:48,juistin:48,test2:48,test:48,test:48,test9:48,test9:48,droog:48,prawg:48,reeeee1:31\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_5}       ${buildings_5}      ${locations_5}      ${bldgChoicesList_5}      ${lb_names_5}     ${board_size_list_5}     ${board_choices_5}      ${board_sizes_5}
    Should Be Equal     ${result.stdout}     Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\n\n--------- HIGH SCORES ---------\nPos Player${SPACE * 16}Score\n--- ------${SPACE * 16}-----\n 1. justin${SPACE * 19}48\n 2. juistin${SPACE * 18}48\n 3. test2${SPACE * 20}48\n 4. test${SPACE * 21}48\n 5. test${SPACE * 21}48\n 6. test9${SPACE * 20}48\n 7. test9${SPACE * 20}48\n 8. droog${SPACE * 20}48\n 9. prawg${SPACE * 20}48\n10. reeeee1${SPACE * 18}31\n-------------------------------\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\n\nTurn 16${SPACE * 26}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}6\n${SPACE *2}1| BCH | HSE | HWY | HWY |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}7\n${SPACE *2}2| FAC | FAC | FAC | HSE |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}4\n${SPACE *2}3| HWY | SHP | HSE | HWY |\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}3\n${SPACE *2}4| FAC | HSE | BCH |${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}3\n\n1. Build a FAC\n2. Build a HSE\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nFinal layout of Simp City:\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D\n${SPACE * 3}+-----+-----+-----+-----+\n${SPACE * 2}1| BCH | HSE | HWY | HWY |\n${SPACE * 3}+-----+-----+-----+-----+\n${SPACE * 2}2| FAC | FAC | FAC | HSE |\n${SPACE * 3}+-----+-----+-----+-----+\n${SPACE * 2}3| HWY | SHP | HSE | HWY |\n${SPACE * 3}+-----+-----+-----+-----+\n${SPACE * 2}4| FAC | HSE | BCH | FAC |\n${SPACE * 3}+-----+-----+-----+-----+\nBCH: 3 + 1 = 4\nSHP: 3 = 3\nHWY: 2 + 2 + 1 + 1 = 6\nFAC: 4 + 4 + 4 + 4 + 1 = 17\nHSE: 1 + 1 + 1 + 1 = 4\nTotal score: 34\nCongratulations! You made the high score board at position 10\n\n--------- HIGH SCORES ---------\nPos Player${SPACE * 16}Score\n--- ------${SPACE * 16}-----\n 1. justin${SPACE * 19}48\n 2. juistin${SPACE * 18}48\n 3. test2${SPACE * 20}48\n 4. test${SPACE * 21}48\n 5. test${SPACE * 21}48\n 6. test9${SPACE * 20}48\n 7. test9${SPACE * 20}48\n 8. droog${SPACE * 20}48\n 9. prawg${SPACE * 20}48\n10. highscoretest${SPACE * 12}34\n-------------------------------\n\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\n\n--------- HIGH SCORES ---------\nPos Player${SPACE * 16}Score\n--- ------${SPACE * 16}-----\n 1. justin${SPACE * 19}48\n 2. juistin${SPACE * 18}48\n 3. test2${SPACE * 20}48\n 4. test${SPACE * 21}48\n 5. test${SPACE * 21}48\n 6. test9${SPACE * 20}48\n 7. test9${SPACE * 20}48\n 8. droog${SPACE * 20}48\n 9. prawg${SPACE * 20}48\n10. highscoretest${SPACE * 12}34\n-------------------------------\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...
Test for Start_game to show empty highscore board with validation
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_12}       ${buildings_12}      ${locations_12}      ${bldgChoicesList_12}      ${lb_names_12}     ${board_size_list_12}    ${board_choices_12}      ${board_sizes_12}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nInvalid input. Please try again...(e.g. 5,8)\n\n--------- HIGH SCORES ---------\nPos Player${SPACE * 16}Score\n--- ------${SPACE * 16}-----\nNo high scores currently!\n-------------------------------\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...

Test for start_game function integrate with pick_buildings
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_6}       ${buildings_6}      ${locations_6}      ${bldgChoicesList_6}      ${lb_names_6}     ${board_size_list_6}     ${board_choices_6}      ${board_sizes_6}
    Should Be Equal     ${result.stdout}  	 Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nPlease select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n\n\nTurn 1${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}8\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}8\n${SPACE * 2}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}6\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}8\n\n1. Build a FAC\n2. Build a FAC\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...
Test for Start_game function integrate with pick_buildings with validation
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_13}       ${buildings_13}      ${locations_13}      ${bldgChoicesList_13}      ${lb_names_13}     ${board_size_list_13}    ${board_choices_13}      ${board_sizes_13}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nPlease select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n\nPlease only choose 1 of each type of building\n\nTurn 1${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}8\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}8\n${SPACE * 2}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}7\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}7\n\n1. Build a FAC\n2. Build a HSE\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...
Test for start_game function integrate with place_buildings
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_7}       ${buildings_7}      ${locations_7}      ${bldgChoicesList_7}      ${lb_names_7}     ${board_size_list_7}     ${board_choices_7}      ${board_sizes_7}
    Should Be Equal     ${result.stdout}  	 Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nPlease select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n\n\nTurn 1${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}8\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}8\n${SPACE * 2}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}7\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}7\n\n1. Build a FAC\n2. Build a HSE\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nTurn 2${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}8\n${SPACE * 2}1| FAC |${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}6\n${SPACE * 2}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}7\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}8\n\n1. Build a SHP\n2. Build a SHP\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...
Test for Start_game with custom board dimensions
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_8}       ${buildings_8}      ${locations_8}      ${bldgChoicesList_8}      ${lb_names_8}     ${board_size_list_8}    ${board_choices_8}      ${board_sizes_8}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nCustomizing your board size\n----------------------------------\nRequirements\n1) Max area size 40\n2)No. of columns <=26\n\nPlease select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n\n\nTurn 1${SPACE * 21}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+${SPACE * 5}BCH${SPACE * 5}${SPACE * 5}${SPACE * 5}8\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+${SPACE * 5}SHP${SPACE * 5}${SPACE * 5}${SPACE * 5}8\n\n${SPACE * 27}HWY${SPACE * 15}8\n\n${SPACE * 27}FAC${SPACE * 15}7\n\n${SPACE * 27}HSE${SPACE * 15}7\n\n1. Build a FAC\n2. Build a HSE\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...
Test for Start_game with validation of custom board dimensions
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_9}       ${buildings_9}      ${locations_9}      ${bldgChoicesList_9}      ${lb_names_9}     ${board_size_list_9}    ${board_choices_9}      ${board_sizes_9}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nInvalid input! Please enter in Y or N only.\nCustomizing your board size\n----------------------------------\nRequirements\n1) Max area size 40\n2)No. of columns <=26\n\nPlease select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n\n\nTurn 1${SPACE * 21}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+${SPACE * 5}BCH${SPACE * 5}${SPACE * 5}${SPACE * 5}8\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+${SPACE * 5}SHP${SPACE * 5}${SPACE * 5}${SPACE * 5}8\n\n${SPACE * 27}HWY${SPACE * 15}8\n\n${SPACE * 27}FAC${SPACE * 15}7\n\n${SPACE * 27}HSE${SPACE * 15}7\n\n1. Build a FAC\n2. Build a HSE\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...
Test for Start_game with default board dimensions
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_10}       ${buildings_10}      ${locations_10}      ${bldgChoicesList_10}      ${lb_names_10}     ${board_size_list_10}    ${board_choices_10}      ${board_sizes_10}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nPlease select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n\n\nTurn 1${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}8\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}8\n${SPACE * 2}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}7\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}7\n\n1. Build a FAC\n2. Build a HSE\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...
Test for Start_game with validation of default board dimensions
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_11}       ${buildings_11}      ${locations_11}      ${bldgChoicesList_11}      ${lb_names_11}     ${board_size_list_11}    ${board_choices_11}      ${board_sizes_11}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nInvalid input! Please enter in Y or N only.\nPlease select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n\n\nTurn 1${SPACE * 27}Building${SPACE * 10}Remaining\n${SPACE * 6}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 8}--------${SPACE * 10}---------\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}BCH${SPACE * 15}8\n${SPACE * 2}1|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}SHP${SPACE * 15}8\n${SPACE * 2}2|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HWY${SPACE * 15}8\n${SPACE * 2}3|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}FAC${SPACE * 15}7\n${SPACE * 2}4|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|${SPACE * 5}|\n${SPACE * 3}+-----+-----+-----+-----+${SPACE * 5}HSE${SPACE * 15}7\n\n1. Build a FAC\n2. Build a HSE\n3. See current score\n\n4. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...
Test for Start_game with invalid save file
    Create File     ${saved_file_path}    16\nBCH,HSE,HSE,HSE,HSE\nHSE,HSE,HWY,HWY\nFAC,FAC,FAC,HSE\nHWY,SHP,HSE,HWY\nFAC,HSE,BCH,?
    ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_14}       ${buildings_14}      ${locations_14}      ${bldgChoicesList_14}      ${lb_names_14}     ${board_size_list_14}    ${board_choices_14}      ${board_sizes_11}
    Should Be Equal     ${result.stdout}    Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nThe saved file is invalid. Returning to main menu.\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...
