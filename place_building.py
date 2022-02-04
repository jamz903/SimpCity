import random
from convert_board_coords_to_index import *

# function to place a building on the board
# takes in the building to be built, the location coordinate (e.g. a2), and the current Simp City board
def place_building(building, location, board):

    # location_letter and location_number stores the valid location coordinate values that the user can enter in
    location_letter = []
    location_number = []

    alphabets = "abcdefghijklmnopqrstuvwxyz"
    for i in range(len(board[0])):
        location_letter.append(alphabets[i])

    for i in range(len(board)):
        location_number.append(str(i+1))

    # global variable to check if the board currently has any building built
    buildings_present = False

    # global variable to check if the user has placed the building at a valid placement
    # this means that the user has entered in a coordinate whereby:
    # 1. there is currently no building built on the coordinate that the user has specified
    # 2. the coordinate that the user has entered in is orthogonally adjacent to an existing building (either above, right, left, or below an existing building)
    valid_placement = False

    # loops through all spaces on the board to check if there are any buildings built currently
    for i in range(len(board)):
        for j in range(len(board[i])):
            if board[i][j] != "?":
                buildings_present = True
                break

    # checks that the user did not key in an empty string for the location
    if location != "":
        # checks that the user has keyed in a value that is 2 characters long
        if len(location) <= 3:

            # checks that the user has keyed in a valid location coordinate
            # .lower() to allow upper and lower case characters to be entered in
            # if location[0].lower() is not found in location_letter or if location[1] is not found in location_number,
            # means that the user has entered in an invalid location coordinate
            if location[0].lower() not in location_letter or location[1:] not in location_number:
                print("Invalid location coordinates! Please enter in a valid location coordinate!")
            else:

                # convert the board coordinates to position coordinates
                coords = convert_board_coords_to_index(location)
                row = coords[0]
                column = coords[1]

                # checks if there are any buildings currently built on the board
                # if there are none, can just place on the board without checking if it is orthogonally adjacent to an existing building
                if buildings_present:
                    # there are buildings already built on the board currently
                    # checks if the location that the user has selected is an empty space (i.e. no building currently built)
                    if board[row][column] == "?":
                        
                        #get the height and length of the grid
                        grid_height = len(board) - 1
                        grid_length = len(board[0]) -1

                        if (any(0 <= column + dcolumn <= grid_length and 0 <= row + drow <= grid_height and board[row + drow][column + dcolumn] != '?' for drow, dcolumn in
                                    ((-1, 0), (0, 1), (1, 0), (0, -1)))):
                            
                            board[row][column] = building # build!
                            valid_placement = True


                        if not valid_placement:
                            print("You must build next to an existing building.")
                    else:
                        # this block runs if the user has entered in a location, whereby a building already exists on the specified location
                        print("Invalid placement! There is already an existing building at " + location + ". Please enter in a different location!")
                    
                else:
                    # this block runs if there are currently no buildings built on the Simp City board
                    # this means that the user can just build anywhere on the board
                    board[row][column] = building
                    valid_placement = True
        else:
            print("Invalid input! Please enter in a valid location coordinate!")
    else:
        print("Invalid input! Please enter in a valid location coordinate!")

    return valid_placement
