 # This function will calculate the score and display the current the score to the user as well as the score breakdown for each building.

def view_score(board):

    score = 0

    #For score breakdown
    bch_score = [0]
    fac_score = [0]
    hse_score = [0]
    shp_score = [0]
    hwy_score = [0]

    FacCount = 0
    grid_height = len(board) - 1
    grid_length = len(board[0]) -1

    adjList = []
    for row in range(len(board)):
        stoppedAt = -1
        for column in range(len(board[row])):

            #Calculate Beach 
            if(board[row][column] == "BCH"):
                if column == 0 or column == 3:
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

                        if(not row + 1 > grid_length):
                            gridList.append(board[row + 1][column])

                        if(not row - 1 < 0):
                            gridList.append(board[row - 1][column])

                        if(not column + 1 > grid_height):
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

                if(not row + 1 > grid_length):
                    gridList.append(board[row + 1][column])

                if(not row - 1 < 0):
                    gridList.append(board[row - 1][column])

                if(not column + 1 > grid_height):
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
                if column > 3:
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


    score_list = [hse_score,fac_score,shp_score,hwy_score,bch_score]
    namelist = ["HSE", "FAC", "SHP", "HWY", "BCH"]

    for i in range(len(score_list)):
        print(namelist[i] + ": ", end ="" )
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