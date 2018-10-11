# encoding: utf-8

import logging
from tablestore import OTSClient, Row, Condition, RowExistenceExpectation

LOG = logging.getLogger()

INSTANCE_NAME = 'motionaware1'
TABLE_NAME = 'flask_table'

def handler(event, context):
    LOG.info('event: %s', event)

    endpoint = 'http://'+INSTANCE_NAME+'.ap-southeast-1.ots.aliyuncs.com'
    creds = context.credentials
    client = OTSClient(
        endpoint, creds.access_key_id, creds.access_key_secret, INSTANCE_NAME,
        sts_token=creds.security_token)
    start_key=[('time_stamp','wearable_1'),('id',100),('device_name','PLACEHOLDER')]
    end_key=[('time_stamp','wearable_1'),('id',0),('device_name','PLACEHOLDER')]


    # get the row
    limit = 1
    columns_to_get = [] #get all the columns
    consumed, return_row, next_token = client.get_range(TABLE_NAME, 'BACKWARD',start_key,end_key,columns_to_get,limit )

    print("the returned row is :", return_row)
    return "HELLO"