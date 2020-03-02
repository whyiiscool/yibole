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
    
    <title>My JSP 'ResetPassword.jsp' starting page</title>
    
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
<script type="text/javascript">

    function validate(){
    var word1= document.getElementById("pw").value;
    var word2 = document.getElementById("repw").value;
    if(word1 != word2){
      alert("两次输入的新密码不一致！"); 
      document.getElementById("pw").value="";
       document.getElementById("repw").value="";
    }
    };



$(function(){
	选项卡and变色
	$(".denglu_content .biaoti a").click(function(){
		var index=$(this).index(".denglu_content .biaoti a");
		$(this).addClass("zhong").siblings().removeClass("zhong");
		$(".denglu_content .nr").eq(index).show().siblings().hide();
	});
	
	$(".denglu_content .nr_01 .input_00").focus(function(){
		$(".denglu_content .nr_01 .input_00").removeClass("input_lv");
		$(this).addClass("input_lv");
	});
});
</script>
<meta charset="utf-8">
  </head>
  <body>
       <!--页眉-->
<div class="big_header">
	<div class="header clearfix">
		<div class="header_l">
			<a>欢迎来到医伯乐</a>
			<a>暂无服务热线</a>
		</div>
	</div>
</div>
<!--导航-->
<!--内容-->
 <s:form action="rp" method="post" theme="simple">
<div class="big_czmm_content" align="center">
	<div class="denglu_content">
		<div class="biaoti">
			<a class="zhong">密码重置</a>
		</div>
		<div class="nr_box clearfix">
			<div class="nr clearfix">
				<div class="nr_left">
				<div class="nr_01">
				<input type="text" name="yusername" class="input_00" placeholder="用户名"/>
				</div>
					<div class="nr_01">
 						<input type="password" id="pw" name="password" class="input_00" placeholder="新密码"/>
					</div>
					<div class="nr_01">
						<input type="password" id="repw" name="reuserpwd" class="input_00" placeholder="确认密码" onBlur="validate()" />
					</div>
					<div class="nr_02">
					<input type="submit" value="确认修改" class="input_11"/><br> 
					</div>
					<div class="nr_02">
					<input type="reset" value="重置" class="input_11"/>
					</div>
 
				</div>
				
			</div>
		</div>
	</div>
</div>
</s:form>
 </body>
</html>
