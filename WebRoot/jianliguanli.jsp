<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="ybl" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'jianliguanli.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	    <link rel="stylesheet" href="css2/amazeui.min.css" />
		<link rel="stylesheet" href="css2/admin.css" />
  </head>
  
  <body>
  <div>
		<div class="admin-content-body">
			<div class="am-cf am-padding am-padding-bottom-0">
				<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">用户简历管理</strong><small></small></div>
			</div>

			<hr>

			<div class="am-g">
				<div class="am-u-sm-12 am-u-md-3">

				</div>
				<div class="am-u-sm-12 am-u-md-3">
					<div class="am-input-group am-input-group-sm">
						<input type="text" class="am-form-field">
						<span class="am-input-group-btn">
            <button class="am-btn am-btn-default" type="button">搜索</button>
          </span>
					</div>
				</div>
			</div>
			<form action="resumeshow" method="post">
			    <button type="submit" class="am-btn am-btn-default"><span class="am-icon-plus"></span>刷新</button>
			</form>
			<div class="am-g">
				<div class="am-u-sm-12">
					<form class="am-form" >
		            	<div style="overflow-x:hidden;overflow-y:scroll;width:100%;height:500px;">
						<table class="am-table am-table-striped am-table-hover table-main"
						  style="border-collapse:collapse;"
						 >
							<thead>
								<tr>
									<th class="table-title">ID</th>
									<th class="table-id">姓名</th>
									<th class="table-type">企业名称</th>
									<th class="table-author am-hide-sm-only">职位</th>
									<th>性别</th>									
									<th class="table-set">操作</th>
								</tr>
							</thead>
							<tbody>
								<tr>
									<ybl:iterator value="#request.list"  var="user">
				                <tr>	
				                <td>${id}</td>
				 				<td>${relname}</td>					 
								<td>${filmid}</td>
				 				<td>${postid}</td>
				 				<td>${sex}</td>
							 	<td><a href="deleteresume.jsp?id=${id}">删除</td>
							 	<td><a href="lokeresume.jsp?id=${id}&relname=${relname}&username=${username}
							 	&filmid=${filmid}&postid=${postid}&sex=${sex}&experience=${experience}&
							 	education=${education}&email=${email}&usernum=${usernum}&liveplace=${liveplace}&brith=${brith}&age=${age}">查看</a></td>
								</ybl:iterator>	
								</tr>														
							</tbody>
						</table>
						</div>		
						<hr>
					</form>
				</div>
			</div>
		</div>
		</div>
	</body>
</html>
