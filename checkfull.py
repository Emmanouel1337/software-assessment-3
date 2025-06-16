import sqlite3

def getAsc():
    sqliteConnection2 = sqlite3.connect('/workspaces/software-assessment-3/fulldatabase.db')
    cursor2 = sqliteConnection2.cursor()
    cursor2.execute("SELECT * FROM fulldatabase order by playtime_forever desc limit 4;")
    return cursor2.fetchall()

def getDesc():
    sqliteConnection2 = sqlite3.connect('/workspaces/software-assessment-3/fulldatabase.db')
    cursor2 = sqliteConnection2.cursor()
    cursor2.execute("SELECT * FROM fulldatabase order by playtime_forever asc limit 4;")
    list2 = cursor2.fetchall()


