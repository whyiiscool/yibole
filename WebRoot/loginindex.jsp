<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'loginindex.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">

<link href="css/index.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<meta charset="utf-8">
<title>无标题文档</title>
</head>
<body>
	<!--页眉-->
	<div class="big_header">
		<div class="header clearfix">
			<div class="header_l">
				<a>欢迎来到医伯乐招聘网</a> <a>服务热线 88888888</a>
			</div>
		</div>
	</div>
	<!--导航-->
	<div class="big_nav">
		<div class="nav clearfix"></div>
	</div>
	<!--内容-->
	<div class="big_czmm_content">
		<div class="denglu_content">
			<div class="nr_box clearfix">
				<div class="nr clearfix">
					<div class="nr_left">
						<div class="nr_02">
							<!-- <input type="button" value="个人登录"  class="input_11"> -->
							<button class="input_11">
								<a href="PersonaLogin.jsp">个人登录 </a>
							</button>
						</div>
						<div class="nr_02">
							<!-- <input type="button" value="企业登录" class="input_11"> -->
							<button class="input_11">
								<a href="FirmLonin.jsp">企业登录 </a>
							</button>
						</div>
					</div>
					<div class="nr_right">
						<div class="nr_03">
							<span>还没有医伯乐账号？</span> <a href="qiyezhuce.html">企业注册</a><br>
							<a href="qiyezhuce.html">个人注册</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>
