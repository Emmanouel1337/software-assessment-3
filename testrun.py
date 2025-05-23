import sqlite3
from howlongtobeatpy import HowLongToBeat
import asyncio

def readOwnedGames():
#connecting to table
    try:
        sqliteConnection = sqlite3.connect('/workspaces/software-assessment-3/player_summaries_db/owned_gamessuper.db')
        cursor = sqliteConnection.cursor()
        print('connected')

#generating query, printing query
        sqlite_select_query = """SELECT name, playtime_forever FROM owned_games WHERE name='Apex Legends'"""
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

results = HowLongToBeat(input_auto_filter_times = True).search('Apex Legends')
print("Average time to beat:\n")
if results:
    for entry in results:
        print(f"Main: {entry.mp_time}")