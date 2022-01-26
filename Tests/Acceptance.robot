*** Variables ***
${saved_file_path}    ./SimpCityBoard.csv
${leaderboard_file_path}    ./SimpCityLeaderboard.csv
${ITERATION}    $(1)

#Test for Play Menu function calls check_remaining_buildings
${options_1}    -1,4,a,abc,!,?,@,testvalue,!@#@,-100,0
${buildings_1}       HWY,HSE 
${locations_1}       None
${bldgChoicesList_1}    BCH,SHP,HWY,FAC,HSE
${lb_names_1}     None
${board_size_list_1}    None
#Test for Play Menu function calls view_score
${options_2}    2,-1,%,a,abc,!?,0,0
${buildings_2}      FAC,HSE,SHP,SHP 
${locations_2}      D4
${bldgChoicesList_2}    BCH,SHP,HWY,FAC,HSE
${lb_names_2}     None
${board_size_list_2}    None
#Test for Play Menu function calls save_game
${options_3}    1,5,0,2,0,0
${buildings_3}      FAC,HSE 

${locations_3}      None
${bldgChoicesList_3}    BCH,SHP,HWY,FAC,HSE
${lb_names_3}     None
${board_size_list_3}    None
#Test for final_layout function calls for check_game_end , display_board view_score
${options_4}    2,1,0
${buildings_4}      FAC,HSE,SHP,SHP 
${locations_4}      D4
${bldgChoicesList_4}    BCH,SHP,HWY,FAC,HSE
${lb_names_4}     test
${board_size_list_4}    None
#Test for final_layout function calls for save_high_score and view_high_score
${options_5}    3,2,1,3,0
${buildings_5}      FAC,HSE,SHP,SHP 
${locations_5}      D4
${bldgChoicesList_5}    BCH,SHP,HWY,FAC,HSE
${lb_names_5}     highscoretest
${board_size_list_5}    4,4.4,4
#Test for start_game function calls for pick_buildings
${options_6}    1,0,0
${buildings_6}      FAC,FAC
${locations_6}      None
${bldgChoicesList_6}    BCH,SHP,HWY,FAC,HSE
${lb_names_6}     None
${board_size_list_6}    None
#Test for start_game function calls for place_buildings
${options_7}    1,1,0,0
${buildings_7}      FAC,HSE,SHP,SHP 
${locations_7}      A1
${bldgChoicesList_7}    BCH,SHP,HWY,FAC,HSE
${lb_names_7}     None
${board_size_list_7}    None
#Endurance Test
${index}    10
${robot}    test
${ITERATION}    ${1}
${Counter}   1
*** Settings ***
Library     Dialogs
Library     BuiltIn
Library     ./start_menu.py
Library     Process
Library     OperatingSystem
Library           String

*** Test Cases ***
#Endurance Test
   # FOR    ${INDEX}    IN RANGE    1    20
   #     Log    ${INDEX}
   #     ${RANDOM_STRING}=    Generate Random String    ${INDEX}
   #     ${result}   Run Process     python      start_menu.py       ${-1}     ${True}    ${options_1}       ${RANDOM_STRING}      ${locations_1}      ${bldgChoicesList_1}    ${lb_names_1}       ${board_size_list_1}
   #    IF Should Be Equal     ${result}      ${20}  
   #     Log    ${RANDOM_STRING}
   #     ${Counter}    Evaluate    ${Counter}+1
   #     Log    ${Counter}
   #     Log    ${RANDOM_STRING}
   #END
   # Should Be Equal     ${Counter}      ${20}

Test for Play menu 10 invalid options
        ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_1}       ${buildings_1}      ${locations_1}      ${bldgChoicesList_1}      ${lb_names_1}     ${board_size_list_1}
        Should Be Equal     ${result.stdout}  	 Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nInvalid option! Please try again!\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nInvalid option! Please try again!\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nInvalid option! Please try again!\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nInvalid option! Please try again!\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nInvalid option! Please try again!\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nInvalid option! Please try again!\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nInvalid option! Please try again!\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nInvalid option! Please try again!\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nInvalid option! Please try again!\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nInvalid option! Please try again!\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...
Test for Place buildings 10 invalid options
        ${result} =     Run Process     python      start_menu.py       ${-1}     ${True}    ${options_2}       ${buildings_2}      ${locations_2}      ${bldgChoicesList_2}      ${lb_names_2}     ${board_size_list_2}
        Should Be Equal     ${result.stdout}  	 Welcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\n\nTurn 16\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1| BCH | HSE | HWY | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 2| FAC | FAC | FAC | HSE |\n${SPACE * 2}+-----+-----+-----+-----+\n 3| HWY | SHP | HSE | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 4| FAC | HSE | BCH |${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a FAC\n2. Build a HSE\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\nInvalid option! Please try again!\n\nTurn 16\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1| BCH | HSE | HWY | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 2| FAC | FAC | FAC | HSE |\n${SPACE * 2}+-----+-----+-----+-----+\n 3| HWY | SHP | HSE | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 4| FAC | HSE | BCH |${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a FAC\n2. Build a HSE\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\nInvalid option! Please try again!\n\nTurn 16\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1| BCH | HSE | HWY | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 2| FAC | FAC | FAC | HSE |\n${SPACE * 2}+-----+-----+-----+-----+\n 3| HWY | SHP | HSE | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 4| FAC | HSE | BCH |${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a FAC\n2. Build a HSE\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\nInvalid option! Please try again!\n\nTurn 16\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1| BCH | HSE | HWY | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 2| FAC | FAC | FAC | HSE |\n${SPACE * 2}+-----+-----+-----+-----+\n 3| HWY | SHP | HSE | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 4| FAC | HSE | BCH |${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a FAC\n2. Build a HSE\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\nInvalid option! Please try again!\n\nTurn 16\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1| BCH | HSE | HWY | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 2| FAC | FAC | FAC | HSE |\n${SPACE * 2}+-----+-----+-----+-----+\n 3| HWY | SHP | HSE | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 4| FAC | HSE | BCH |${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a FAC\n2. Build a HSE\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\nInvalid option! Please try again!\n\nTurn 16\n${SPACE * 5}A${SPACE * 5}B${SPACE * 5}C${SPACE * 5}D${SPACE * 3}\n${SPACE * 2}+-----+-----+-----+-----+\n 1| BCH | HSE | HWY | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 2| FAC | FAC | FAC | HSE |\n${SPACE * 2}+-----+-----+-----+-----+\n 3| HWY | SHP | HSE | HWY |\n${SPACE * 2}+-----+-----+-----+-----+\n 4| FAC | HSE | BCH |${SPACE * 5}|\n${SPACE * 2}+-----+-----+-----+-----+\n1. Build a FAC\n2. Build a HSE\n3. See remaining buildings\n4. See current score\n\n5. Save game\n0. Exit to main menu\n\nWelcome, mayor of Simp City!\n----------------------------\n1. Start new game\n2. Load saved game\n3. Show high scores\n\n0. Exit\nExiting Simp City...