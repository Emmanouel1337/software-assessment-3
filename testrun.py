import sqlite3
from howlongtobeatpy import HowLongToBeat
import asyncio

def readOwnedGames():
#connecting to table
    try:
        sqliteConnection = sqlite3.connect('/workspaces/software-assessment-3/player_summaries_db/owned_games.db')
        cursor = sqliteConnection.cursor()
        print('connected')

#generating query, printing query
        sqlite_select_query = f"""SELECT name, playtime_forever FROM owned_games WHERE name='Team Fortress 2'"""
        cursor.execute(sqlite_select_query)
        records = cursor.fetchall()
        for row in records:
            print("Name: ", row[0], "\nMinutes: ", row[1])
            print('\n')

        cursor.close()

#just incase an error occurs
    except sqlite3.Error as error:
        print("Failed to read data from sqlite table", error)
    finally:
        if sqliteConnection:
            sqliteConnection.close()
            print("------------------------------------------------")

readOwnedGames()

results = HowLongToBeat(input_auto_filter_times = True).search('Team Fortress 2')
print("Average time to beat:\n")
if results:
    for entry in results:
        #checking if the game is single player / co-op, or multiplayer
        if entry.complexity_lvl_sp == True or entry.complexity_lvl_co == True:
            print('Game is singleplayer or co-op')
            print(f'Main Story hours: {entry.main_story}')
            print(f'Completionist hours: {entry.completionist}')
        if entry.complexity_lvl_mp == True:
            print('Game is multiplayer')
            print(f'Avg invested multiplayer hours: {entry.mp_time}')
        break
        