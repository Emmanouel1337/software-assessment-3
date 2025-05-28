import sqlite3
from howlongtobeatpy import HowLongToBeat

def readOwnedGames():
#connecting to table
    try:
        sqliteConnection = sqlite3.connect('/workspaces/software-assessment-3/player_summaries_db/owned_games.db')
        cursor = sqliteConnection.cursor()
        print('connected')
#generating query, printing query
        sqlite_select_query = f"""SELECT name, playtime_forever FROM owned_games"""
        cursor.execute(sqlite_select_query)
        records = cursor.fetchall()
    #printing out name and minutes played
        for row in records:
            print("Name: ", row[0], "\nMinutes: ", row[1])
        #getting the game names, and then sorting them into something that HowLongToBeat can utilise to search from
            gamelist = list(row[0])
            count = 0
            check_ord = []
            for j in gamelist:
                if ord(j) > 126 or ord(j) < 32:
                    check_ord.append(j)
                else:
                    pass
                count+=1
            game = ''.join(gamelist)
            for i in check_ord:
                game = game.replace(i, '')
            print('\n')
        #getting the HowLongToBeat API and querying that, then printing the information, depending on if it is singleplayer or multiplayer
            results = HowLongToBeat(input_auto_filter_times = True).search(game)
            print("Average time to beat:\n")
            if results:
                for entry in results:
                    #checking if the game is single player / co-op, or multiplayer
                    if entry.complexity_lvl_sp == True:
                        print('Game is singleplayer')
                        print(f'Main Story hours: {entry.main_story}')
                        print(f'Completionist hours: {entry.completionist}')
                        break
                    if entry.complexity_lvl_mp == True:
                        print('Game is multiplayer')
                        print(f'Avg invested multiplayer hours: {entry.mp_time}')
                        break
                    break
                print('------------------------------------------------------------------------------------\n')
        cursor.close()
        #NEXT - check results, if no result from howlongtobeat, check for similarity? probably using SequenceMatcher from difflib. Either like Creative Destruction (no data), or Bleach Brave Souls (names different to a higher degree), maybe just use similarity?
        #still if similarity below 0.8 or 0.7, notify user for game which was unable to have data gathered

#just incase an error occurs
    except sqlite3.Error as error:
        print("Failed to read data from sqlite table", error)
    finally:
        if sqliteConnection:
            sqliteConnection.close()
            print("------------------------------------------------")

readOwnedGames()

