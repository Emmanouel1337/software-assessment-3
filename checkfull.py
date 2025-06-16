import sqlite3

def getAsc():
    conn = sqlite3.connect('/workspaces/software-assessment-3/fulldatabase.db')
    cursor = conn.cursor()
    cursor.execute("SELECT * FROM fulldatabase WHERE (complexity_1v1_sp = 1 AND hours_leftsp >= 0) OR (complexity_1v1_mp = 1 AND hours_leftmp >= 0) ORDER BY hours_leftsp DESC LIMIT 8;")
    results = cursor.fetchall()
    cursor.close()
    conn.close()
    return results

def getDesc():
    sqliteConnection2 = sqlite3.connect('/workspaces/software-assessment-3/fulldatabase.db')
    cursor2 = sqliteConnection2.cursor()
    cursor2.execute("SELECT * FROM fulldatabase WHERE (complexity_1v1_sp = 1 AND hours_leftsp >= 0) OR (complexity_1v1_mp = 1 AND hours_leftmp >= 0) ORDER BY hours_leftsp ASC limit 8;")
    return cursor2.fetchall()


