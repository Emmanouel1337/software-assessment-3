import sqlite3 
import json
import re

#first need to convert the player_summary into a SQL table which can be queried from
#most of the JSON to SQL table conversion is sourced from claude and chatgpt.

#create table

con = sqlite3.connect('userhours.db')

#still a json string, extract the json string
with open('player_summary.sql', 'r') as f:
    sql_script = f.read()

#using regex, get the JSON string, will be parsed later, matching. 

json_data_match = re.search(r"VALUES\s*\(\s*'(.*?)'\s*\);", sql_script, re.DOTALL)
json_str = json_data_match.group(1).encode('utf-8').decode('unicode_escape')

#now with all the matching data, parse the array

player = json.loads(json_str)

#now to connect to SQLite memory, this will later be used in the table to create a normalised table, rather than being in JSON strings

conn = sqlite3.connect("players.db")
cursor = conn.cursor()

#now to create the normal table, the converted JSON strings will be put here. all data will not be used, only some

cursor.execute('''
    CREATE TABLE player_summary (
        steamid TEXT,
        avatar TEXT,
        avatarmedium TEXT,
        avatarfull TEXT,
        avatarhash TEXT,
    )
''')

cursor.execute('''
    CREATE TABLE user_hours_data (
        
    )
''')

#now to insert parsed player data into the table, i have 2 profiles at the moment. for now we will only do this for ONE.

for player in players:
    cursor.execute('''
        INSERT INTO player_summary (
            steamid,
            avatar,
            avatarmedium,
            avatarfull,
            avatarhash,
        ) VALUES (?, ?, ?, ?, ?,)
    ''', (
        player.get('steamid'),
        player.get('avatar'),
        player.get('avatarmedium'),
        player.get('avatarfull'),
        player.get('avatarhash')
    ))

