from re import S
from start_game import *
from view_high_score import *
import sys

# display start menu function
def start_menu(i, debug = False, options = [], buildings = [], locations = [], bldgChoicesList = [], lb_names = [], board_size_list = []):
    if debug:
        #for system tests
        # stores the valid options that users can enter
        menu_options = ["0", "1", "2", "3"]
        while (i!=0):
            i -= 1
            print("Welcome, mayor of Simp City!")
            print("----------------------------")
            print("1. Start new game")
            print("2. Load saved game")
            print("3. Show high scores\n")
            print("0. Exit")
            if options[0] in menu_options:
                if options[0] == "1":
                    options.pop(0)
                    start_game(False, debug, options, buildings, locations, bldgChoicesList, lb_names)
                elif options[0] == "2":
                    options.pop(0)
                    start_game(True, debug, options, buildings, locations, bldgChoicesList, lb_names)
                elif options[0] == "3":
                    options.pop(0)
                    view_high_score(debug=debug, board_size_list=board_size_list)
                else:
                    print("Exiting Simp City...")
                    break
            else:
                print("Invalid option! Please try again!\n")
                options.pop(0)

    else:
        #normal program
        # stores the valid options that users can enter
        menu_options = ["0", "1", "2", "3"]
        while (i!=0):
            i -= 1
            print("Welcome, mayor of Simp City!")
            print("----------------------------")
            print("1. Start new game")
            print("2. Load saved game")
            print("3. Show high scores\n")
            print("0. Exit")
            option = input("Your choice? ")
            if option in menu_options:
                if option == "1":
                    start_game()
                elif option == "2":
                    start_game(True)
                elif option == "3":
                    view_high_score()
                else:
                    print("Exiting Simp City...")
                    break
            else:
                print("Invalid option! Please try again!\n")
    return

# if function is executed by process using cmd
if __name__ == "__main__":
    if (len(sys.argv[1:]) != 0):
        i = int(sys.argv[1])
        
        # split the arguments to retrieve the inputs as a list
        options = [c for c in sys.argv[3].split(',')]
        buildings = [c for c in sys.argv[4].split(',')]
        locations = [c for c in sys.argv[5].split(',')]
        bldgChoicesList = [c for c in sys.argv[6].split('.')]
        lb_names = [c for c in sys.argv[7].split(',')]
        board_size_list = [c for c in sys.argv[8].split('.')]
        start_menu(i, sys.argv[2], options, buildings, locations, bldgChoicesList, lb_names, board_size_list)
