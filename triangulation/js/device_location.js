//API calls backend to  get values and plots location of the device

//variables to draw on canvas
var canvas = document.getElementById("myCanvas");
var ctx = canvas.getContext("2d");

var x = 0;
var y = 0;

var request = new XMLHttpRequest();
request.open('GET','https://5586133100091825.ap-southeast-1.fc.aliyuncs.com/2016-08-15/proxy/freeboard/get_data_2/',true);
request.onload = function(){
	var data = JSON.parse(this.response);
	rssi = data.rssi
	x = rssi
	y = rssi
	ctx.beginPath();
	ctx.arc(x,y,radius,0,2*Math.PI);
	ctx.stroke();
	console.log(data)
}
request.send();



