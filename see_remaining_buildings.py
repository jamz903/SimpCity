from collections import Counter

# function to display the remaining buildings
# takes in the list of buildings
def see_remaining_buildings(buildings_list, board, building_pool):
    buildings_counter = Counter(buildings_list)
    print("Building          Remaining", end = "")
    yield
    print(8 * "-" + 10 * " " + 9 * "-", end = "")
    yield
    for i in building_pool:
        print(i + 15 * " " + str(buildings_counter[i]), end = "")
        yield

    if (len(board) >= len(set(buildings_list))):    
        for i in range(len(board)-5):
            print(end="")
            yield
        print()
    return
