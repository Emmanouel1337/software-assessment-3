from flask import Flask, render_template, request, redirect, session, url_for
import users as dbHandler
import checkfull
import asyncio
import dbgrab
import socket

# Running flask
app = Flask(__name__)

# Creating the secret key to use for sessions, security
app.secret_key = "woeuirhy9873wer249fhgjKL32NFW?!@#!#4234"

# An attempt to try to make the PWA runtime longer so the user doesnt run into an error upon registration, does not work.
app.config['SEND_FILE_MAX_AGE_DEFAULT'] = 0
app.config['PERMANENT_SESSION_LIFETIME'] = 3600
socket.setdefaulttimeout(300)

# App Routes
@app.route("/", methods=["GET"])
def root():
    return redirect("/index")

@app.route("/index", methods=["GET", "POST"])
def index():
    if request.method == "GET" and request.args.get("url"):
        url = request.args.get("url", "")
        return redirect(url, code=302)
    # Checking for valid account
    if request.method=="POST":
        username = request.form['username']
        password = request.form['password'] 
        validAccount = dbHandler.retrieveUsers(username, password)
        if validAccount:
            steamid = dbHandler.retrieveSteamId(username, password)
            session['steamid'] = steamid
            return redirect(url_for('home', steamid=steamid)) 
        else:
            return render_template("index.html", error="Invalid login")
    else:
        return(render_template("index.html"))
    
@app.route("/register", methods=["GET", "POST"])
def register():
    if request.method == "GET" and request.args.get("url"):
        url = request.args.get("url", "")
        return redirect(url, code=302)
    # Getting form information
    if request.method=="POST":
        username = request.form['username']
        password = request.form['password']
        steamid = request.form['steamid']
        email = request.form['email']
        valid = dbHandler.insertUser(username, password, email, steamid)
        # Checking for duplicates, and if works, readOwnedGames()
        allowed_ids = {"76561198967236244", "76561198260317680"}
        if valid and steamid in allowed_ids:
            asyncio.run(dbgrab.readOwnedGames(steamid))
            return render_template('register.html', users=valid, email=email)
        else:
            return render_template('register.html', duplicateusername = "Invalid input. E-mail, username or steamid is invalid or already exists.")
    else:
        return render_template("register.html")
    
@app.route("/home", methods=["GET"])
def home():
    steamid = session.get('steamid')
    if not steamid:
        return redirect('/index')
    username = dbHandler.retrieveUsername(steamid)
    list1 = checkfull.getAsc(steamid)
    list2 = checkfull.getDesc(steamid)
    #i is the item for filling in each column
    game_data = []
    game_data2 = []
    # Sorting games
    for i, value in enumerate(list1, start=1):
        game_data_single = {
            'rank': i,
            'originalgamename': value[15],
            'img_logo_url': value[11],
            'timetobeat': None,
            'timetocomplete': None,
            'timefromavgmp': None
        }
        sp_works = value[2] == True and value[12] is not None and value[12] >= 0
        mp_works = value[3] == True and value[14] is not None and value[14] >= 0
        if sp_works:
            game_data_single.update({
                'avg_mainhours_user': value[5],
                'avg_completionist_user': value[9],
                'timetobeat': round(abs(value[12]), 1) if value[12] is not None else None,
                'timetocomplete': round(abs(value[13]), 1) if value[13] is not None else None,
            })
        elif mp_works:
            game_data_single.update({
                'avg_mp_user': round(abs(value[7]), 1) if value[7] is not None else None,
                'timefromavgmp': round(abs(value[14]), 1) if value[14] is not None else None
            })
        game_data.append(game_data_single)

    for i, value in enumerate(list2, start=1):
        game_data_single2 = {
            'rank': i,
            'originalgamename': value[15],
            'img_logo_url': value[11]
        }
        sp_works = value[2] == True and value[12] is not None and value[12] >= 0
        mp_works = value[3] == True and value[14] is not None and value[14] >= 0
        if sp_works:
            game_data_single2.update({
                'avg_mainhours_user': value[5],
                'avg_completionist_user': value[9],
                'timetobeat': round(abs(value[12]), 1) if value[12] is not None else None,
                'timetocomplete': round(abs(value[13]), 1) if value[13] is not None else None,
            })

        elif mp_works:
            game_data_single2.update({
                'avg_mp_user': value[7],
                'timefromavgmp': round(abs(value[14]), 1) if value[14] is not None else None
            })
        game_data2.append(game_data_single2)
    return render_template('home.html', game_data=game_data, game_data2=game_data2, username=username)

@app.route("/beaten", methods=["GET"])
def beaten():
    steamid = session.get('steamid')
    if not steamid:
        return redirect('/index')
    username = dbHandler.retrieveUsername(steamid)
    list3 = checkfull.getBeaten(steamid)
    list4 = checkfull.getMostPlayed(steamid)
    #i is the item for filling in each column
    game_data3 = []
    # Sorting games
    for i, value in enumerate(list3, start=1):
        if value[2] == True and value[3] == False and value[12] is not None and value[12] <= 0:
            game_data_single3 = {
                'rank': i,
                'originalgamename': value[15],
                'img_logo_url': value[11],
                'avg_mainhours_user': value[5],
                'avg_completionist_user': value[9],
                'timetobeat': round(abs(value[12]), 1) if value[12] is not None else None,
                'timetocomplete': round(abs(value[13]), 1) if value[13] is not None else None,
            }
            game_data3.append(game_data_single3)
    game_data4 = []
    for i, value in enumerate(list4, start=1):
            game_data_single4 = {
                'rank': i,
                'originalgamename': value[15],
                'img_logo_url': value[11],
                'playtime_forever': round(value[10]) if value[10] is not None else None,
            }
            game_data4.append(game_data_single4)
    return render_template('beaten.html', game_data3=game_data3, game_data4=game_data4, username=username)

@app.route("/backlog", methods=["GET"])
def backlog():
    steamid = session.get('steamid')
    if not steamid:
        return redirect('/index')
    username = dbHandler.retrieveUsername(steamid)
    list1 = checkfull.getAsc(steamid)
    #i is the item for filling in each column
    game_data = []
    # Sorting games
    for i, value in enumerate(list1, start=1):
        game_data_single = {
            'rank': i,
            'originalgamename': value[15],
            'img_logo_url': value[11],
        }
        sp_works = value[2] == True and value[12] is not None and value[12] >= 0
        mp_works = value[3] == True and value[14] is not None and value[14] >= 0
        if sp_works:
            game_data_single.update({
                'avg_mainhours_user': value[5],
                'avg_completionist_user': value[9],
                'timetobeat': round(value[12], 1) if value[12] is not None else None,
                'timetocomplete': value[13],
            })

        elif mp_works:
            game_data_single.update({
                'avg_mp_user': value[7],
                'timefromavgmp': value[14]
            })
        game_data.append(game_data_single)
    return render_template('backlog.html', game_data=game_data, username=username)

@app.route("/settings")
def settings():
    steamid = session.get('steamid')
    if not steamid:
        return redirect('/index')
    username = dbHandler.retrieveUsername(steamid)
    return render_template('settings.html', steamid=steamid, username=username)
    

@app.route("/logout")
# Clearing the session so you cannot gain access to other accounts through the url
def logout():
    session.clear()
    return redirect(url_for('index'))

if __name__ == '__main__':
    app.run(debug=False)