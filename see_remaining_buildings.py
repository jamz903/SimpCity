from collections import Counter

# function to display the remaining buildings
# takes in the list of buildings
def see_remaining_buildings(buildings_list):
    buildings_counter = Counter(buildings_list)
    print("Building          Remaining")
    print(8 * "-" + 10 * " " + 9 * "-")
    for i in buildings_counter:
        print(i + 15 * " " + str(buildings_counter[i]))
    return