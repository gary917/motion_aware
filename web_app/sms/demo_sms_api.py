#!/usr/bin/env python
# coding=utf8
import sys
import datetime
from aliyunsdkcore.acs_exception.exceptions import ServerException
from aliyunsdkcore.client import AcsClient
from aliyunsdkcore.profile import region_provider
from aliyunsdkcore.http import method_type as MT
from aliyunsdkcore.http import format_type as FT
from aliyunsdkdybaseapi.request.v20180501.QueryTokenForMnsQueueRequest import QueryTokenForMnsQueueRequest
import const

sys.path.append("./mns_python_sdk/")
from mns.mns_account import Account
from mns.mns_queue import *

try:
    import json
except ImportError:
    import simplejson as json

"""
This is the Demo for Delivery Report handling, for reference.

Created on 2017-06-13
Modified on 2017-10-13

"""

try:
    reload(sys)
    sys.setdefaultencoding('utf8')
except NameError:
    pass


# Note: Do NOT change
PRODUCT_NAME = "Dybaseapi"
DOMAIN = "dybaseapi.ap-southeast-1.aliyuncs.com"
REGION = "ap-southeast-1"

# TODO : Need to replace below field into the message type you want. Delivery Report:SmsReport, Replied Message: Smsup
msgtype = "SmsReport"
# TODO Need to replace below field into the Queune name which you can get from SMS Console.
qname = "Alicom-Queue-xxxxxx-SmsReport"

# Do NOT change
endpoint = "http://1493622401794734.mns.ap-southeast-1.aliyuncs.com"

acs_client = AcsClient(const.ACCESS_KEY_ID, const.ACCESS_KEY_SECRET, REGION)
region_provider.add_endpoint(PRODUCT_NAME, REGION, DOMAIN)


# The expiry time set for Short Message Service
class Token():
    def __init__(self, token=None, tmp_access_id=None, tmp_access_key=None, expire_time=None):
        self.__token = token
        self.__tmp_access_id = tmp_access_id
        self.__tmp_access_key = tmp_access_key
        self.__expire_time = expire_time

    def get_token(self):
        return self.__token

    def set_token(self, token):
        self.__token = token

    def get_tmp_access_id(self):
        return self.__tmp_access_id

    def set_tmp_access_id(self, tmp_access_id):
        self.__tmp_access_id = tmp_access_id

    def get_tmp_access_key(self):
        return self.__tmp_access_key

    def set_tmp_access_key(self, tmp_access_key):
        self.__tmp_access_key = tmp_access_key

    def get_expire_time(self):
        return self.__expire_time

    def set_expire_time(self, expire_time):
        self.__expire_time = expire_time

    def is_refresh(self):
        # token Comparison between the Expiry Time and current system time. Refresh every two minutes.
        now = datetime.datetime.now()
        expire = datetime.datetime.strptime(self.__expire_time, "%Y-%m-%d %H:%M:%S")
        # intval = (expire - now).seconds
        # print "token remaining time before expiry(seconds)：" + str(intval)
        if expire <= now or (expire - now).seconds < 120:
            return 1
        return 0

    def refresh(self):
        print("start refresh token...")
        request = QueryTokenForMnsQueueRequest()
        request.set_MessageType(msgtype)
		# Method for Data submit
	    # smsRequest.set_method(MT.POST)	
	    # Format for Data submit
        # smsRequest.set_accept_format(FT.JSON)
		
        response = acs_client.do_action_with_exception(request)
        # print response
        if response is None:
            raise ServerException("GET_TOKEN_FAIL", "No reponse when fetching token")

        #response = response.decode('utf-8')
        response_body = json.loads(response.decode('utf-8'))

        if response_body.get("Code") != "OK":
            raise ServerException("GET_TOKEN_FAIL", "Failed to fetch token")

        self.__tmp_access_key = response_body.get("MessageTokenDTO").get("AccessKeySecret")
        self.__tmp_access_id = response_body.get("MessageTokenDTO").get("AccessKeyId")
        self.__expire_time = response_body.get("MessageTokenDTO").get("ExpireTime")
        self.__token = response_body.get("MessageTokenDTO").get("SecurityToken")
        print("key=%s, id=%s, expire_time=%s, token=%s" \
                % (self.__tmp_access_key, self.__tmp_access_id, self.__expire_time, self.__token))

        print("finsh refresh token...")


# Initiate my_account, my_queue
token = Token()
token.refresh()
my_account = Account(endpoint, token.get_tmp_access_id(), token.get_tmp_access_key(), token.get_token())
my_queue = my_account.get_queue(qname)
# my_queue.set_encoding(False)
# Loop reading and deleting message until the quenue is empty

## long polling method:
### When Queue contains message, return immediatly;
### When Queue is empty, request to wait 3 seconds. If message is pushed during the waiting time, rturn immediatly；

wait_seconds = 3
print("%sReceive And Delete Message From Queue%s\nQueueName:%s\nWaitSeconds:%s\n" % (
    10 * "=", 10 * "=", qname, wait_seconds))
while True:
    # Read Message
    try:
        # To judge whether to refresh token
        if token.is_refresh() == 1:
            # Refresh token
            token.refresh()
            my_account.mns_client.close_connection()
            my_account = Account(endpoint, token.get_tmp_access_id(), token.get_tmp_access_key(), token.get_token())
            my_queue = my_account.get_queue(qname)

        # Receive Message
        recv_msg = my_queue.receive_message(wait_seconds)

        # TODO Business Logic
        
        print("Receive Message Succeed! ReceiptHandle:%s MessageBody:%s MessageID:%s" % (
            recv_msg.receipt_handle, recv_msg.message_body, recv_msg.message_id))
        
    #except MNSExceptionBase as e:
    except Exception as e:
        if e.type == u"QueueNotExist":
            print("Queue not exist, please create queue before receive message.")
            sys.exit(0)
        elif e.type == u"MessageNotExist":
            print("Queue is empty! sleep 10s")
            time.sleep(10)
            continue
        print("Receive Message Fail! Exception:%s\n" % e)
        continue

    # Delete Message
    try:
        my_queue.delete_message(recv_msg.receipt_handle)
        print("Delete Message Succeed!  ReceiptHandle:%s" % recv_msg.receipt_handle)
    except MNSExceptionBase as e:
        print("Delete Message Fail! Exception:%s\n" % e)
