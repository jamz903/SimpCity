# function to display the board to user
# takes in the turn number, and the board to display

def display_board(turn_num, board):
    #variables
    alphabets = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    space = " "
    topgrid = " "
    topline = "   +"

    #board style
    for i in range(len(board[0])):
        topgrid = topgrid + "     " + alphabets[i]
        topline = topline + '-----+'


    tab = len(topline)-2 #spacing between board & remaining buildings list
    if turn_num > 9:
        tab = tab -1
    print("\nTurn " + str(turn_num), end = space*tab)
    yield
    

    print(topgrid, end = space*7)
    yield
    print(topline, end = space*4)
    yield

    for i in range(len(board)):
        print("{:>3}|".format(str(i+1)), end="")
        for j in range(len(board[i])):
            if (board[i][j] != "?"):
                print("{}".format(" " + board[i][j] + " |"), end="")
            else:
                print("{}".format("     |"), end="")
        print("\n" + topline, end = space*4)
        yield

    if len(board) < 5:
        for i in range(4-len(board)):
            print()
            if turn_num > 9:
                print(end=space*(tab+7))
            else:
                print(end=space*(tab+6))
            yield
        print()
    return
