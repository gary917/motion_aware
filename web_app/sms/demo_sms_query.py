# -*- coding: utf-8 -*-
import sys
# from aliyunsdkdysmsapi.request.v20180501 import SendSmsRequest
from aliyunsdkdysmsapi.request.v20180501 import QuerySendDetailsRequest
from aliyunsdkcore.client import AcsClient
from aliyunsdkcore.profile import region_provider
# from aliyunsdkcore.http import method_type as MT
# from aliyunsdkcore.http import format_type as FT
import const

"""
This is the DEMO for SMS status query API, Version:v20180501

Created on 2018-06-01

"""
try:
    reload(sys)
    sys.setdefaultencoding('utf8')
except NameError:
    pass
except Exception as err:
    raise err

# Note: Do NOT change
REGION = "ap-southeast-1"
PRODUCT_NAME = "Dysmsapi"
DOMAIN = "dysmsapi.ap-southeast-1.aliyuncs.com"

acs_client = AcsClient(const.ACCESS_KEY_ID, const.ACCESS_KEY_SECRET, REGION)
region_provider.add_endpoint(PRODUCT_NAME, REGION, DOMAIN)

def query_send_detail(biz_id, phone_number, page_size, current_page, start_date, end_date):
    queryRequest = QuerySendDetailsRequest.QuerySendDetailsRequest()
    # PhoneNumbers，Target Phone Number, Mandatory
    queryRequest.set_PhoneNumber(phone_number)
    # BizId, Unique identify serial number of SMS sending request, Optional
    queryRequest.set_BizId(biz_id)
    # EndDate, Mandatory
    queryRequest.set_EndDate(end_date)
    # Current Page
    queryRequest.set_CurrentPage(current_page)
    # Page Size
    queryRequest.set_PageSize(page_size)
	# Start Date for SMS Sending, Mandatory
    queryRequest.set_StartDate(start_date)


	# Method for Data submit
	# queryRequest.set_method(MT.POST)
	
	# Format for Data submit
    # queryRequest.set_accept_format(FT.JSON)

    # Calling SMS Status Query API, return json
    queryResponse = acs_client.do_action_with_exception(queryRequest)

    # TODO Business Logic

    return queryResponse


if __name__ == '__main__':
    print(query_send_detail("101001028444690679^0", "6281398007451", 10, 1,"2018-06-08T00:00:00+0800", "2018-06-08T23:59:59+0800"))
