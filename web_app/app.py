from flask import Flask, render_template, request
import sys
import sqlite3

DB_LOCATION = '/db/motion_aware.db'
app = Flask(__name__)

@app.route("/")
def main():
    return render_template('sign_in.html')




@app.route('/api', methods=['POST']) #function to accept POST
def post_function():
    post_data = request


    
    username = post_data['username']
    name = post_data['name']
    password = post_data['password']

    conn = sqlite3.connect(DB_LOCATION)
    c = conn.cursor()
    entry = (username, name, password)
    try:
        c.execute("INSERT INTO users VALUES (?,?,?)", entry)
    except sqlite3.IntegrityError:
        #duplicating username
        return "USERNAME ALREADY EXISTS"
    conn.commit()
    conn.close()
    return "USER ADDED"

if __name__ == "__main__":
	app.run()


