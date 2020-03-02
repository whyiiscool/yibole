<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s" %>
<%@ page language="java" import="com.ybl.vo.Resume"%>
<%@ page language="java" import="dao.JianliDao"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'queryresume.jsp' starting page</title>
    
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

  </head>
  
  <body>
  <%
  String username=(String)session.getAttribute("USERNAME");
  JianliDao jd=new JianliDao();
  
List<Resume> list = (List)jd.cxjianli(username);
for(Resume resume : list){ 
  %>
 
           <a href="Personaljianli.jsp?id=<%=resume.getId()%>">    
  				<div class="touxiang clearfix">
				<img src="image/wodejianli/touxiang.jpg">
				<div class="xm">
				<input type="hidden" name="realname" value="<%=resume.getRelname()%>">
				</div>
				<div class="gk">
					<input type="hidden" name="experience" value="<%=resume.getExperience()%>">
				</div>
				</div>
		 </a>		
	<%
	}
	
	 %>
	<script>
$(function(){
	//用户个人下拉
	$(".header_r .select").hover(function(){
		$(".header_r .select_hide").show();
	},function(){
		$(".header_r .select_hide").hide();
	});
	
	//简历可见度下拉
	$(".content1_r_05 .kejiandu .select").hover(function(){
		$(".content1_r_05 .kejiandu .hide").show();
	},function(){
		$(".content1_r_05 .kejiandu .hide").hide();
	});
	$(".content1_r_05 .kejiandu .mingcheng").click(function()
	{
		$("#chanp").text($(this).text());	
	});
	
	//添加屏蔽企业显示
	$(".content1_r_05 .pingbi_02 input[type='radio']").click(function(){
		var thisID = $(".content1_r_05 .pingbi_02 #radio_12").attr("id");
		if ($(this).attr("id") == thisID) {
			$(".content1_r_05 .pingbi_02 .tjpb").show();
                 }
		else {
			$(".content1_r_05 .pingbi_02 .tjpb").hide();
		}
		
	});
		//添加屏蔽状态无数据转有数据
	$(".content1_r_05 .pingbi_02 .pb_01").click(function(){
		$(".content1_r_05 .pingbi_02 .pb_01").hide();
		$(".content1_r_05 .pingbi_02 .pb_02").show();
		
	});
		//点击添加赋值
	$(".content1_r_05 .pingbi_02 .tjpb .pb_02 .tj").click(function(){
			//调用函数，取输入框输入的值
		writeDiv($(".content1_r_05 .pingbi_02 .tjpb .pb_02 .text").val());
			//关闭触碰变色
		$(".content1_r_05 .pingbi_02 .tjpb .pb_02_show .divSmall img").hover(function(){
		$(this).attr("src","image/qiyeshezhi/guanbi_02.png");
		},function(){
			$(this).attr("src","image/qiyeshezhi/guanbi.png");
		});
			//关闭点击移除
		$(".content1_r_05 .pingbi_02 .tjpb .pb_02_show .divSmall img").click(function(){
			$(this).parent().remove();
		});
    });
    //添加函数，上面调用
	function writeDiv(name){
		var divShow = "<div class='divSmall'>"+ "<a>"+ name + "</a>"+"<img src='image/qiyeshezhi/guanbi.png'/>" + "</div>";
        $("#mainSelect").html($("#mainSelect").html() + divShow);
	};
});
</script><%@page language="java" import="com.ybl.vo.Resume"%>		
  </body>
</html>
