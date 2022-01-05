from see_remaining_buildings import *
from place_building import *
from view_score import *
from save_game import *

# function to display the menu when user is playing the game
# takes in the list of buildings (building pool), building 1 and 2 which were randomly selected, and the current Simp City board
def play_menu(buildings_list, building_1, building_2, board, turn_num):
    options_list = ["1", "2", "3", "4", "5", "0"]
    
    print("1. Build a " + building_1)
    print("2. Build a " + building_2)
    print("3. See remaining buildings")
    print("4. See current score\n")
    print("5. Save game")
    print("0. Exit to main menu")
    option = input("Your choice? ")

    # checks that user has entered in a valid option
    if option in options_list:

        # checks if user enter in option 1 or 2, which is to build one of the randomly selected building
        if option == "1" or option == "2":
            valid_placement = False

            # loops through to check if user has entered in a valid location coordinate
            # if not valid coordinate, re-prompt user for location coordinate
            while not valid_placement:
                location = input("Build where? ")

                # checks which building user has selected to build
                if option == "1":
                    valid_placement = place_building(building_1, location, board)
                else:
                    valid_placement = place_building(building_2, location, board)
                    
        elif option == "3":
            print()
            see_remaining_buildings(buildings_list)
        elif option == "4":
            print()
            view_score(board)
        elif option == "5":
            print()
            save_game(turn_num, board)
        else:
            # Not option 1-5, means option 0 selected
            # returns true, means user wishes to quit playing the game
            option = True
    else:
        print("Invalid option! Please try again!")
        option = False
    return option
