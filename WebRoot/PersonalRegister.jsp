<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'PersonalRegister.jsp' starting page</title>
    
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
<title>个人用户注册</title>
  </head>
  
  <body>
    <div class="big_header">
	<div class="header clearfix">
		<div class="header_l">
			<a>欢迎来到医伯乐</a>
			<a>暂无服务热线</a>
		</div>
		</div>
		</div>


<!--内容-->
<form action="register" method="post">
<div class="big_czmm_content" align="center">
	<div class="denglu_content">
		<div class="biaoti">
			<a class="zhong">个人注册</a>
			<a href="FirmRegister.jsp">企业注册</a>
		</div>
		<div class="nr_box clearfix">
			<div class="nr clearfix">
				<div class="nr_left">
						<div class="nr_01">
						<div class="text">昵        称</div>
						<input type="text" name="username" class="input_00"/>
					</div>
					
							<div class="nr_01">
						<div class="text">真实姓名</div>
						<input type="text" name="realname" class="input_00"/>
					</div>
					
						<div class="nr_01">
						<div class="text">密        码</div>
						 <input type="password" name="userpwd" class="input_00"/>
					</div>
					
						<div class="nr_01">
						<div class="text">电话号码</div>
						<input type="text" name="usernum" class="input_00"/>
                      
					</div>
				
					<div class="nr_01">
						<div class="text">电子邮箱</div>
						<input type="text" name="email" class="input_00"/>
                      
					</div>
				
					<div class="nr_01">
						<div class="text">性        别</div>
						<input type="text" name="sex" class="input_00"/>
					</div>
					
					
					<div class="nr_02">
					<input type="submit"  value="注册" class="input_11"/><br>
					</div>
					<div class="nr_02">
					<input type="reset" value="重置" class="input_11"/>
					</div>
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
//验证手机，显示手机验证码层
	function number(tt){
		if(tt.match(/^1\d[0-9]{9}$/g)){
           $(".denglu_content .nr .xiaoyan").show();
        }
		else{
           $(".denglu_content .nr .xiaoyan").hide();
        }
    };

	
</script>
  </body>
</html>
