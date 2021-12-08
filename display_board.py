# Function to display the board to user
# Takes in the turn number, and the board to display
def display_board(turn_num, board):

    print("\nTurn " + str(turn_num))
    print("     A     B     C     D   ")
    print("  +-----+-----+-----+-----+")
    for i in range(len(board)):
        print(" " + str(i+1) + "|", end="")
        for j in range(len(board[i])):
            if (board[i][j] != "?"):

                print(" " + board[i][j] + " |", end="")
            else:
                print("     |", end="")
        print("\n  +-----+-----+-----+-----+")
    play_menu([],"HSE", "BCH",[[],[],[],[]])
    return
