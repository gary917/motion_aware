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
table_name_1 = 'flask_table_1'
table_name_2 = 'flask_rssi_table'

#credentials to table store

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
        consumed, return_row = ots_client.put_row(table_name_1, row, condition)
        print ('put row succeed, consume %s write cu.' % consumed.write)
    except OTSClientError as e:
        print ("put row failed, http_status:%d, error_message:%s" % (e.get_http_status(), e.get_error_message()))
    except OTSServiceError as e:
        print ("put row failed, http_status:%d, error_code:%s, error_message:%s, request_id:%s" % (e.get_http_status(),
            e.get_error_code(), e.get_error_message(), e.get_request_id()))

    return "DATA ADDED SUCCESSFULLY"

@app.route('/tablestore1', methods = ['PUT'])
def put_data1():
    ots_client = OTSClient(instanceURL, ACCESS_ID, ACCESS_SECRET, instanceName)
    post_data = request.get_json()
    time_stamp = datetime.datetime.now().strftime('%Y/%m/%d %H:%M:%S')

    gateway_name = post_data['gateway_name']
    device_name = post_data['device_name']
    data_type = post_data['data_type']
    del post_data['gateway_name']
    del post_data['device_name']
    del post_data['data_type']


    primary_key = [('time_stamp',time_stamp), ('gateway_name', gateway_name), ('device_name', device_name), ('data_type',data_type)]

    attribute_columns = [] # loop to add attribute columns
    for key, value in post_data.items():
        entry = [key,value]
        attribute_columns.append(entry)

    row = Row(primary_key,attribute_columns)
    condition = Condition(RowExistenceExpectation.EXPECT_NOT_EXIST)

    try:
        consumed, return_row = ots_client.put_row(table_name_2, row, condition)
        print ('put row succeed, consume %s write cu.' % consumed.write)
    except OTSClientError as e:
        print ("put row failed, http_status:%d, error_message:%s" % (e.get_http_status(), e.get_error_message()))
    except OTSServiceError as e:
        print ("put row failed, http_status:%d, error_code:%s, error_message:%s, request_id:%s" % (e.get_http_status(),
            e.get_error_code(), e.get_error_message(), e.get_request_id()))

    return "DATA ADDED to RSSI TABLE SUCCESSFULLY"

if __name__ == "__main__":
	app.run(host = '0.0.0.0')


