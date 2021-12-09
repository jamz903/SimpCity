import random

# function that randomly chooses 2 buildings from the pool of buildings for user to build
# removes it from the pool, as the 2 randomly selected buildings will not be shown when user selects option 3. See remaining buildings
def pick_buildings(buildings_list):
    building_1 = buildings_list.pop(random.randint(0, len(buildings_list)-1))
    building_2 = buildings_list.pop(random.randint(0, len(buildings_list)-1))
    
    return building_1, building_2