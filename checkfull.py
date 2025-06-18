import users
import sqlite3

def getAsc():
    conn = sqlite3.connect(f'/workspaces/software-assessment-3/{users.steamid}_fulldatabase.db')
    cursor = conn.cursor()
    cursor.execute("""SELECT *, CASE WHEN complexity_1v1_sp = 1 AND hours_leftsp >= 0 AND (complexity_1v1_mp != 1 OR hours_leftmp < 0 OR hours_leftsp < hours_leftmp) THEN hours_leftsp WHEN complexity_1v1_mp = 1 AND hours_leftmp >= 0 THEN hours_leftmp ELSE NULL END AS min_time_left FROM fulldatabase WHERE (complexity_1v1_sp = 1 AND hours_leftsp >= 0) OR (complexity_1v1_mp = 1 AND hours_leftmp >= 0) ORDER BY min_time_left ASC NULLS LAST LIMIT 8;""")
    results = cursor.fetchall()
    cursor.close()
    conn.close()
    return results

def getDesc():
    sqliteConnection2 = sqlite3.connect(f'/workspaces/software-assessment-3/{users.steamid}_fulldatabase.db')
    cursor2 = sqliteConnection2.cursor()
    cursor2.execute("SELECT *, CASE WHEN complexity_1v1_sp = 1 AND hours_leftsp >= 0 THEN hours_leftsp WHEN complexity_1v1_mp = 1 AND hours_leftmp >= 0 THEN hours_leftmp ELSE NULL END AS min_time_left FROM fulldatabase WHERE (complexity_1v1_sp = 1 AND hours_leftsp >= 0) OR (complexity_1v1_mp = 1 AND hours_leftmp >= 0) ORDER BY min_time_left DESC NULLS LAST LIMIT 8;")
    return cursor2.fetchall()


