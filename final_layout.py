from view_score import *
from display_board import *

# function to display the final layout & scores of the player
# after Turn 16, when the player fills up the board.

def final_layout(board):
    display_board(None, board)
    view_score(board)
    return
