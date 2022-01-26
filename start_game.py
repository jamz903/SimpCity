from generate_new_game_buildings import *
from pick_buildings import *
from play_menu import *
from display_board import *
from validate_saved_file import *
from final_layout import *
from check_game_end import *
import os

# function to start a game
# takes in a saved_game parameter with default value False
# if no parameters provided, means user selected option 1. Start new game
def start_game(saved_game = False, debug = False, options = [], buildings = [], locations = [], bldgChoicesList = [], lb_names = []):
    if debug:
        #for system tests
        options_list = ["1", "2", "3", "4", "5", "0"]

        building_types = ["BCH", "FAC", "HSE", "SHP", "HWY", "PRK", "MON"]
        building_choices = []
        selecting_building_pool = True
        buildings_list = [] #generate_new_game_buildings()
        
        # generates new board and set turn number to 1
        board = [["?","?","?","?"],
                 ["?","?","?","?"],
                 ["?","?","?","?"],
                 ["?","?","?","?"]]
        turn_num = 1

        # checks if saved_game is True or False
        if saved_game:
            # saved_game = False, user selected Option 2. Load saved game
            # filename of the saved game
            filename = "SimpCityBoard.csv"

            # checks if the file named e.g. SimpCityBoard.csv exists
            if os.path.exists(filename):
                board = []
                count = 0
                if validate_saved_file(filename):

                    # loops through each line in the .csv file
                    for i in open(filename):
                        i = i.strip("\n")

                        # checks if the current line is first line
                        # if is first line, retrieve the turn number, stored in the first line of the .csv file
                        if count == 0:
                            turn_num = int(i)
                            count += 1
                            continue
                        if count == 1:
                            i = i.split(",")
                            building_choices = i
                            count += 1
                            continue
                        # if not first line, split the line by ',' and append it to the board
                        row = i.split(",")
                        board.append(row)
                    buildings_list = generate_new_game_buildings(building_choices)
                    # as this is a saved game, need to remove buildings that are already built on the board (if any)
                    # loops through each space on the board and check if there is a building built
                    for i in range(len(board)):
                        for j in range(len(board[i])):
                            # checks if space is empty space or building, "?" - empty space, not "?" means is a building
                            if (board[i][j] != "?"):
                                # removes it from the building pool
                                buildings_list.remove(board[i][j])

                else:
                    #saved file is not valid
                    print("The saved file is invalid. Returning to main menu.\n")
                    return

            else:
                # saved file does not exists, start a new game for player
                print("No saved game file found! Starting new game...\n")
                saved_game = False
                
        if not saved_game:
            print("Please select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n")
            while (selecting_building_pool):
                building_choices = []
                #bldgChoices = input("Please enter your building pool here (i.e. HSE, FAC, MON, PRK, SHP): ")
                bldgChoices = bldgChoicesList[0]
                bldgChoicesList.pop(0)

                #validate the choices

                #remove any whitespace from the left or right of the string
                bldgChoices = bldgChoices.strip()

                #convert the strings to a list
                bldgChoices = bldgChoices.split(",")

                bldgChoices = list(map(str.strip, bldgChoices))

                #check if 5 buildings were chosen
                if(len(set(bldgChoices)) == len(bldgChoices)):

                    if(len(bldgChoices) == 5):
                        #check for valid building type input
                        for i in bldgChoices:
                            i = i.strip()
                            i = i.upper()
                            if i in building_types:
                                building_choices.append(i)

                                #if all the inputs pass x8 each of the choices and return the full list
                                if (len(building_choices) == 5):
                                    buildings_list = generate_new_game_buildings(building_choices)
                                    selecting_building_pool = False
                                    break
                                    
                            else: #if there is building type error
                                print("Invalid building type input")
                                break
                                
                    else: #re-prompts the user to enter 5 real buidlings
                        print("Please enter 5 building types")
                        continue
                else:#re-prompts the user to choose 5 unique buildings
                    print("Please only choose 1 of each type of building")
                    continue

        buildings = pick_buildings(buildings_list, debug, buildings)
        
        while True:
            #checks if the board is filled
            # if True, display final layout and computed score and return to main menu
            if check_game_end(board):
                final_layout(board, building_choices, debug = debug, lb_names = lb_names)
                print()
                break
            
            else:
                display_board(turn_num, board)
                option = play_menu(buildings_list, building_choices, buildings[0], buildings[1], board, turn_num, debug, options, buildings, locations)
                # checks the value of option
                # if option is True, means the player entered in 0 (Quit Game) in the play menu
                if option and option not in options_list:
                    print()
                    break
                
                # checks if the user selected option 1 or 2, which is to build one of the randomly selected buildings
                if option == "1" or option == "2":
                    used_building_1 = buildings.pop(0)
                    used_building_2 = buildings.pop(0)
                    # increase turn number count by 1
                    turn_num += 1

                    # checks which option was selected, whichever option was not selected, the building will be returned to the building pool
                    if option == "1":
                        # e.g. since option 1 was selected, add building_2 back to the pool of buildings
                        buildings_list.append(used_building_2)
                    elif option == "2":
                        buildings_list.append(used_building_1)
                    # reset building_1 and building_2 after each iteration
                    buildings = pick_buildings(buildings_list, debug, buildings)
                    
    else:
        #normal program
        options_list = ["1", "2", "3", "4", "5", "0"]

        building_types = ["BCH", "FAC", "HSE", "SHP", "HWY", "PRK", "MON"]
        building_choices = []
        selecting_building_pool = True
        buildings_list = [] #generate_new_game_buildings()
        
        # generates new board and set turn number to 1
        board = [["?","?","?","?"],
                 ["?","?","?","?"],
                 ["?","?","?","?"],
                 ["?","?","?","?"]]
        turn_num = 1

        # checks if saved_game is True or False
        if saved_game:
            # saved_game = False, user selected Option 2. Load saved game
            # filename of the saved game
            filename = "SimpCityBoard.csv"

            # checks if the file named e.g. SimpCityBoard.csv exists
            if os.path.exists(filename):
                board = []
                count = 0
                if validate_saved_file(filename):
                    # loops through each line in the .csv file
                    for i in open(filename):
                        i = i.strip("\n")
                        # checks if the current line is first line
                        # if is first line, retrieve the turn number, stored in the first line of the .csv file
                        if count == 0:
                            turn_num = int(i)
                            count += 1
                            continue
                        if count == 1:
                            i = i.split(",")
                            building_choices = i
                            count += 1
                            continue
                        # if not first line, split the line by ',' and append it to the board
                        row = i.split(",")
                        board.append(row)
                    buildings_list = generate_new_game_buildings(building_choices)
                    # as this is a saved game, need to remove buildings that are already built on the board (if any)
                    # loops through each space on the board and check if there is a building built
                    for i in range(len(board)):
                        for j in range(len(board[i])):
                            # checks if space is empty space or building, "?" - empty space, not "?" means is a building
                            if (board[i][j] != "?"):
                                # removes it from the building pool
                                buildings_list.remove(board[i][j])
                else:
                    #saved file is not valid
                    print("The saved file is invalid. Returning to main menu.\n")
                    return
            else:
                # saved file does not exists, start a new game for player
                print("No saved game file found! Starting new game...\n")
                saved_game = False
                
        if not saved_game:
            print("Please select your building pool\nYou can pick from these listed buildings\n- BCH\n- FAC\n- HSE\n- HWY\n- MON\n- PRK\n- SHP\n")
            while (selecting_building_pool):
                building_choices = []
                bldgChoices = input("Please enter your building pool here (i.e. HSE, FAC, MON, PRK, SHP): ")

                #validate the choices

                #remove any whitespace from the left or right of the string
                bldgChoices = bldgChoices.strip()

                #convert the strings to a list
                bldgChoices = bldgChoices.split(",")

                bldgChoices = list(map(str.strip, bldgChoices))

                #check if 5 buildings were chosen
                if(len(set(bldgChoices)) == len(bldgChoices)):

                    if(len(bldgChoices) == 5):
                        #check for valid building type input
                        for i in bldgChoices:
                            i = i.strip()
                            i = i.upper()
                            if i in building_types:
                                building_choices.append(i)

                                #if all the inputs pass x8 each of the choices and return the full list
                                if (len(building_choices) == 5):
                                    buildings_list = generate_new_game_buildings(building_choices)
                                    selecting_building_pool = False
                                    break
                                    
                            else: #if there is building type error
                                print("Invalid building type input")
                                break
                                
                    else: #re-prompts the user to enter 5 real buidlings
                        print("Please enter 5 building types")
                        continue
                else:#re-prompts the user to choose 5 unique buildings
                    print("Please only choose 1 of each type of building")
                    continue
            
        buildings = pick_buildings(buildings_list)
        
        while True:
            #checks if the board is filled
            # if True, display final layout and computed score and return to main menu
            if check_game_end(board):
                final_layout(board, building_choices)
                print()
                break
            
            else:
                display_board(turn_num, board)
                option = play_menu(buildings_list, building_choices, buildings[0], buildings[1], board, turn_num)

                # checks the value of option
                # if option is True, means the player entered in 0 (Quit Game) in the play menu
                if option and option not in options_list:
                    print()
                    break

                # checks if the user selected option 1 or 2, which is to build one of the randomly selected buildings
                if option == "1" or option == "2":
                    # increase turn number count by 1
                    turn_num += 1

                    # checks which option was selected, whichever option was not selected, the building will be returned to the building pool
                    if option == "1":
                        # e.g. since option 1 was selected, add building_2 back to the pool of buildings
                        buildings_list.append(buildings[1])
                    elif option == "2":
                        buildings_list.append(buildings[0])

                    # reset building_1 and building_2 after each iteration
                    buildings = pick_buildings(buildings_list)
            
    return
