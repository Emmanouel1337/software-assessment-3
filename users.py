import sqlite3

def insertUser(username, password, email, steamid):
    conn = sqlite3.connect('users.db')
    c = conn.cursor()
    c.execute('CREATE TABLE IF NOT EXISTS users (userid INTEGER PRIMARY KEY AUTOINCREMENT, username TEXT NOT NULL UNIQUE, password TEXT NOT NULL, email TEXT NOT NULL UNIQUE, steamid TEXT NOT NULL)')
    try:
        c.execute('INSERT INTO users (username, password, email, steamid) VALUES(?, ?, ?, ?)', (username, password, email, steamid))
        conn.commit()
        return True
    except sqlite3.IntegrityError:
        return False
    finally:
        conn.close()

def retrieveUsers(username, password):
    conn = sqlite3.connect('users.db')
    c = conn.cursor()
    c.execute('SELECT userid FROM users WHERE username = ? AND password = ?', (username, password))
    if c.fetchone() == None:
        conn.close()
        return False
    else:
        conn.close()
        return True

def retrieveSteamId(username, password):
    conn = sqlite3.connect('users.db')
    c = conn.cursor()
    c.execute('SELECT steamid FROM users WHERE username = ? AND password = ?', (username, password))
    row = c.fetchone()
    conn.close()
    return row[0] if row else None

def retrieveUsername(steamid):
    conn = sqlite3.connect('users.db')
    c = conn.cursor()
    c.execute('SELECT username FROM users WHERE steamid = ?', (steamid,))
    row = c.fetchone()
    conn.close()
    return row[0] if row else "Username"