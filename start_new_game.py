#this function starts a new game
#create a new board to show to user
#create variable for turn number
def start_new_game():
    board = [["?","?","?","?"],
             ["?","?","?","?"],
             ["?","?","?","?"],
             ["?","?","?","?"]]
    turn_num = 1
    #display_board(turn_num, board)
    return board, turn_num
