 # This function will calculate the score and display the current the score to the user as well as the score breakdown for each building.

# e.g.
# ["HWY", "HWY", "PRK", "MON"],
# ["PRK", "HSE", "PRK", "SHP"],
# ["PRK", "MON", "PRK", "MON"],
# ["MON", "FAC", "HWY", "MON"]

# HSE: 0 = 0
# FAC: 1 = 1
# SHP: 2 = 2
# HWY: 2 + 2 + 1 = 5
# BCH: 0
# PRK: 8 + 3 = 11
# MON: 4 + 4 + 4 + 4 + 4 = 20
# Total score: 39

from lib2to3.pgen2.token import RPAR


def view_score(board, building_pool):

    grid_height = len(board) - 1
    grid_length = len(board[0]) -1
    true_grid_height = len(board)
    true_grid_length = len(board[0])

    n = true_grid_height
    m = true_grid_length

    def is_valid(x, y, matrix):
        if (x < n and y < m and x >= 0 and y >= 0):
            if (visited[x][y] == False and matrix[x][y] == "PRK"):
                return True
            else:
                return False
        else:
            return False
    score = 0
    score = 0

    # For score breakdown
    bch_score = [0]
    fac_score = [0]
    hse_score = [0]
    shp_score = [0]
    hwy_score = [0]

    # New building score breakdown
    prk_score = [0]
    mon_score = [0]

    # Temporary input for total Factory (FAC) and Monument (MON) count. Used for calculation of score at the end
    FacCount = 0
    mon_corner = 0
    mon_other = 0

    adjList = []

    # Parks
    # stores information about which cell
    # are already visited in a particular BFS

    #true_grid_height = 1
    #true_grid_length = 26

    visited = [[False for i in range(true_grid_length)] for j in range(true_grid_height)]

    # Stores the count of cells in
    # the largest connected component
    prk_COUNT = 0
    prk_list = []

    for row in range(len(board)):
        stoppedAt = -1
        for column in range(len(board[row])):

            #Calculate Beach 
            if(board[row][column] == "BCH"):
                if column == 0 or column == grid_length:
                    bch_score.append(3)
                else:
                    bch_score.append(1)
            
            #Calculate Factory
            elif(board[row][column] == "FAC"):
                FacCount += 1
                    
            #Calculate House
            elif(board[row][column] == "HSE"):
                if (any(0 <= column + dcolumn <= grid_length and 0 <= row + drow <= grid_height and board[row + drow][column + dcolumn] == "FAC" for drow, dcolumn in
                         ((-1, 0), (0, 1), (1, 0), (0, -1)))):
                         #means any of the surrounding IS FAC
                         hse_score.append(1)
                         
                elif (any(0 <= column + dcolumn <= grid_length and 0 <= row + drow <= grid_height and board[row + drow][column + dcolumn] for drow, dcolumn in
                         ((-1, 0), (0, 1), (1, 0), (0, -1)))):
                         #Means any of the surrounding SHP or HSE
                         #Grid lists looks like ['?', 'HSE', '?', '?']
                        
                        gridList = []

                        if(not row + 1 > grid_height):
                            gridList.append(board[row + 1][column])

                        if(not row - 1 < 0):
                            gridList.append(board[row - 1][column])

                        if(not column + 1 > grid_length):
                            gridList.append(board[row][column + 1])

                        if(not column - 1 < 0):
                            gridList.append(board[row][column - 1])

                        counter = 0
                        counter += gridList.count("HSE")
                        counter += gridList.count("SHP")
                        counter += gridList.count("BCH")*2
                        if(gridList.count != 0):
                            hse_score.append(counter)

            #Calculate Shop
            elif(board[row][column] == "SHP"):
                gridList = []

                if(not row + 1 > grid_height):
                    gridList.append(board[row + 1][column])

                if(not row - 1 < 0):
                    gridList.append(board[row - 1][column])

                if(not column + 1 > grid_length):
                    gridList.append(board[row][column + 1])

                if(not column - 1 < 0):
                    gridList.append(board[row][column - 1])
                unique_building_type = set(gridList)
                if("?" in unique_building_type):
                    unique_building_type.remove("?")
                shp_score.append(len(unique_building_type))

            #Calculate Highway
            elif(board[row][column] == "HWY"):
                if column <= stoppedAt:
                    column = stoppedAt+1
                if column > grid_length:
                    break
                
                if board[row][column] == "HWY":
                    count = 1
                    adjacent = True
                    while adjacent:
                        if column+1 > grid_length:
                            adjList.append(count)
                            adjacent = False
                        else:
                            if board[row][column+1]=="HWY":
                                column += 1
                                stoppedAt = column
                                count += 1    
                            else:
                                adjList.append(count)
                                adjacent = False
            
            #Calculate Park
            #if 0, 0 (corner left) , don't check left and top but only right and btm

            #calculate groups of parks
            #using a flood fill algorthim

            elif(board[row][column] == "PRK"):
                if(visited[row][column] == False):
                        
                    prk_COUNT = 0

                    #stores the index of each cell
                    indices = []

                    # Mark the starting cell as visited
                    # and push it into the queue
                    indices.append([row, column])
                    visited[row][column] = True

                    # Iterate while the queue
                    # is not empty
                    while (len(indices)!=0):
                        indices_holder = indices[0]
                        indices = indices[1:]
                        x = indices_holder[0]
                        y = indices_holder[1]
                        prk_COUNT += 1
    

                        # Go to the adjacent cells
                        #these corresponding to moving the grid up down left and right
                        #so x will + 1 and y will stay the same to check the right cell etc.
                        dx = [0, 1, -1, 0]
                        dy = [1, 0, 0, -1]
                        for i in range(4):
                            newX = x + dx[i]
                            newY = y + dy[i]

                            #function to check if the cell is a PRK value and check that it has not 
                            #been iterated over before
                            if (is_valid(newX, newY, board)):
                                indices.append([newX, newY])
                                visited[newX][newY] = True

                    prk_list.append(prk_COUNT)
            
            #Calculate Monument (MON)
            #Corner A1 : 0, 0
            #Corner A4 : 0, 4 (grid_length)
            #Corner D1 : 4 (grid_height), 0
            #Corner A4 : 4 (grid_height), 4 (grid_length)
            elif(board[row][column] == "MON"):
                if((column == 0 and row == 0) or (column == 0 and row == grid_height) or (column == grid_length and row == 0) or (column == grid_length and row == grid_height)):
                    mon_corner += 1
                else:
                    mon_other +=1

            else:
                stoppedAt+=1

    for i in adjList:
        for j in range(i):
            hwy_score.append(i)
    
    #Calculate the factory score
    if(FacCount <= 4):
        for i in range(FacCount):
            fac_score.append(FacCount)
    else:
        for i in range(4):
            fac_score.append(4)
        for i in range(FacCount - 4):
            fac_score.append(1)

    #Calculate the MON score
    if(mon_corner < 3):
        for i in range(mon_corner):
            mon_score.append(2)
        for i in range(mon_other):
            mon_score.append(1)
    else:
        for i in range(mon_corner + mon_other):
            mon_score.append(4)

    #Calculate the park score
    park_score_dict = {
                    1:1,
                    2:3,
                    3:8,
                    4:16,
                    5:22,
                    6:23,
                    7:24,
                    8:25,
    }

    x = 0
    for group in prk_list:
        prk_score.append(park_score_dict[group])


    score_list = []

    score_dict = {
        "HSE": hse_score,
        "FAC": fac_score,
        "SHP": shp_score,
        "HWY": hwy_score,
        "BCH": bch_score,
        "PRK": prk_score,
        "MON": mon_score
    }

    for i in building_pool:
        score_list.append(score_dict.get(i))

    for i in range(len(score_list)):
        print(building_pool[i] + ": ", end ="" )
        for j in range(len(score_list[i])):
            if(len(score_list[i]) == 1):
                print(str(score_list[i][j]), end ="")
                if (score_list[i][j] != 0):
                    print(" = " + str(sum(score_list[i])), end="")
            else:
                try:
                    print(str(score_list[i][j+1]), end ="")
                    if (j+1 != len(score_list[i])-1):
                        print(" + ", end="")
                except:
                    print(end= "")
        
        if(len(score_list[i]) != 1 and sum(score_list[i]) >= 0):
            print(" =", str(sum(score_list[i])), end = "")
            score += sum(score_list[i])
        print()

    print("Total score: " + str(score))
    return score
