import sqlite3

sqliteConnection2 = sqlite3.connect('/workspaces/software-assessment-3/fulldatabase.db')
cursor2 = sqliteConnection2.cursor()
cursor2.execute("SELECT * FROM fulldatabase order by  5;")
print(cursor2.fetchall())

# CREATE TABLE IF NOT EXISTS fulldatabase (game TEXT PRIMARY KEY NOT NULL, similarity FLOAT NOT NULL, complexity_1v1_sp BOOLEAN NOT NULL, complexity_1v1_mp BOOLEAN NOT NULL, main_story FLOAT, completionist FLOAT, mp_time FLOAT, playtime_forever FLOAT, img_logo_url TEXT)

