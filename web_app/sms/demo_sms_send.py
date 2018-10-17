# -*- coding: utf-8 -*-
import sys
from aliyunsdkdysmsapi.request.v20180501 import SendSmsRequest
# from aliyunsdkdysmsapi.request.v20180501 import QuerySendDetailsRequest
from aliyunsdkcore.client import AcsClient
import uuid
from aliyunsdkcore.profile import region_provider
# from aliyunsdkcore.http import method_type as MT
# from aliyunsdkcore.http import format_type as FT
import const

"""
This is the Demo for SMS sending API, version:v20180501

Created on 2018-06-01

"""
try:
    reload(sys)
    sys.setdefaultencoding('utf8')
except NameError:
    pass
except Exception as err:
    raise err

# Notice: Do NOT change
REGION = "ap-southeast-1"
PRODUCT_NAME = "Dysmsapi"
DOMAIN = "dysmsapi.ap-southeast-1.aliyuncs.com"

acs_client = AcsClient(const.ACCESS_KEY_ID, const.ACCESS_KEY_SECRET, REGION)
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



if __name__ == '__main__':
    # __business_id = uuid.uuid1()
    params = "{\"smsContent\":\"123456789012345678901\"}"
	# params = u'{"name":"wqb","code":"12345678","address":"bz","phone":"13000000000"}'
    print(send_sms("6281398007451", "E0012033", "SMS_10010002", params))
   
    
    

