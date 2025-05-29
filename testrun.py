import sqlite3
from howlongtobeatpy import HowLongToBeat
import asyncio

async def readOwnedGames():
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
            game_to_check = game.lower()
        #getting the HowLongToBeat API and querying that, then printing the information, depending on if it is singleplayer or multiplayer
            results_list = await HowLongToBeat().async_search(game_to_check)
            if results_list:
                best_element = max(results_list, key=lambda element: element.similarity)
                if best_element.similarity >= 0.3:
                    print("Average time to beat:\n")
            #checking if the game is single player / co-op, or multiplayer
                    if best_element.complexity_lvl_sp == True:
                        print('Game is singleplayer')
                        print(f'Main Story hours: {best_element.main_story}')
                        print(f'Completionist hours: {best_element.completionist}')
                        print('------------------------------------------------------------------------------------\n')
                    if best_element.complexity_lvl_mp == True:
                        print('Game is multiplayer')
                        print(f'Avg invested multiplayer hours: {best_element.mp_time}')
                        print('------------------------------------------------------------------------------------\n')
                else:
                    print(f"low similarity {best_element.similarity} for {game}")
            else:
                print('no results found')
                print('------------------------------------------------------------------------------------\n')
        cursor.close()

#just incase an error occurs
    except sqlite3.Error as error:
        print("Failed to read data from sqlite table", error)
    finally:
        if sqliteConnection:
            sqliteConnection.close()
            print("------------------------------------------------")

asyncio.run(readOwnedGames())

