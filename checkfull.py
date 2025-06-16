import sqlite3

def getAsc():
    conn = sqlite3.connect('/workspaces/software-assessment-3/fulldatabase.db')
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM fulldatabase ORDER BY playtime_forever DESC LIMIT 4;")
    results = cursor.fetchall()
    cursor.close()
    conn.close()
    return results

def getDesc():
    sqliteConnection2 = sqlite3.connect('/workspaces/software-assessment-3/fulldatabase.db')
    cursor2 = sqliteConnection2.cursor()
    cursor2.execute("SELECT * FROM fulldatabase order by playtime_forever asc limit 4;")
    return cursor2.fetchall()


