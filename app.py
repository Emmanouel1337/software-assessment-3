from flask import Flask, render_template, request, redirect
import sqlite3
import users as dbHandler
import checkfull

app = Flask(__name__)

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
            return redirect('/home') 
        else:
            return render_template("index.html", error="Invalid login")
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
    
@app.route("/home", methods=["GET"])
def home():
    if request.method == "GET" and request.args.get("url"):
        url = request.args.get("url", "")
        return redirect(url, code=302)
    list1 = checkfull.getAsc()
    #i is the item for filling in each column
    game_data = []
    for value in list1:
        game_data.append({
            'game': value[0],
            'avg_mainhours_user': value[5],
            'avg_completionist_user': value[9],
            'img_logo_url': value[11]
        })
    return render_template('home.html', game_data=game_data)

if __name__ == '__main__':
    app.run(debug=False)