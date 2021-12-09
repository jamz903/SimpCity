# function to generate 8 of each buildings in a list
# i.e.
# buildings_list = [8 x BCH, 8 x FAC, 8 x HSE, 8 x SHP, 8 x HWY]
# returns the shuffled building list
def generate_new_game_buildings():
    building_types = ["BCH", "FAC", "HSE", "SHP", "HWY"]
    buildings_list = []
    for i in building_types:
        for j in range(8):
            buildings_list.append(i)
    return buildings_list