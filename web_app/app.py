from flask import Flask, render_template, request
import sys
import sqlite3

app = Flask(__name__)
DB_LOCATION = app.root_path + '/db/motion_aware.db'



@app.route("/")
def main():
    print(app.root_path, file = sys.stderr)
    return render_template('sign_in.html')



@app.route('/api', methods=['PUT']) # function to accept POST
def post_function():
    post_data = request.get_json()
    user_id = post_data['user_id']
    username = post_data['username']
    name = post_data['name']
    password = post_data['password']

    conn = sqlite3.connect(DB_LOCATION, timeout=10)
    c = conn.cursor()
    entry = (user_id, username, password, name)
    try:
        c.execute("INSERT INTO users VALUES (?,?,?,?)", entry)
    except sqlite3.IntegrityError:       # duplicating unique fields
        return "USERNAME ALREADY EXISTS"

    conn.commit() # save changes to database
    conn.close()
    return "USER ADDED"

@app.route('/api/data', methods=['PUT']) # function to accept POST
def put_data():
    post_data = request.get_json()

    date = post_data['date']
    time_stamp = post_data['time_stamp']
    device_id = post_data['device_id']
    acceleration = post_data['acceleration']
    status = post_data['status']

    conn = sqlite3.connect(DB_LOCATION, timeout=10)
    c = conn.cursor()
    entry = (date, time_stamp, device_id, acceleration, status)
    try:
        c.execute("INSERT INTO readings VALUES (?,?,?,?,?)", entry)
    except sqlite3.IntegrityError:       # duplicating unique fields
        return "DATA NOT INSERTED"

    conn.commit() # save changes to database
    conn.close()
    return "DATA INSERTED"

if __name__ == "__main__":
	app.run()


