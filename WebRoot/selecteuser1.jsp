<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="ybl" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'selectuser.jsp' starting page</title>
    
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
   <form class="am-form">
								
						<table class="am-table am-table-striped am-table-hover table-main">
							
								<tr>
									<th class="table-id">公司名</th>
									<th class="table-title">密码</th>
									<th class="table-type">电话</th>
									<th class="table-author am-hide-sm-only">地址</th>
								</tr>
								<ybl:iterator  value="#request.list"  var="list">
				 

				 <tr>
								<th><ybl:property  value="#list.filmid"  /></th>
								<th><ybl:property value="#list.firmpwd"/></th>
								<th><ybl:property value="#list.filmnum"/></th>
								<th><ybl:property value="#list.place"/></th>
								</tr>
								</ybl:iterator>					
						</table>
						<hr>
					</form>
  </body>
</html>
