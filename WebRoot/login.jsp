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
    <link  href="css/index.css" rel="stylesheet">
    
    <title>My JSP 'login.jsp' starting page</title>
    
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
 
<!--页眉-->
<div class="big_header">
	<div class="header clearfix">
		<div class="header_l">
			<a>欢迎来到医伯乐</a>
			<a>服务热线：88888888</a>
		</div>
	</div>
</div>
<!--导航-->
<div class="big_nav">
	<div class="nav clearfix">
	</div>
</div>
<!--内容-->
<ybl:form theme="simple" action="lgg" method="post" >
<div class="big_czmm_content">
	<div class="denglu_content">
			<div class="biaoti">
			<a class="zhong">管理员登录</a>
			</div></caption>
		<div class="nr_box clearfix">
			<div class="nr clearfix">
				<div class="nr_left">
					<div class="nr_01">
						<div class="text">用户名</div>
						<ybl:textfield class="input_00" name="mid.id"  />						
					</div>
					<div class="tishi">					
					</div>
					<div class="nr_01">
						<div class="text">密码</div>
						<ybl:password  class="input_00" name="mid.passwd"  />
						<!--<input type="text" class="input_00" placeholder="密码"/>-->
					<div class="jizhu">
						<input type="checkbox" id="radio_01" name="jizhu_radio" class="jizhu_radio"/>
						<label for="radio_01" class="jizhu_lable">记住我</label>
						<a href="">忘记密码?</a>
					</div>
					<div class="nr_02">
					<!--	<input type="button" value="立即登录" class="input_11">-->
					<ybl:submit value="登陆" class="input_11"/>
					<ybl:reset value="重置"  class="input_11" />
					</div>
				</div>
				<div class="nr_right">
					<div class="nr_03">
					<font color="red"><ybl:fielderror/><ybl:property value="message"/></font>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
</ybl:form>
</body>
</html>
