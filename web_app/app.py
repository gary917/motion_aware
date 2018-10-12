#sends data to alibaba database

from flask import Flask, render_template, request
import sys
import sqlite3
import mysql.connector
import datetime
from tablestore import *

app = Flask(__name__)

instanceURL = 'https://motionaware1.ap-southeast-1.ots.aliyuncs.com'
instanceName = 'motionaware1'
ACCESS_ID = 'LTAIksTHrtzmykKw'
ACCESS_SECRET = 'DAq4jhEONrAASzh1QXqoqmECMcpGKA'
table_name = 'flask_table_1'

#credentials to table store



@app.route("/") #renders the main page
def put_data_1():
    ots_client = OTSClient(instanceURL, ACCESS_ID, ACCESS_SECRET, instanceName) #start the client 
    post_data = request.get_json()
    time_stamp = datetime.datetime.now().strftime('%Y/%m/%d %H:%M:%S')
    acc_x = post_data['acceleration_x']
    acc_y = post_data['acceleration_y']
    acc_z = post_data['acceleration_z']



    #construct the data to send
    primary_key = [('time_stamp',time_stamp), ('id',3), ('device_name','PLACEHOLDER' )]
    attribute_columns = [('acc_x', acc_x)]
    row = Row(primary_key,attribute_columns)
    condition = Condition(RowExistenceExpectation.EXPECT_NOT_EXIST)

    try:
        consumed, return_row = ots_client.put_row(table_name, row, condition)
        print ('put row succeed, consume %s write cu.' % consumed.write)
    except OTSClientError as e:
        print ("put row failed, http_status:%d, error_message:%s" % (e.get_http_status(), e.get_error_message()))
    except OTSServiceError as e:
        print ("put row failed, http_status:%d, error_code:%s, error_message:%s, request_id:%s" % (e.get_http_status(),
            e.get_error_code(), e.get_error_message(), e.get_request_id()))

    return "DATA ADDED SUCCESSFULLY"


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

@app.route('/tablestore', methods = ['PUT'])
def put_data():
    ots_client = OTSClient(instanceURL, ACCESS_ID, ACCESS_SECRET, instanceName) #start the client 
    post_data = request.get_json()
    time_stamp = datetime.datetime.now().strftime('%Y/%m/%d %H:%M:%S')

    attribute_columns = []
    for key, value in post_data.items():
        entry = [key,value]
        attribute_columns.append(entry)


    primary_key = [('device_name','PLACEHOLDER' ),('id',1),('time_stamp',time_stamp),]
    row = Row(primary_key,attribute_columns)
    condition = Condition(RowExistenceExpectation.EXPECT_NOT_EXIST)

    try:
        consumed, return_row = ots_client.put_row(table_name, row, condition)
        print ('put row succeed, consume %s write cu.' % consumed.write)
    except OTSClientError as e:
        print ("put row failed, http_status:%d, error_message:%s" % (e.get_http_status(), e.get_error_message()))
    except OTSServiceError as e:
        print ("put row failed, http_status:%d, error_code:%s, error_message:%s, request_id:%s" % (e.get_http_status(),
            e.get_error_code(), e.get_error_message(), e.get_request_id()))

    return "DATA ADDED SUCCESSFULLY"


if __name__ == "__main__":
	app.run(host = '0.0.0.0')


