def generate_new_board(length, height):
    finalboard = []

    for i in range(length):
        row = []
        for j in range(height):
            row.append("?")
        finalboard.append(row)

    return finalboard