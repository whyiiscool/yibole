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
    
    <title>My JSP 'personaYp.jsp' starting page</title>
    
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
  						<form action="selectallZp" method="post">
							<button type="submit" class="am-btn am-btn-default"><span class="am-icon-plus"></span>查看所有简历</button><br>
						</form>
   						 <form class="am-form">		
						<table class="am-table am-table-striped am-table-hover table-main">
							<thead>
								<tr>
									<th class="table-type">企业名</th>
									<th class="table-title">所需职位</h>
									<th class="table-id">职位需求人数</th>
									<th class="table-author am-hide-sm-only">介绍</th>
									<th class="table-set">操作</th>
								</tr>
								</thead>
								<tbody>
								<ybl:iterator value="#request.list"  var="user">
				                <tr>	
				 				<td>${filmid}</td>  							 
								<td>${postid}</td>
				 				<td>${postnum}</td>
				 				<td>${posttext}</td>
				 				<td><a href="Personaljianli.jsp?username=${username}&realname=${realname}&userpwd=${userpwd}&usernum=${usernum}&email=${email}&sex=${sex}"/>填写简历</td>
							 	<td><a href="deleteuser.jsp?realname=${realname}">删除</td>
								</tr>
								</ybl:iterator>		
								</tbody>			
						</table>
						<hr>
					</form>
  </body>
</html>
