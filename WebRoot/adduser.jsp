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
    
    <title>My JSP 'adduser.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <%-- </head>
  
  <body>
     <form action="adduser" method="post">
    <ybl:set var="user1" value="#request.user1"/>
    <table>
    <tr>
    <td> 真实姓名：</td>
    <td> <input type="text" value="<ybl:property value="#user1.realname"/>" name="employee.realname"></td>
    </tr>
    <tr>
    <td>用户名：</td>
    <td><input type="text" value="<ybl:property value="#user1.username"/>" name="employee.username"></td>
    </tr>
    <tr>
    <td>密码：</td>
     <td><input type="text" value="<ybl:property value="#user1.userpwd"/>"name="employee.userpwd"></td>
    </tr>
    <tr>
    <td>电话：</td>
     <td><input type="text" value="<ybl:property value="#user1.usernum"/>"name="employee.usernum"></td>
    </tr>
    <tr>
    <td>邮件：</td>
     <td><input type="text" value="<ybl:property value="#user1.email"/>"name="employee.email"></td>
    </tr>
     <tr>
    <td>性别：</td>
     <td><input type="text" value="<ybl:property value="#user1.sex"/>"name="employee.sex"></td>
    </tr>
    </table>
     	<ybl:submit value="提交" method="addUser" />
     	</form> --%>
     	<link rel="stylesheet" href="css2/amazeui.min.css" />
		<link rel="stylesheet" href="css2/admin.css" />
  </head>
  
  <body>
		<div class="admin-content-body">
			<div class="am-cf am-padding am-padding-bottom-0">
				<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">用户管理</strong><small></small></div>
			</div>

			<hr>

			<div class="am-g">
				<div class="am-u-sm-12 am-u-md-3">
				</div>
				<div class="am-u-sm-12 am-u-md-3">
					<div class="am-input-group am-input-group-sm">
					</div>
				</div>
			</div>
			<div class="am-g">
				<div class="am-u-sm-12">
			<form class="am-form" action="adduser" method="post" >
						 <ybl:set var="user1" value="#request.user1"/>		
						<table class="am-table am-table-striped am-table-hover table-main">
							<thead>
								<tr>
									<th> <!-- class="table-title" -->姓名</th>
									<th> <!-- class="table-id" --> 用户名</th>
									<th> <!-- class="table-type" -->密码</th>
									<th> <!-- class="table-author am-hide-sm-only" -->电话</th>
									<th>邮箱</th>
									<th>性别</th>
									<th> <!-- class="table-set" -->操作</th>
								</tr>
								</thead>
								<tbody>
				                <tr>	
				 				<td><input type="text" value="<ybl:property value="#user1.realname"/>" name="employee.realname"></td>  							 
								<td><input type="text" value="<ybl:property value="#user1.username"/>" name="employee.username"></td>
				 				<td><input type="text" value="<ybl:property value="#user1.userpwd"/>"name="employee.userpwd"></td>
				 				<td><input type="text" value="<ybl:property value="#user1.usernum"/>"name="employee.usernum"></td>
				 				<td><input type="text" value="<ybl:property value="#user1.email"/>"name="employee.email"></td>
				 				<td><input type="text" value="<ybl:property value="#user1.sex"/>"name="employee.sex"></td>
								<td><ybl:submit value="提交" method="addUser" /></td>
								</tr>
								</tbody>			
						</table>
						<hr>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>
