# function to allow user to view the leaderboard based on the dimension size.
# i.e.
# Board size input = 2,8. It will display the leaderboard of 16 dimension area.

from asyncore import read
import csv 
def view_high_score(board_size = "0,0", debug = False, board_size_list = []):
    # for system tests
    if debug:
        error_message = "Invalid input. Please try again...(e.g. 5,8)"
        if board_size == "0,0":
            # Prompt User for Board Size (e.g. 5,8)
            while True:
                board_size = board_size_list[0]
                board_size_list.pop(0)
                #board_size = input("Please enter the board size (e.g. 5,8): ")
                # Check if input contains a comma.
                if(board_size.find(',') == -1):
                    print(error_message)
                else:
                    length_height = board_size.split(",")
                    # Check if user input contains only 2 item.
                    if(len(length_height) != 2):
                        print(error_message)
                    else:
                        # Check if user input is an int after comma split.
                        try:
                            size_1 = int(length_height[0])
                            size_2 = int(length_height[1])
                        except ValueError:
                            print(error_message)
                            continue

                        # Check that height/length is not less than 0
                        if((size_1 <= 0) or (size_2 <= 0)):
                            print("Invalid input. Board size cannot have height/length lesser than 0. Please try again...(e.g. 5,8)")
                        else:
                            # Calculate the board area
                            area = int(length_height[0]) * int(length_height[1])

                            # Area cannot be more than 40...
                            if(area > 40):
                                print("Area of the board cannot be more than 40. Please try again...")
                            else:
                                break


        # board_size = input("Please enter the board size (e.g. 5,8): ")
        length_height = board_size.split(",")
        area = int(length_height[0]) * int(length_height[1])

        print("\n--------- HIGH SCORES ---------")
        print("{:<3}{:>7}{:>21}".format("Pos","Player","Score"))
        print("{:<3}{:>7}{:>21}".format("---","------","-----"))

        # Retrieve high scores from CSV file (SimpCityLeaderboard)
        with open("SimpCityLeaderboard.csv", "r") as file:
            reader = csv.reader(file)
            for i in range(int(area)-1):
                next(reader)                            # Skip the necessary number of rows
            row = next(reader)                          # "row" contains row number X now
            
            count = 1                                   # For the ranking number...
            if row != []:                                   
                for i in row:
                    player_data = i.split(":")
                    print("{:>3} {:<20}{:>7}".format(str(count) + ".", player_data[0], player_data[1]))
                    count+=1
            else:
                print("No high scores currently!")

        print("-------------------------------\n")
    else:
        # normal program
        error_message = "Invalid input. Please try again...(e.g. 5,8)"
        if board_size == "0,0":
            # Prompt User for Board Size (e.g. 5,8)
            while True:
                board_size = input("Please enter the board size (e.g. 5,8): ")
                # Check if input contains a comma.
                if(board_size.find(',') == -1):
                    print(error_message)
                else:
                    length_height = board_size.split(",")
                    # Check if user input contains only 2 item.
                    if(len(length_height) != 2):
                        print(error_message)
                    else:
                        # Check if user input is an int after comma split.
                        try:
                            size_1 = int(length_height[0])
                            size_2 = int(length_height[1])
                        except ValueError:
                            print(error_message)
                            continue

                        # Check that height/length is not less than 0
                        if((size_1 <= 0) or (size_2 <= 0)):
                            print("Invalid input. Board size cannot have height/length lesser than 0. Please try again...(e.g. 5,8)")
                        else:
                            # Calculate the board area
                            area = int(length_height[0]) * int(length_height[1])

                            # Area cannot be more than 40...
                            if(area > 40):
                                print("Area of the board cannot be more than 40. Please try again...")
                            else:
                                break


        # board_size = input("Please enter the board size (e.g. 5,8): ")
        length_height = board_size.split(",")
        area = int(length_height[0]) * int(length_height[1])

        print("\n--------- HIGH SCORES ---------")
        print("{:<3}{:>7}{:>21}".format("Pos","Player","Score"))
        print("{:<3}{:>7}{:>21}".format("---","------","-----"))

        # Retrieve high scores from CSV file (SimpCityLeaderboard)
        with open("SimpCityLeaderboard.csv", "r") as file:
            reader = csv.reader(file)
            for i in range(int(area)-1):
                next(reader)                            # Skip the necessary number of rows
            row = next(reader)                          # "row" contains row number X now
            
            count = 1                                   # For the ranking number...
            if row != []:                                   
                for i in row:
                    player_data = i.split(":")
                    print("{:>3} {:<20}{:>7}".format(str(count) + ".", player_data[0], player_data[1]))
                    count+=1
            else:
                print("No high scores currently!")

        print("-------------------------------\n")


#view_high_score()
