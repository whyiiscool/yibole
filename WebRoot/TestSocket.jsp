<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'TestSocket.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  <script type="text/javascript"> 
   var wrbsocket = null;
   var target = "ws://localhost:8080/YiBoLe/socket";
   
   function buildConnection(){
   if('WebSocket'in window){
   websocket = new WebSocket(target);  
   }else if('MozWebSocket'in window){
   websocket = MozWebSocket(target);
   }else{
   window.alert("浏览器不支持WebSocket");
   }
   }
   
   function sendMessage(){
   var sendmsg = document.getElementById("sendMsg").value;
   console.log("发送的信息：" + sendmsg);
   
   websocket.send(sendmsg);
   }
  </script>

  </head>
  
  <body>
    <button onclick="buildConnection();">开始建立链接</button>
    <hr>
    <input id="sendMsg" /> <button onclick="sendMessage();">消息发送</button>
  </body>
</html>
