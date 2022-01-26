# this function saves the turn number, the building pool selected and the Simp City board
# in the csv file
def save_game(turn_num, building_pool, board):
    
    # retrieve the buildings in the building pool
    # and parse it into a string
    building_pool_str = ""
    for i in range(len(building_pool)):
        building_pool_str += building_pool[i]
        if i != (len(building_pool)-1):
            building_pool_str += ","
    
    # writes the turn num in line 1
    # writes the building pool line 2
    # writes the board into the saved file
    with open('SimpCityBoard.csv', 'w') as file:
        file.write(str(turn_num))
        file.write("\n")
        file.write(building_pool_str)
        for line in board:
            file.write("\n")
            for x in line[:-1]:
                file.write(x + ",")
            file.write(line[-1])
    print("Game saved!")
