<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'FirmLonin.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<link  href="css/index.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<meta charset="utf-8">
<title>企业登录</title>
  </head>
  
  <body>
    <!--页眉-->
<div class="big_header">
	<div class="header clearfix">
		<div class="header_l">
			<a>欢迎来到医伯乐人才网</a>
			<a>暂无服务热线</a>
		</div>
	</div>
</div>
<!--内容-->
<form action="firmlogin" method="post">
<div class="big_czmm_content" align="center">
	<div class="denglu_content">
		<div class="biaoti">
		<a href="PersonaLogin.jsp">个人登录</a>
			<a class="zhong">企业登录</a>
		</div>
			<div class="nr clearfix">
				<div class="nr_left">
				
					<div class="nr_01">
						<div class="text">企业用户名</div>
						<input type="text" name="filmid" class="input_00" />
					</div>
				<div class="nr_01">
						<div class="text">密码</div>
						<input type="password" name="firmpwd" class="input_00" />
					</div>
						<div class="nr_02">
						<input type="submit" value="立即登录" class="input_11"/><br>
						</div>
						<div class="nr_02">
						<input type="reset" value="重置" class="input_11"/>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>
<script type="text/javascript">
$(function(){
	//选项卡and变色
	$(".denglu_content .biaoti a").click(function(){
		var index=$(this).index(".denglu_content .biaoti a");
		$(this).addClass("zhong").siblings().removeClass("zhong");
		$(".denglu_content .nr").eq(index).show().siblings().hide();
	});
	
	//input选中变色
	$(".denglu_content .nr_01 .input_00").focus(function(){
		$(".denglu_content .nr_01 .input_00").removeClass("input_lv");
		$(this).addClass("input_lv");
	});
	
	
	
});
</script>
  </body>
</html>
