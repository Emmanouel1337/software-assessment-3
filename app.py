from flask import Flask, render_template, request, redirect
import sqlite3
import users as dbHandler
import checkfull

app = Flask(__name__)

conn = sqlite3.connect('users.db')
c = conn.cursor()
c.execute('CREATE TABLE IF NOT EXISTS users (userid INTEGER PRIMARY KEY AUTOINCREMENT, username TEXT NOT NULL, password TEXT NOT NULL, email TEXT NOT NULL, steamid TEXT NOT NULL)')

#check how to do userid random gen on acc creation

@app.route("/", methods=["GET"])
def root():
    return redirect("/index")

@app.route("/index", methods=["GET", "POST"])
def login():
    if request.method == "GET" and request.args.get("url"):
        url = request.args.get("url", "")
        return redirect(url, code=302)
    if request.method=="POST":
        username = request.form['username']
        password = request.form['password']
        validAccount = dbHandler.retrieveUsers(username, password)
        if validAccount:
            return render_template("home.html")
        else:
            return(render_template("index.html"))
    else:
        return(render_template("index.html"))
    
@app.route("/register", methods=["GET", "POST"])
def register():
    if request.method == "GET" and request.args.get("url"):
        url = request.args.get("url", "")
        return redirect(url, code=302)
    if request.method=="POST":
        username = request.form['username']
        password = request.form['password']
        steamid = request.form['steamid']
        email = request.form['email']
        users = dbHandler.insertUser(username, password, steamid, email)
        return render_template('register.html', users=users)
    else:
        return render_template('register.html')
    
@app.route("/home", methods=["GET", "POST"])
def register():
    if request.method == "GET" and request.args.get("url"):
        url = request.args.get("url", "")
        return redirect(url, code=302)
    if request.method=="POST":
        list1 = checkfull.getAsc()
        for i in range(len(list1)):
            #i is the item for filling in each column
            pass
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