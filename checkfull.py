import sqlite3

def getAsc(steamid):
    conn = sqlite3.connect(f'/workspaces/software-assessment-3/{steamid}_fulldatabase.db')
    cursor = conn.cursor()
    cursor.execute(f"""SELECT *, CASE WHEN complexity_1v1_sp = 1 AND hours_leftsp >= 0 AND (complexity_1v1_mp != 1 OR hours_leftmp < 0 OR hours_leftsp < hours_leftmp) THEN hours_leftsp WHEN complexity_1v1_mp = 1 AND hours_leftmp >= 0 THEN hours_leftmp ELSE NULL END AS min_time_left FROM "{steamid}_fulldatabase" WHERE (complexity_1v1_sp = 1 AND hours_leftsp >= 0) OR (complexity_1v1_mp = 1 AND hours_leftmp >= 0) ORDER BY min_time_left ASC NULLS LAST LIMIT 8;""")
    return cursor.fetchall()
    

def getDesc(steamid):
    conn = sqlite3.connect(f'/workspaces/software-assessment-3/{steamid}_fulldatabase.db')
    cursor2 = conn.cursor()
    cursor2.execute(f"""SELECT *, CASE WHEN complexity_1v1_sp = 1 AND hours_leftsp >= 0 THEN hours_leftsp WHEN complexity_1v1_mp = 1 AND hours_leftmp >= 0 THEN hours_leftmp ELSE NULL END AS min_time_left FROM "{steamid}_fulldatabase" WHERE (complexity_1v1_sp = 1 AND hours_leftsp >= 0) OR (complexity_1v1_mp = 1 AND hours_leftmp >= 0) ORDER BY min_time_left DESC NULLS LAST LIMIT 8;""")
    return cursor2.fetchall()

def getBeaten(steamid):
    conn3 = sqlite3.connect(f'/workspaces/software-assessment-3/{steamid}_fulldatabase.db')
    cursor3 = conn3.cursor()
    cursor3.execute(f'''SELECT * FROM "{steamid}_fulldatabase" WHERE complexity_1v1_sp = 1 AND complexity_1v1_mp = 0 AND hours_leftsp <= 0 ORDER BY hours_leftsp ASC LIMIT 8;''')
    return cursor3.fetchall()

def getMostPlayed(steamid):
    conn4 = sqlite3.connect(f'/workspaces/software-assessment-3/{steamid}_fulldatabase.db')
    cursor4 = conn4.cursor()
    cursor4.execute(f'''SELECT *, CASE WHEN complexity_1v1_sp = 1 AND hours_leftsp >= 0 AND (complexity_1v1_mp != 1 OR hours_leftmp < 0 OR hours_leftsp < hours_leftmp) THEN hours_leftsp WHEN complexity_1v1_mp = 1 AND hours_leftmp >= 0 THEN hours_leftmp ELSE NULL END AS min_time_left FROM "{steamid}_fulldatabase" WHERE complexity_1v1_sp = 1 OR complexity_1v1_mp = 1 ORDER BY min_time_left ASC NULLS LAST LIMIT 8;''')
    return cursor4.fetchall()