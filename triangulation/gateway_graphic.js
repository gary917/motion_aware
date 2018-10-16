//generates the 4 gateway location

var canvasWidth = 500
var canvasHeight = 600
var radius = 20


var canvas = document.getElementById("myCanvas");
var ctx = canvas.getContext("2d");
ctx.fillStyle = "#FF0000";
ctx.beginPath();
ctx.arc(20,20,radius,0,2*Math.PI);
ctx.stroke();
ctx.beginPath();
ctx.arc(480,20,radius,0,2*Math.PI);
ctx.stroke();
ctx.beginPath();
ctx.arc(20,580,radius,0,2*Math.PI);
ctx.stroke();
ctx.beginPath();
ctx.arc(480,580,radius,0,2*Math.PI);
ctx.stroke();
