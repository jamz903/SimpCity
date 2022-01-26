from collections import Counter

def validate_saved_file(filename):

    board = []
    count = 0
    building_choices = []
    building_pool_types = ["BCH", "FAC", "HSE", "SHP", "HWY", "PRK", "MON"]

    # retrieves the Simp City board and current turn number from the saved file
    for i in open(filename):
        i = i.strip("\n")

        if count == 0:
            turn_num = int(i)
            count += 1
            continue
        if count == 1:
            i = i.split(",")
            building_choices = i
            count += 1
            continue
            
        row = i.split(",")
        board.append(row)
    # gets the board length and height 
    grid_height = len(board) - 1
    grid_length = len(board[0]) -1

    # first validation: checks if the buildings are valid 
    # the buildings can only be of type "BCH", "FAC", "HSE", "SHP", "HWY", "PRK", "MON" and "?"
    building_list = ["BCH", "FAC", "HSE", "SHP", "HWY","?", "PRK", "MON"]
    for row in board:
        for pos in row:  
            if pos not in building_list:
                return False

    # second validation: checks if the board and the turn number correspond
    # the current turn number must always be 1 greater than the number of buildings placed
    # gathers the number of buildings that have been placed
    num_of_buildings = 0
    for row in board:
        for pos in row:
            if pos != "?":
                num_of_buildings += 1

    if num_of_buildings != turn_num - 1:
        return False

    # third validation: checks that the length of all the rows in the file are the same
    for i in board:
        if len(i)-1 == grid_length:
            continue
        else:
            # not all rows in the board are equal
            return False

    # fourth validation: checks if the buildings placed follow the rules of the game
    # if only one building is placed, it can be placed anywhere
    # if more than one building are placed, the buildings have to be orthogonally adjacent to one another
    if turn_num > 2: # if turn num is 1 or 2, means no buildings placed or only one building is placed currently, hence need no check if orthogonally adjacent
        
        for row_num in range(len(board)):

            for column_num in range(len(board[row_num])):
                
                # checks that it is a building
                if board[row_num][column_num] != "?":

                    # checks the surrounding (up, down, left, right) at least has 1 building placed
                    if (any(0 <= column_num + dcolumn <= grid_length and 0 <= row_num + drow <= grid_height and board[row_num + drow][column_num + dcolumn] != "?" for drow, dcolumn in
                        ((-1, 0), (0, 1), (1, 0), (0, -1)))):
                        pass # do nothing
                    else:
                        return False
    
    # fifth validation: checks if a valid number of buidlings as per their building type have been placed
    # move the board into one single list
    occList = []
    for row in board:
        for value in row:
            if value != "?":
                occList.append(value)
            else:
                continue

    counterVAR = Counter(occList)

    # retrieves the number of buildings placed for each building type
    # i.e.
    # {
    #     "HSE": 4, etc.  
    # }
    for key in counterVAR:
        if (counterVAR[key] > 8): # if a building has more than 8 instances built/placed
            return False

    # sixth validation: checks if the building pool saved are of valid building types
    for i in building_choices:
        if i not in building_pool_types:
            return False

    # seventh validation: checks that the buildings placed on the board are of buildings in the building pool
    for key in counterVAR:
        if key not in building_choices:
            return False
    
    return True
