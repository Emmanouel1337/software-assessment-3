import sqlite3

def getAsc(steamid):
    print(steamid)
    conn = sqlite3.connect(f'/workspaces/software-assessment-3/{steamid}_fulldatabase.db')
    cursor = conn.cursor()
    cursor.execute(f"""SELECT *, CASE WHEN complexity_1v1_sp = 1 AND hours_leftsp >= 0 AND (complexity_1v1_mp != 1 OR hours_leftmp < 0 OR hours_leftsp < hours_leftmp) THEN hours_leftsp WHEN complexity_1v1_mp = 1 AND hours_leftmp >= 0 THEN hours_leftmp ELSE NULL END AS min_time_left FROM "{steamid}_fulldatabase" WHERE (complexity_1v1_sp = 1 AND hours_leftsp >= 0) OR (complexity_1v1_mp = 1 AND hours_leftmp >= 0) ORDER BY min_time_left ASC NULLS LAST LIMIT 8;""")
    results = cursor.fetchall()
    cursor.close()
    conn.close()
    return results

def getDesc(steamid):
    conn = sqlite3.connect(f'/workspaces/software-assessment-3/{steamid}_fulldatabase.db')
    cursor2 = conn.cursor()
    cursor2.execute(f"""SELECT *, CASE WHEN complexity_1v1_sp = 1 AND hours_leftsp >= 0 THEN hours_leftsp WHEN complexity_1v1_mp = 1 AND hours_leftmp >= 0 THEN hours_leftmp ELSE NULL END AS min_time_left FROM "{steamid}_fulldatabase" WHERE (complexity_1v1_sp = 1 AND hours_leftsp >= 0) OR (complexity_1v1_mp = 1 AND hours_leftmp >= 0) ORDER BY min_time_left DESC NULLS LAST LIMIT 8;""")
    cursor2.close()
    conn.close()
    return cursor2.fetchall()

def getBeaten(steamid):
    conn = sqlite3.connect(f'/workspaces/software-assessment-3/{steamid}_fulldatabase.db')
    cursor = conn.cursor()
    cursor.execute(f"""SELECT game, hours_leftsp, hours_leftmp FROM "{steamid}_fulldatabase" WHERE (hours_leftsp <= 0 OR hours_leftmp <= 0) ORDER BY GREATEST(hours_leftsp, hours_leftmp) ASC LIMIT 8;""")
    cursor.close()
    conn.close()
    return cursor.fetchall
