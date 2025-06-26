import sqlite3

sqliteConnection2 = sqlite3.connect('/software-assessment-3/fulldatabase.db')
cursor2 = sqliteConnection2.cursor()
cursor2.execute("SELECT * FROM fulldatabase LIMIT 5;")
print(cursor2.fetchall())