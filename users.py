import sqlite3

def insertUser(username, password, email, steamid):
    conn = sqlite3.connect('users.db')
    c = conn.cursor()
    c.execute('CREATE TABLE IF NOT EXISTS users (userid INTEGER PRIMARY KEY AUTOINCREMENT, username TEXT NOT NULL, password TEXT NOT NULL, email TEXT NOT NULL, steamid TEXT NOT NULL)')
    c.execute('INSERT INTO users (username, password, email, steamid) VALUES(?, ?, ?, ?)', (username, password, email, steamid))
    conn.commit()
    conn.close()

def retrieveUsers(username, password):
    conn = sqlite3.connect('users.db')
    c = conn.cursor()
    c.execute('SELECT * FROM users WHERE username = ?', (username,))
    if c.fetchone() == None:
        conn.close()
        return False
    else:
        conn = sqlite3.connect('users.db')
        c = conn.cursor()
        c.execute("SELECT * FROM users WHERE password = ?", (password,))
        if c.fetchone() == None:
            conn.close()
            return False
        else:
            conn.close()
            return True

def retrieveSteamId(steamid):
    conn = sqlite3.connect('users.db')
    c = conn.cursor()
    c.execute('SELECT * FROM users WHERE steamid = ?', (steamid,))
    if c.fetchone() == None:
        conn.close()
        return steamid
    else:
        conn.close()