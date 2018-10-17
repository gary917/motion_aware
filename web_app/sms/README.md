
# SDK Use Instruction

--------- 

## Brief
* This Python SDK contains function of MNS(Message Queue) and SMS, compatiable with python2.6+、python3.0+
  
## Document outline
├── aliyunsdkdybaseapi   
│   └── request
├── aliyunsdkdysmsapi   
│   ├── __init__.py
│   └── request
├── const.py             #Configure parameters: Access Key, Access Secret
├── demo_sms_api.py      #Get Delivery Report from MNS(Message Queue)
├── demo_sms_query.py    #Query SMS status
├── demo_sms_send.py     #Send SMS
├── mns_python_sdk      
│   ├── bin
│   ├── mns
│   ├── sample 
│   ├── sample.cfg
│   ├── sample.py
│   └── setup.py
└── setup.py

## SDK principle

*  If you use python2, please repalce "python" with python2 in the document;
*  If you use python3, please repalce "python" with python3 in the document; 

### Send SMS or Query SMS Status
* Intallation Dependency, execute in the root directory: python setup.py install
* Execute demo for SMS Sending:python demo_sms_send.py
* Execute demo for SMS Status query:python demo_sms_query.py

### Get Delivery Report from MNS
* Intallation Dependency1, execute in the root directory:python setup.py install
* Intallation Dependency2: execute in directory"mns_python_sdk"：python setup.py install
* execute in the root directory:python demo_sms_api.py

