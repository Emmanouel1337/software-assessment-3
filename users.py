import sqlite3

def insertUser(username, password, email, steamid):
    conn = sqlite3.connect('users.db')
    c = conn.cursor()
    c.execute('INSERT INTO users (username, password, email, steamid) VALUES(?, ?, ?, ?)', (username, password, email, steamid))
    conn.commit()
    conn.close()