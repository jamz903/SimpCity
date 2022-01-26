from audioop import reverse
from typing import Dict
import csv
from view_high_score import *
from string import punctuation

def save_high_score(board, score, debug = False, lb_names = []):

    # for system tests
    if debug:
        #create a dictionary for the data 
        
        leaderboardNames = []
        leaderboardScores = []
        made_highscore_board = False
        
        #use -1 to use as an index value later on
        board_size = -1
    
        #get size of board
        for row in board:
            board_size += len(row)

        # get dimensions of board (2,8) for view_high_score() function
        board_size_str = str(len(board)) + "," + str(len(board[0]))

        #get the data for the baord
        with open("SimpCityLeaderboard.csv", "r") as file:
            reader = csv.reader(file, delimiter=",")
            leaderboard = list(reader)
                    
            #create a dict for the names and scores
            for value in leaderboard[board_size]:
                pair = value.split(':')
            
                leaderboardNames.append(pair[0])
                leaderboardScores.append(pair[1])



        #get the position
        for i in range(len(leaderboardScores)):
            if (score > int(leaderboardScores[i])):
                board_pos = i+1
                made_highscore_board = True
                print("Congratulations! You made the high score board at position " + str(board_pos))
                break
            else:
                continue
        
        if (made_highscore_board):
            while True:
                #prompt the user for their name 
                lb_name = lb_names[0]
                lb_names.pop(0)
                #lb_name = input("Please enter your name (max 20 char): ")

                # Remove any whitespaces
                lb_name.strip()

                #check that the name is not past 20 and does not contain any punctuation
                if (len(lb_name) <= 20 and len(lb_name) > 0 and any(punc in lb_name for punc in punctuation) is False):
                    #add name and score to the dictionary as a key value pair
                    
                    leaderboardNames.insert(board_pos-1, lb_name)
                    leaderboardScores.insert(board_pos-1, score)

                    #clear leaderboard so new , sorted value can be appended
                    leaderboard[board_size] = []
                    
                    for i in range(len(leaderboardNames)):
                        if (len(leaderboard[board_size])<10):
                            leaderboard[board_size].append(str(leaderboardNames[i])+ ":"+ str(leaderboardScores[i]))
                        else:
                            break
                        
                    with open('SimpCityLeaderboard.csv','w', newline ='') as owf:
                        write = csv.writer(owf)
                        write.writerows(leaderboard)

                    break
                else:
                    print("The name you have entered is invalid. Please try again!")
                    continue
                
            view_high_score(board_size_str, debug=debug)
        else:
            print()
        return True
    else:
        # normal program
        #create a dictionary for the data 
        
        leaderboardNames = []
        leaderboardScores = []
        made_highscore_board = False
        
        #use -1 to use as an index value later on
        board_size = -1
    
        #get size of board
        for row in board:
            board_size += len(row)

        # get dimensions of board (2,8) for view_high_score() function
        board_size_str = str(len(board)) + "," + str(len(board[0]))

        #get the data for the baord
        with open("SimpCityLeaderboard.csv", "r") as file:
            reader = csv.reader(file, delimiter=",")
            leaderboard = list(reader)
                    
            #create a dict for the names and scores
            for value in leaderboard[board_size]:
                pair = value.split(':')
            
                leaderboardNames.append(pair[0])
                leaderboardScores.append(pair[1])



        #get the position
        for i in range(len(leaderboardScores)):
            if (score > int(leaderboardScores[i])):
                board_pos = i+1
                made_highscore_board = True
                print("Congratulations! You made the high score board at position " + str(board_pos))
                break
            else:
                continue
        
        if (made_highscore_board):
            while True:
                #prompt the user for their name 
                lb_name = input("Please enter your name (max 20 char): ")

                # Remove any whitespaces
                lb_name.strip()

                #check that the name is not past 20 and does not contain any punctuation
                if (len(lb_name) < 20 and len(lb_name) > 0 and any(punc in lb_name for punc in punctuation) is False):
                    #add name and score to the dictionary as a key value pair
                    
                    leaderboardNames.insert(board_pos-1, lb_name)
                    leaderboardScores.insert(board_pos-1, score)

                    #clear leaderboard so new , sorted value can be appended
                    leaderboard[board_size] = []
                    
                    for i in range(len(leaderboardNames)):
                        if (len(leaderboard[board_size])<10):
                            leaderboard[board_size].append(str(leaderboardNames[i])+ ":"+ str(leaderboardScores[i]))
                        else:
                            break
                        
                    with open('SimpCityLeaderboard.csv','w', newline ='') as owf:
                        write = csv.writer(owf)
                        write.writerows(leaderboard)

                    break
                else:
                    print("The name you have entered is invalid. Please try again!")
                    continue
                
            view_high_score(board_size_str)
        else:
            print()
        return True



board = [["HSE","HSE","HSE","HSE"],
        ["HSE","HSE","HSE","HSE"],
        ["HSE","HSE","HSE","HSE"],
        ["HSE","HSE","HSE","HSE"]]

#save_high_score(board)
