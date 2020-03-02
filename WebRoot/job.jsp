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
    
    <title>My JSP 'user.jsp' starting page</title>
    
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
		<div class="admin-content-body">
			<div class="am-cf am-padding am-padding-bottom-0">
				<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">职位管理</strong><small></small></div>
			</div>

			<hr>

			<div class="am-g">
				<div class="am-u-sm-12 am-u-md-6">
					<div class="am-btn-toolbar">
						<div class="am-btn-group am-btn-group-xs">
						<form action="resume1show" method="post">
							<button type="submit" class="am-btn am-btn-default"><span class="am-icon-plus"></span>刷新</button>
						</form>								
						</div>
					</div>
				</div>
				<div class="am-u-sm-12 am-u-md-3">

				</div>
				<div class="am-u-sm-12 am-u-md-3">
					<div class="am-input-group am-input-group-sm">
					<form action="selectuser" method="post">
					<ybl:textfield class="am-form-field" name="xx"/>
					<ybl:submit class="am-btn am-btn-default" value="查询"/>
						<!-- <span class="am-input-group-btn">	
						
          </span> -->
          </form>
					</div>
				</div>
			</div>
			<div class="am-g">
				<div class="am-u-sm-12">
			<form class="am-form">
								
						<table class="am-table am-table-striped am-table-hover table-main">
							<thead>
								<tr>
									<th class="table-type">公司名</th>
									<th class="table-title">职位名</th>
									<th >招聘人数</th>	
									<th>详细信息</th>								
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
				 				<td><a href="lookzp.jsp?filmid=${filmid}&postid=${postid}&postnum=${postnum}&posttext=${posttext}"/>查看</td>
							 	<td><a href="deletezp.jsp?zpid=${zpid}">删除</td>
								</tr>
								</ybl:iterator>		
								</tbody>	
						</table>
						<hr>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>
