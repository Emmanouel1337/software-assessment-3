import sqlite3
from howlongtobeatpy import HowLongToBeat
import asyncio

async def readOwnedGames():
#connecting to table
    try:
        sqliteConnection = sqlite3.connect('/workspaces/software-assessment-3/player_summaries_db/owned_games.db')
        cursor = sqliteConnection.cursor()

        sqliteConnection2 = sqlite3.connect('/workspaces/software-assessment-3/player_summaries_db/player_summary.db')
        cursor2 = sqliteConnection2.cursor()

        sqlite_select_query2 = f"""SELECT personaname, profileurl, avatar FROM player_summaries"""
        cursor2.execute(sqlite_select_query2)
        records2 = cursor2.fetchall()

        conn = sqlite3.connect('fulldatabase.db')
        c = conn.cursor()
        c.execute('CREATE TABLE IF NOT EXISTS fulldatabase (game TEXT PRIMARY KEY NOT NULL, similarity FLOAT NOT NULL, complexity_1v1_sp BOOLEAN NOT NULL, complexity_1v1_mp BOOLEAN NOT NULL, main_story FLOAT, avg_mainhours_user FLOAT, mp_time FLOAT, avg_mp_user FLOAT, completionist FLOAT, avg_completionist_user FLOAT, playtime_forever FLOAT, img_logo_url TEXT)')

        sqlite_select_query = f"""SELECT name, playtime_forever, img_logo_url FROM owned_games"""
        cursor.execute(sqlite_select_query)
        records = cursor.fetchall()

        for row in records2:
            personaname = row[0]
            profileurl = row[1]
            avatar = row[2]
            print("Username: ", personaname, "\nProfile URL: ", profileurl, "\nAvatar: ", avatar)

        print('connected')

    #printing out name and minutes played
        for row in records:
            hours = round(int(row[1]) / 60, 1)
            game = row[0]
            img_logo_url = row[2]
            print("Name: ", game, "\nHours: ", hours)
        #getting the game names, and then sorting them into something that HowLongToBeat can utilise to search from
            count = 0
            check_ord = []
            for char in game:
                if ord(char) > 126 or ord(char) < 32:
                    check_ord.append(char)
                else:
                    pass
                count+=1
            for i in check_ord:
                game = game.replace(i, '')
            print('\n')
            game = game.lower()
        #getting the HowLongToBeat API and querying that, then printing the information, depending on if it is singleplayer or multiplayer
            results_list = await HowLongToBeat().async_search(game)
            if results_list:
                best_element = max(results_list, key=lambda element: element.similarity)
                if hours > 0 and best_element.completionist > 0:
                    avg_completionist_user = hours / best_element.completionist
                if hours > 0 and best_element.main_story > 0:
                    avg_mainhours_user = hours / best_element.main_story
                if hours > 0 and best_element.mp_time > 0:
                    avg_mp_user = hours / best_element.mp_time
                if best_element.similarity >= 0.3:
                    print("Average time to beat:\n")
            #checking if the game is single player / co-op, or multiplayer
                    if best_element.complexity_lvl_sp == True:
                        print('Game is singleplayer')
                        print(f'Main Story hours: {best_element.main_story}')
                        print(f'Completionist hours: {best_element.completionist}')
                        c.execute('INSERT INTO fulldatabase (game, similarity, complexity_1v1_sp, complexity_1v1_mp, main_story, completionist, avg_completionist_user, avg_mainhours_user, playtime_forever, img_logo_url) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?) ON CONFLICT (game) DO NOTHING', (game, best_element.similarity, best_element.complexity_lvl_sp, best_element.complexity_lvl_mp, best_element.main_story, best_element.completionist, avg_completionist_user, avg_mainhours_user, hours, img_logo_url))
                        conn.commit()
                        print('------------------------------------------------------------------------------------\n')
                    if best_element.complexity_lvl_mp == True:
                        print('Game is multiplayer')
                        print(f'Avg invested multiplayer hours: {best_element.mp_time}')
                        c.execute('INSERT INTO fulldatabase (game, similarity, complexity_1v1_sp, complexity_1v1_mp, mp_time, avg_mp_user, playtime_forever, img_logo_url) VALUES (?, ?, ?, ?, ?, ?, ?, ?) ON CONFLICT(game) DO UPDATE SET similarity = excluded.similarity, complexity_1v1_sp = excluded.complexity_1v1_sp, complexity_1v1_mp = excluded.complexity_1v1_mp, avg_mp_user = excluded.avg_mp_user, mp_time = excluded.mp_time, playtime_forever = excluded.playtime_forever, img_logo_url = excluded.img_logo_url', (game, best_element.similarity, best_element.complexity_lvl_sp, best_element.complexity_lvl_mp, best_element.mp_time, avg_mp_user, hours, img_logo_url))
                        conn.commit()
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

