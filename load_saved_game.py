import os

# Function to load saved game
# Currently loads the game from the filename, "SimpCityBoard.csv"
# Returns a dictionary, that has the turn number, and the game board
# i.e.
# {
#      'turn_num': 3,
#      'saved_game': [['HSE', '?', '?', '?'],
#                     ['?', '?', '?', '?'],
#                     ['?', '?', 'BCH', '?'],
#                     ['?', '?', '?', '?']]
# }
def load_saved_game(filename):
    turn_number_saved_game_dict = {
        "turn_num": None,
        "saved_game": None
    }
    saved_game = []
    count = 0

    # check
    if os.path.exists(filename):
        for i in open(filename):
            i = i.strip("\n")
            if count == 0:
                turn_number_saved_game_dict["turn_num"] = int(i)
                count += 1
                continue
            row = i.split(",")
            saved_game.append(row)
        turn_number_saved_game_dict["saved_game"] = saved_game
    else:
        print("No saved game file found! Starting new game...")
        # start_new_game()
    return turn_number_saved_game_dict
