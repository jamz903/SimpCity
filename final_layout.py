from view_score import *
from display_board import *
from save_high_score import *

# function to display the final layout & scores of the player
# after Turn 16, when the player fills up the board.

def final_layout(board, building_pool, debug = False, lb_names = []):
    display_board(None, board)
    user_score = view_score(board, building_pool)
    save_high_score(board, user_score, debug=debug, lb_names=lb_names)
    
    return
