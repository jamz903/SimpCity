def save_game(turn_num, board):

    with open('SimpCityBoard.csv', 'w') as file:
        file.write(str(turn_num))
        for line in board:
            file.write("\n")
            for x in line[:-1]:
                file.write(x + ",")
            file.write(line[-1])
    print("Game saved!")