# function to convert the board coordinates to row, column coordinates
# returns a list, where position 0 is the row and position 1 is the column i.e. [row, column]
# e.g. a2 will return [0, 1]
def convert_board_coords_to_index(board_coords):
    location_letter = ["a", "b", "c", "d"]
    row = int(board_coords[1]) - 1
    column = location_letter.index(board_coords[0].lower())
    return [row, column]
