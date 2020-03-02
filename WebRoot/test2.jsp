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
    
    <title>My JSP 'test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
<%--   </head>
 
  <body>
 	<form action="updateuser1" method="post" >
  	公司名:<input readonly="readonly" name="employer.filmid" value=<%=request.getParameter("filmid")%>><br>
    公司密码:<input name="employer.firmpwd" value=<%=request.getParameter("firmpwd")%>><br>
   公司地址:<input name="employer.place" value=<%=request.getParameter("place")%>><br>
  	公司电话:<input name="employer.filmnum" value=<%=request.getParameter("filmnum")%>><br>
  	<br><button>提交</button>   
   </form> --%> 
 		<link rel="stylesheet" href="css2/amazeui.min.css" />
		<link rel="stylesheet" href="css2/admin.css" />
  </head>
  
  <body>
		<div class="admin-content-body">
			<div class="am-cf am-padding am-padding-bottom-0">
				<div class="am-fl am-cf"><strong class="am-text-primary am-text-lg">企业用户管理</strong><small></small></div>
			</div>

			<hr>

			<div class="am-g">
				<div class="am-u-sm-12 am-u-md-3">
					<div class="am-input-group am-input-group-sm">
<%-- 					<form action="selectuser1" method="post">
					<ybl:textfield class="am-form-field" name="xx"/>
					<ybl:submit class="am-btn am-btn-default" value="查询"/>
						<!-- <span class="am-input-group-btn">	
						
          </span> -->
          </form> --%>
					</div>
				</div>
			</div>
			<div class="am-g">
				<div class="am-u-sm-12">
			<form class="am-form" action="updateuser1" method="post">					
						<table class="am-table am-table-striped am-table-hover table-main">
							<thead>
								<tr>
									<th>公司名</th>
									<th>密码</th>
									<th>地址</th>
									<th>电话</th>
									<th>操作</th>
								</tr>
								</thead>
								<tbody>							
				                <tr>	
				 				<td><input name="employer.firmpwd" value=<%=request.getParameter("firmpwd")%>></td>  							 
								<td><input name="employer.firmpwd" value=<%=request.getParameter("firmpwd")%>></td>
				 				<td><input name="employer.place" value=<%=request.getParameter("place")%>></td>
				 				<td><input name="employer.filmnum" value=<%=request.getParameter("filmnum")%>></td>
								<td><button>提交  </button></td>
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
