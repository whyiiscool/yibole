<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'index.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->   
        <link rel="stylesheet" href="css2/bootstrap.min.css" />
		<link rel="stylesheet" href="css2/main.css" />
		<link rel="stylesheet" href="css2/plugins.css" />
		<link rel="stylesheet" href="css2/icons.css" />
		<link rel="stylesheet" href="css2/amazeui.min.css" />
		<link rel="stylesheet" href="css2/font-awesome.min.css" />
  </head>
  
 <body class="breakpoint-1200" style="height: 934px;">

	<div class="am-cf am-padding am-padding-bottom-0">
				<div class="am-fl am-cf" align="top"><strong class="am-text-primary am-text-lg">后台管理系统</strong></div></li>
			</div> 
		<div id="container" class="fixed-header">
			<div id="sidebar" class="sidebar-fixed">
				<div class="slimScrollDiv" style="position: relative; overflow: hidden; width: auto; height: 100%;">
					<div id="sidebar-content" style="overflow: hidden; width: auto; height: 100%;">

						<ul id="nav">
							<li>
								<a href="jianliguanli.jsp" target="right"> <i class="icon-desktop"> </i>简历管理 <i class="arrow icon-angle-left"></i></a>

							</li>
							<li>
								<a href="job.jsp" target="right"> <i class="icon-desktop"> </i>职位管理 <i class="arrow icon-angle-left"></i></a>
								<ul class="sub-menu">
								</ul>
							</li>
							<li>
								<a href="user1.jsp" target="right"> <i class="icon-desktop"> </i>企业用户管理 <i class="arrow icon-angle-left"></i></a>
								<ul class="sub-menu">
								</ul>
							</li>
							<li>
								<a href="user.jsp" target="right"> <i class="icon-desktop"> </i>应聘用户管理 <i class="arrow icon-angle-left"></i></a>
								<ul class="sub-menu">
								</ul>
							</li>
						</ul>
						<div class="fill-nav-space"></div>
					</div>
					<div class="slimScrollBar" style="background: rgb(0, 0, 0); width: 7px; position: absolute; top: 0px; opacity: 0.4; display: none; border-radius: 7px; z-index: 99; right: 1px; height: 317.769px;"></div>
					<div class="slimScrollRail" style="width: 7px; height: 100%; position: absolute; top: 0px; display: none; border-radius: 7px; background: rgb(51, 51, 51); opacity: 0.2; z-index: 90; right: 1px;"></div>
				</div>
				<div id="divider" class="resizeable"></div>
			</div>
			<div id="content">
				<iframe src="product.jsp" width="100%" height="900" name="right" style="border: none;"></iframe>
			</div>
		</div>

		
	</body>
</html>
