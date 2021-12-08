from load_saved_game import *
from start_new_game import *

# display start menu function
def start_menu(i):
    # stores the valid options that users can enter
    menu_options = ["0", "1", "2"]
    while (i!=0):
        i -= 1
        print("Welcome, mayor of Simp City!")
        print("----------------------------")
        print("1. Start new game")
        print("2. Load saved game\n")
        print("0. Exit")
        option = input("Your choice? ")
        if option in menu_options:
            if option == "1":
                print("start game") #placeholder text
                start_new_game()
            elif option == "2":
                print("load saved game") #placeholder text
                load_saved_game("SimpCityBoard.csv")
            else:
                print("Exiting Simp City...")
                break
        else:
            print("Invalid option! Please try again!")
    return
