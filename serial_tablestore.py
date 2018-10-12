import serial
from tablestore import *


instanceURL = 'https://motionaware1.ap-southeast-1.ots.aliyuncs.com'
instanceName = 'motionaware1'
ACCESS_ID = 'LTAIksTHrtzmykKw'
ACCESS_SECRET = 'DAq4jhEONrAASzh1QXqoqmECMcpGKA'
table_name = 'flask_table'




ots_client = OTSClient(instanceURL, ACCESS_ID, ACCESS_SECRET, instanceName) #start the client 


ser = serial.Serial('/dev/cu.SLAB_USBtoUART')
ser.baudrate = 115200

while 1:
	data = ser.readline()
	print(data)
    time_stamp = datetime.datetime.now().strftime('%Y/%m/%d %H:%M:%S')

    # Extract data here
    
    ##

    primary_key = [('time_stamp',time_stamp), ('id',3), ('device_name','PLACEHOLDER' )]
    attribute_columns = []
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