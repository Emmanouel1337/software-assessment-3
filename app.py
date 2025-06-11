from flask import Flask, render_template, request
import sqlite3
import users as dbHandler

app = Flask(__name__)

conn = sqlite3.connect('users.db')
c = conn.cursor()
c.execute('CREATE TABLE IF NOT EXISTS users (userid INTEGER PRIMARY KEY AUTOINCREMENT, username TEXT NOT NULL, password TEXT NOT NULL, email TEXT NOT NULL, steamid TEXT NOT NULL)')

#check how to do userid random gen on acc creation

@app.route("/", methods=["GET", "POST"])
def login():
    return render_template("login.html")

@app.route("/register", methods=["GET", "POST"])
def register():
    if request.method=="POST":
        username = request.form['username']
        password = request.form['password']
        steamid = request.form['steamid']
        email = request.form['email']
        users = dbHandler.insertUser(username, password, steamid, email)
        return render_template('register.html', users=users)
    else:
        return render_template('register.html')
    
if __name__ == '__main__':
    app.run(debug=False)