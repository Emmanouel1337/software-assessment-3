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
    list2 = checkfull.getDesc()
    #i is the item for filling in each column
    game_data = []
    game_data2 = []
    for value in list1:
        game_data_single = {
            'game': value[0],
            'img_logo_url': value[11]
        }
        sp_works = value[2] == True and value[12] is not None and value[12] >= 0
        mp_works = value[3] == True and value[14] is not None and value[14] >= 0
        if sp_works:
            game_data_single.update({
                'avg_mainhours_user': value[5],
                'avg_completionist_user': value[9],
                'timetobeat': value[12],
                'timetocomplete': value[13]
            })

        elif mp_works:
            game_data_single.update({
                'avg_mp_user': value[7],
                'timefromavgmp': value[14]
            })
        game_data.append(game_data_single)

    for value in list2:
        game_data_single2 = {
            'game': value[0],
            'img_logo_url': value[11]
        }
        sp_works = value[2] == True and value[12] is not None and value[12] >= 0
        mp_works = value[3] == True and value[14] is not None and value[14] >= 0
        if sp_works:
            game_data_single2.update({
                'avg_mainhours_user': value[5],
                'avg_completionist_user': value[9],
                'timetobeat': value[12],
                'timetocomplete': value[13]
            })

        elif mp_works:
            game_data_single2.update({
                'avg_mp_user': value[7],
                'timefromavgmp': value[14]
            })
        game_data2.append(game_data_single2)
    return render_template('home.html', game_data=game_data, game_data2=game_data2)

if __name__ == '__main__':
    app.run(debug=False)