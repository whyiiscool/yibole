<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'FirmRegister.jsp' starting page</title>
    
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
<title>企业用户注册</title>
  </head>
  
  <body>
   <div class="big_header">
	<div class="header clearfix">
		<div class="header_l">
			<a>欢迎来到医伯乐人才网</a>
			<a>暂无服务热线 </a>
		</div>
	</div>
</div>
<!--内容-->
<form action="firmregister" method="post">
<div class="big_czmm_content" align="center">
	<div class="denglu_content">
		<div class="biaoti">
		<a href="PersonalRegister.jsp">个人注册</a>
			<a class="zhong">企业注册</a>
		</div>
		<div class="nr_box clearfix">
			<div class="nr clearfix">
				<div class="nr_left">
						<div class="nr_01">
						<div class="text">企业名</div>
						<input type="text" name="filmid" class="input_00" />
					</div>
					
							<div class="nr_01">
						<div class="text">企业地址</div>
						<input type="text" name="place" class="input_00" />
					</div>

					
					<div class="nr_01">
						<div class="text">企业电话</div>
						<input type="text" name="filmnum" class="input_00" />
					</div>
					
					<div class="nr_01">
						<div class="text">企业简介</div>
						<input type="text" name="fimdata" class="input_00" />
					</div>
					
					<div class="nr_01">
						<div class="text">密码</div>
						<input type="password" name="firmpwd" class="input_00" />
					</div>
					
					<div class="nr_02">
						<input type="submit" value="注册" class="input_11"/><br>
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
<!--页脚-->
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
