<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <link rel="stylesheet" href="css2/bootstrap.min.css" />
		<link rel="stylesheet" href="css2/main.css" />
		<link rel="stylesheet" href="css2/plugins.css" />
		<link rel="stylesheet" href="css2/icons.css" />
		<link rel="stylesheet" href="css2/amazeui.min.css" />
		<link rel="stylesheet" href="css2/font-awesome.min.css" />
    <base href="<%=basePath%>">
    
    <title>My JSP 'product.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
   <center><strong class="am-text-primary am-text-lg">欢迎来到医伯乐后台管理系统</strong></center>
  </body>
</html>
