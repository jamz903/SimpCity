from generate_new_game_buildings import *
from pick_buildings import *
from play_menu import *
from display_board import *
import os

# function to start a game
# takes in a saved_game parameter with default value False
# if no parameters provided, means user selected option 1. Start new game
def start_game(saved_game = False):

    options_list = ["1", "2", "3", "4", "5", "0"]

    # generates a list of all 40 buildings
    buildings_list = generate_new_game_buildings()
    
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
            # loops through each line in the .csv file
            for i in open(filename):
                i = i.strip("\n")

                # checks if the current line is first line
                # if is first line, retrieve the turn number, stored in the first line of the .csv file
                if count == 0:
                    turn_num = int(i)
                    count += 1
                    continue
                # if not first line, split the line by ',' and append it to the board
                row = i.split(",")
                board.append(row)

            # as this is a saved game, need to remove buildings that are already built on the board (if any)
            # loops through each space on the board and check if there is a building built
            for i in range(len(board)):
                for j in range(len(board[i])):
                    # checks if space is empty space or building, "?" - empty space, not "?" means is a building
                    if (board[i][j] != "?"):
                        # removes it from the building pool
                        buildings_list.remove(board[i][j])
        else:
            # saved file does not exists, start a new game for player
            print("No saved game file found! Starting new game...\n")

    buildings = pick_buildings(buildings_list)
    
    while True:
        display_board(turn_num, board)
        option = play_menu(buildings_list, buildings[0], buildings[1], board)

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
