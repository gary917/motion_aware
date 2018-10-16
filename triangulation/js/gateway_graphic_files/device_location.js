//API calls backend to  get values and plots location of the device

var request = new XMLHttpRequest();
request.open('GET','https://5586133100091825.ap-southeast-1.fc.aliyuncs.com/2016-08-15/proxy/freeboard/get_data_2/',true);
request.send();

var data = request.responseText;

console.log(data)