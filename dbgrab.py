import sqlite3
from howlongtobeatpy import HowLongToBeat

async def readOwnedGames(targetsteamid):
#connecting to table
    try:
        sqliteConnection = sqlite3.connect('player_summaries_db\owned_games.db')
        cursor = sqliteConnection.cursor()

        sqliteConnection2 = sqlite3.connect('player_summaries_db\player_summary.db')
        cursor2 = sqliteConnection2.cursor()

        sqlite_select_query2 = f"""SELECT avatar, steamid FROM player_summaries WHERE steamid = ?"""
        cursor2.execute(sqlite_select_query2, (targetsteamid,))
        records = cursor2.fetchall()

        for row in records:
            avatar = row[0]
            steamid = row[1]
            print("\nAvatar: ", avatar, "\nSteamID:", steamid)
            table_name = f"{steamid}_fulldatabase"
            dbfile = f'{steamid}_fulldatabase.db'

            conn = sqlite3.connect(dbfile)
            c = conn.cursor()
            c.execute(f"""CREATE TABLE IF NOT EXISTS "{table_name}" (game TEXT PRIMARY KEY NOT NULL, similarity FLOAT NOT NULL, complexity_1v1_sp BOOLEAN NOT NULL, complexity_1v1_mp BOOLEAN NOT NULL, main_story FLOAT, avg_mainhours_user FLOAT, mp_time FLOAT, avg_mp_user FLOAT, completionist FLOAT, avg_completionist_user FLOAT, playtime_forever FLOAT, img_logo_url TEXT, hours_leftsp FLOAT, hours_leftcompletionist FLOAT, hours_leftmp FLOAT, originalgamename TEXT)""")

            sqlite_select_query = f"""SELECT name, playtime_forever, img_logo_url FROM owned_games"""
            cursor.execute(sqlite_select_query)
            records = cursor.fetchall()

            print('connected')

        #printing out name and minutes played
            for row in records:
        #reseting all back to 0 if criteria is not met
                avg_completionist_user = None
                hours_leftcompletionist = None
                avg_mainhours_user = None
                hours_leftsp = None
                avg_mp_user = None
                hours_leftmp = None
                hours = round(int(row[1]) / 60, 1)
                game = row[0]
                img_logo_url = row[2]
                originalgamename = game
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
                    if hours >= 0 and best_element.completionist > 0:
                        avg_completionist_user = hours / best_element.completionist
                        hours_leftcompletionist = best_element.completionist - hours 
                    if hours >= 0 and best_element.main_story > 0:
                        avg_mainhours_user = hours / best_element.main_story
                        hours_leftsp = best_element.main_story - hours 
                    if hours >= 0 and best_element.mp_time > 0:
                        avg_mp_user = hours / best_element.mp_time
                        hours_leftmp = best_element.mp_time - hours
                    if best_element.similarity >= 0.3:
                        print("Average time to beat:\n")
                #checking if the game is single player / co-op, or multiplayer
                        if best_element.complexity_lvl_sp == True:
                            print('Game is singleplayer')
                            print(f'Main Story hours: {best_element.main_story}')
                            print(f'Completionist hours: {best_element.completionist}')
                            print(f'Time left to beat: {hours_leftsp}')
                            print(f'Time left to completion: {hours_leftcompletionist}')
                            c.execute(f"""INSERT INTO "{table_name}" (game, similarity, complexity_1v1_sp, complexity_1v1_mp, main_story, completionist, avg_completionist_user, avg_mainhours_user, playtime_forever, img_logo_url, hours_leftsp, hours_leftcompletionist, originalgamename) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) ON CONFLICT (game) DO NOTHING""", (game, best_element.similarity, best_element.complexity_lvl_sp, best_element.complexity_lvl_mp, best_element.main_story, best_element.completionist, avg_completionist_user, avg_mainhours_user, hours, img_logo_url, hours_leftsp, hours_leftcompletionist, originalgamename))
                            conn.commit()
                            print('------------------------------------------------------------------------------------\n')
                        if best_element.complexity_lvl_mp == True:
                            print('Game is multiplayer')
                            print(f'Avg invested multiplayer hours: {best_element.mp_time}')
                            print(f'Time left to beat: {hours_leftmp}')
                            c.execute(f"""INSERT INTO "{table_name}" (game, similarity, complexity_1v1_sp, complexity_1v1_mp, mp_time, avg_mp_user, playtime_forever, img_logo_url, hours_leftmp, main_story, completionist, avg_mainhours_user, avg_completionist_user, hours_leftsp, hours_leftcompletionist, originalgamename) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) ON CONFLICT(game) DO UPDATE SET similarity = excluded.similarity, complexity_1v1_sp = excluded.complexity_1v1_sp, complexity_1v1_mp = excluded.complexity_1v1_mp, mp_time = excluded.mp_time, avg_mp_user = excluded.avg_mp_user, playtime_forever = excluded.playtime_forever, img_logo_url = excluded.img_logo_url, hours_leftmp = excluded.hours_leftmp, main_story = excluded.main_story, completionist = excluded.completionist, avg_mainhours_user = excluded.avg_mainhours_user, avg_completionist_user = excluded.avg_completionist_user, hours_leftsp = excluded.hours_leftsp, hours_leftcompletionist = excluded.hours_leftcompletionist, originalgamename = excluded.originalgamename""", (game, best_element.similarity, best_element.complexity_lvl_sp, best_element.complexity_lvl_mp, best_element.mp_time, avg_mp_user, hours, img_logo_url, hours_leftmp, best_element.main_story, best_element.completionist, avg_mainhours_user, avg_completionist_user, hours_leftsp, hours_leftcompletionist, originalgamename))
                            conn.commit()
                            print('------------------------------------------------------------------------------------\n')
                    else:
                        print(f"low similarity {best_element.similarity} for {game}")
                else:
                    print('no results found')
                    print('------------------------------------------------------------------------------------\n')
            cursor.close()
        
        sqliteConnection3 = sqlite3.connect('player_summaries_db/owned_games2.db')
        cursor3 = sqliteConnection3.cursor()

        sqliteConnection4 = sqlite3.connect('player_summaries_db/player_summary2.db')
        cursor4 = sqliteConnection4.cursor()

        sqlite_select_query3 = f"""SELECT avatar, steamid FROM player_summaries WHERE steamid = ?"""
        cursor4.execute(sqlite_select_query3, (targetsteamid,))
        records = cursor4.fetchall()

        for row in records:
            avatar = row[0]
            steamid = row[1]
            print("\nAvatar: ", avatar, "\nSteamID:", steamid)
            table_name = f"{steamid}_fulldatabase"
            dbfile = f'{steamid}_fulldatabase.db'

            conn = sqlite3.connect(dbfile)
            c = conn.cursor()
            c.execute(f"""CREATE TABLE IF NOT EXISTS "{table_name}" (game TEXT PRIMARY KEY NOT NULL, similarity FLOAT NOT NULL, complexity_1v1_sp BOOLEAN NOT NULL, complexity_1v1_mp BOOLEAN NOT NULL, main_story FLOAT, avg_mainhours_user FLOAT, mp_time FLOAT, avg_mp_user FLOAT, completionist FLOAT, avg_completionist_user FLOAT, playtime_forever FLOAT, img_logo_url TEXT, hours_leftsp FLOAT, hours_leftcompletionist FLOAT, hours_leftmp FLOAT, originalgamename TEXT)""")

            sqlite_select_query = f"""SELECT name, playtime_forever, img_logo_url FROM owned_games"""
            cursor3.execute(sqlite_select_query)
            records = cursor3.fetchall()

            print('connected')

        #printing out name and minutes played
            for row in records:
        #reseting all back to 0 if criteria is not met
                avg_completionist_user = None
                hours_leftcompletionist = None
                avg_mainhours_user = None
                hours_leftsp = None
                avg_mp_user = None
                hours_leftmp = None
                hours = round(int(row[1]) / 60, 1)
                game = row[0]
                img_logo_url = row[2]
                originalgamename = game
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
                    if hours >= 0 and best_element.completionist > 0:
                        avg_completionist_user = hours / best_element.completionist
                        hours_leftcompletionist = best_element.completionist - hours 
                    if hours >= 0 and best_element.main_story > 0:
                        avg_mainhours_user = hours / best_element.main_story
                        hours_leftsp = best_element.main_story - hours 
                    if hours >= 0 and best_element.mp_time > 0:
                        avg_mp_user = hours / best_element.mp_time
                        hours_leftmp = best_element.mp_time - hours
                    if best_element.similarity >= 0.3:
                        print("Average time to beat:\n")
                #checking if the game is single player / co-op, or multiplayer
                        if best_element.complexity_lvl_sp == True:
                            print('Game is singleplayer')
                            print(f'Main Story hours: {best_element.main_story}')
                            print(f'Completionist hours: {best_element.completionist}')
                            print(f'Time left to beat: {hours_leftsp}')
                            print(f'Time left to completion: {hours_leftcompletionist}')
                            c.execute(f"""INSERT INTO "{table_name}" (game, similarity, complexity_1v1_sp, complexity_1v1_mp, main_story, completionist, avg_completionist_user, avg_mainhours_user, playtime_forever, img_logo_url, hours_leftsp, hours_leftcompletionist, originalgamename) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) ON CONFLICT (game) DO NOTHING""", (game, best_element.similarity, best_element.complexity_lvl_sp, best_element.complexity_lvl_mp, best_element.main_story, best_element.completionist, avg_completionist_user, avg_mainhours_user, hours, img_logo_url, hours_leftsp, hours_leftcompletionist, originalgamename))
                            conn.commit()
                            print('------------------------------------------------------------------------------------\n')
                        if best_element.complexity_lvl_mp == True:
                            print('Game is multiplayer')
                            print(f'Avg invested multiplayer hours: {best_element.mp_time}')
                            print(f'Time left to beat: {hours_leftmp}')
                            c.execute(f"""INSERT INTO "{table_name}" (game, similarity, complexity_1v1_sp, complexity_1v1_mp, mp_time, avg_mp_user, playtime_forever, img_logo_url, hours_leftmp, main_story, completionist, avg_mainhours_user, avg_completionist_user, hours_leftsp, hours_leftcompletionist, originalgamename) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?) ON CONFLICT(game) DO UPDATE SET similarity = excluded.similarity, complexity_1v1_sp = excluded.complexity_1v1_sp, complexity_1v1_mp = excluded.complexity_1v1_mp, mp_time = excluded.mp_time, avg_mp_user = excluded.avg_mp_user, playtime_forever = excluded.playtime_forever, img_logo_url = excluded.img_logo_url, hours_leftmp = excluded.hours_leftmp, main_story = excluded.main_story, completionist = excluded.completionist, avg_mainhours_user = excluded.avg_mainhours_user, avg_completionist_user = excluded.avg_completionist_user, hours_leftsp = excluded.hours_leftsp, hours_leftcompletionist = excluded.hours_leftcompletionist, originalgamename = excluded.originalgamename""", (game, best_element.similarity, best_element.complexity_lvl_sp, best_element.complexity_lvl_mp, best_element.mp_time, avg_mp_user, hours, img_logo_url, hours_leftmp, best_element.main_story, best_element.completionist, avg_mainhours_user, avg_completionist_user, hours_leftsp, hours_leftcompletionist, originalgamename))
                            conn.commit()
                            print('------------------------------------------------------------------------------------\n')
                    else:
                        print(f"low similarity {best_element.similarity} for {game}")
                else:
                    print('no results found')
                    print('------------------------------------------------------------------------------------\n')
            cursor3.close()

#just incase an error occurs
    except sqlite3.Error as error:
        print("Failed to read data from sqlite table", error)
    finally:
        if sqliteConnection:
            sqliteConnection.close()
            print("------------------------------------------------")