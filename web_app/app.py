from flask import Flask, render_template, request
import sys
import sqlite3
import mysql.connector

app = Flask(__name__)

local_DB_LOCATION = app.root_path + '/db/motion_aware.db'


db_config = {
    'user': 'admin_1',
    'password' : 'Motionaware1',
    'host': 'rm-j0bz21fg6h05n786lro.mysql.australia.rds.aliyuncs.com',
    'database' : 'motion_aware_apsara'
}



@app.route("/")
def main():
    return render_template('sign_in.html')


@app.route('/api', methods=['PUT']) # function to accept POST
def post_function():
    post_data = request.get_json()
    user_id = post_data['user_id']
    username = post_data['username']
    name = post_data['name']
    password = post_data['password']

    conn = sqlite3.connect(local_DB_LOCATION, timeout=10)
    c = conn.cursor()
    entry = (user_id, username, password, name)
    try:
        c.execute("INSERT INTO users VALUES (?,?,?,?)", entry)
    except sqlite3.IntegrityError:       # duplicating unique fields
        return "USERNAME ALREADY EXISTS"

    conn.commit() # save changes to database
    conn.close()
    return "USER ADDED"


@app.route('/api/mysql', methods=['PUT'])  # function to accept POST
def my_sql():

    cnx = mysql.connector.connect(**db_config)
    cursor = cnx.cursor()

    post_data = request.get_json()
    date = post_data['date']
    time_stamp = post_data['time_stamp']
    device_id = post_data['device_id']
    acceleration = post_data['acceleration']
    status = post_data['status']

    insert_reading = ("INSERT INTO readings"
                      "(date, time_stamp, device_id, acceleration, status)"  # name of column fields
                      "VALUES (%s,%s,%s,%s,%s)")
    data = (date, time_stamp, device_id, acceleration, status)

    try:
        cursor.execute(insert_reading, data)
    except sqlite3.IntegrityError:
        return "DATA NOT INSERTED"

    cnx.commit()
    cursor.close()
    cnx.close()
    return "DATA ADDED"


if __name__ == "__main__":
	app.run(host = '0.0.0.0')


