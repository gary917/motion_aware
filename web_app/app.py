#sends data to alibaba database

from flask import Flask, render_template, request
import sys
import datetime
from tablestore import *

from aliyunsdkdysmsapi.request.v20180501 import SendSmsRequest
from aliyunsdkcore.client import AcsClient
from aliyunsdkcore.profile import region_provider

app = Flask(__name__)

instanceURL = 'https://motionaware1.ap-southeast-1.ots.aliyuncs.com'
instanceName = 'motionaware1'
ACCESS_ID = 'LTAIksTHrtzmykKw'
ACCESS_SECRET = 'DAq4jhEONrAASzh1QXqoqmECMcpGKA'
table_name_2 = 'flask_rssi_table'
table_name_1 = 'flask_rss_table1'

# Notice: Do NOT change
REGION = "ap-southeast-1"
PRODUCT_NAME = "Dysmsapi"
DOMAIN = "dysmsapi.ap-southeast-1.aliyuncs.com"

ACCESS_KEY_ID = "LTAIksTHrtzmykKw"
ACCESS_KEY_SECRET = "DAq4jhEONrAASzh1QXqoqmECMcpGKA"

acs_client = AcsClient(ACCESS_KEY_ID, ACCESS_KEY_SECRET, REGION)
region_provider.add_endpoint(PRODUCT_NAME, REGION, DOMAIN)

def send_sms(phone_numbers, external_id, content_code, content_param=None):
    smsRequest = SendSmsRequest.SendSmsRequest()
    # ContentCode , Mandatory, you can login sms console and find it in Content Management
    smsRequest.set_ContentCode(content_code)
    # Sent to, Mandatory
    smsRequest.set_PhoneNumbers(phone_numbers)
    # ContentParam,set the value for parameters in sms Content with JSON format.
    if content_param is not None:
        smsRequest.set_ContentParam(content_param)
    # ExternalId，Optional, custom field, this value will be returned in the sms delivery report.
    smsRequest.set_ExternalId(external_id)
    # Calling SMS sending API, return json
    smsResponse = acs_client.do_action_with_exception(smsRequest)
    # TODO Business Logic
    return smsResponse

def sms_func():
    params={"name":"device1"}
    print(send_sms("61452637668", "E0012033", "SMS_10195048", params))



@app.route('/tablestore1', methods = ['PUT'])
def put_data1():
    ots_client = OTSClient(instanceURL, ACCESS_ID, ACCESS_SECRET, instanceName)
    post_data = request.get_json()
    #time_stamp = datetime.datetime.now().strftime('%Y/%m/%d %H:%M:%S')

    gateway_name = post_data['gateway_name']
    device_name = post_data['device_name']
    data_type = post_data['data_type']
    if data_type == 'sensor' and post_data['fall'] == '1':
        sms_func()
    del post_data['gateway_name']
    del post_data['device_name']
    del post_data['data_type']


    primary_key = [('data_type',data_type), ('gateway_name', gateway_name), ('device_name', device_name), ('id', PK_AUTO_INCR)]

    attribute_columns = [] # loop to add attribute columns
    for key, value in post_data.items():
        entry = [key,value]
        attribute_columns.append(entry)

    row = Row(primary_key,attribute_columns)
    condition = Condition(RowExistenceExpectation.IGNORE)

    try:
        consumed, return_row = ots_client.put_row(table_name_1, row, condition)
        print ('put row succeed, consume %s write cu.' % consumed.write)
    except OTSClientError as e:
        print ("put row failed, http_status:%d, error_message:%s" % (e.get_http_status(), e.get_error_message()))
    except OTSServiceError as e:
        print ("put row failed, http_status:%d, error_code:%s, error_message:%s, request_id:%s" % (e.get_http_status(),
            e.get_error_code(), e.get_error_message(), e.get_request_id()))

    return "DATA ADDED to RSSI TABLE SUCCESSFULLY"

if __name__ == "__main__":
	app.run(host = '0.0.0.0')




