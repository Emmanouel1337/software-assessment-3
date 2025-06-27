import sqlite3

sqliteConnection2 = sqlite3.connect('76561198967236244_fulldatabase.db')
cursor2 = sqliteConnection2.cursor()
cursor2.execute("SELECT * FROM '76561198967236244_fulldatabase' WHERE game = 'derpy dinos';")
print(cursor2.fetchall())