from view_score import *
from display_board import *
from save_high_score import *

# function to display the final layout & scores of the player
# after Turn 16, when the player fills up the board.

def final_layout(board, building_pool, debug = False, lb_names = []):
    print("\nFinal layout of Simp City:")
    #all possible values for the length of the board
    alphabets = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    
    #starting values 
    topgrid = " "
    topline = "   +"
    
    #dynamically create the length values for the top of the board
    for i in range(len(board[0])):
        topgrid = topgrid + "     " + alphabets[i]
        topline = topline + '-----+'

    print(topgrid)
    print(topline)

    for i in range(len(board)):
        print("{:>3}|".format(str(i+1)), end="")
        for j in range(len(board[i])):
            if (board[i][j] != "?"):
                print("{}".format(" " + board[i][j] + " |"), end="")
            else:
                print("{}".format("     |"), end="")
        print("\n" + topline)

    user_score = view_score(board, building_pool)
    save_high_score(board, user_score, debug=debug, lb_names=lb_names)
    
    return
