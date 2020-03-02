<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="com.ybl.vo.*"%>
<%@ page language="java" import="com.yibole.Dao.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'ModZp.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
 <link  href="css/index.css" rel="stylesheet">
<script src="js/jquery.js"></script>
<meta charset="utf-8">
<title>无标题文档</title>
</head>
<body>
<!--页眉-->
<div class="big_header">
	<div class="header clearfix">
		<div class="header_l">
			<a>欢迎来到猎才医药网</a>
			<a>服务热线 400-6802998</a>
		</div>
		<div class="header_r">
			<a href="my_company.jsp">我的公司</a>
			<span>丨</span>
			<a href="user_company.jsp">招聘岗位</a>
			<span>丨</span>
			<a href="user_company_res.jsp">投递记录</a>
		</div>
	</div>
</div>
<!--导航-->
<div class="big_nav">
	<div class="nav clearfix">
		<div class="nav_logo">
			<img style="height: 40px;width: 120px" src="image/ybl-1.png" />
		</div>
	</div>
</div>
<!--内容-->
<%
Zp zp = new Zp();
String postid = request.getParameter("postid");
String filmid = request.getParameter("filmid");
if(postid!=null&&filmid!=null){
ZpInformationDao dao = new ZpInformationDao();
zp = dao.selectfrompostid(postid,filmid);
}
 %>
<div class="big_czmm_content">
	<div class="yx_content">
		<div class="nr_box clearfix">
			<form id="form" method="post" action="ModZpInformation">
			<div class="nr1" >
			    <input type="hidden" name="filmid" class="text_01" value="<%=zp.getFilmid() %>">
			    <input type="hidden" name="postid" class="text_01" value="<%=zp.getPostid() %>">
				<div class="text_01" style="align:center;">
				<%=zp.getPostid() %>
				</div>
				<br/>
				<div class="text_04" style="height:0px">
				<input type="text" name="postnum" value="<%=zp.getPostnum() %>" style="width:5%;height:22px; font-size:22px;">个在招名额</div>
				<div class="text_03" style="height:30px">
				<input type="text"  name="posttext" class="text_03" style="font-size:20px;" value="<%=zp.getPosttext()%>"><br/>
				</div><br/><br/>
				<input class="yzyx" type="submit" value="进行更改"><br>
				<a class="yzyx" href="delZpInformation?postid=<%=zp.getPostid() %>">删除</a><br>
				<a class="yzyx" href="user_company.jsp">返      回</a>
				
			</div>
			</form>
		</div>
	</div>
</div>
<!--页脚-->
<div class="big_footer">
	<div class="big_footer_top">
		<div class="footer_top clearfix">
			<div class="footer_top_01">
				<img src="image/footer_01.png" />
				<a>400-6802-998</a>
				<span>服务热线</span>
			</div>
			<div class="footer_top_02">
				<b>简介</b>
				<a href="">关于猎才</a>
				<a href="">服务介绍</a>
				<a href="">成功案例</a>
			</div>
			<div class="footer_top_02">
				<b>服务</b>
				<a href="">广告服务</a>
				<a href="">猎头服务</a>
				<a href="">专场招聘</a>
			</div>
			<div class="footer_top_02">
				<b>导航</b>
				<a href="">网站地图</a>
				<a href="">城市分类</a>
				<a href="">企业名录</a>
				<a href="">职位分类</a>
			</div>
			<div class="footer_top_02">
				<b>帮助</b>
				<a href="">帮助中心</a>
				<a href="">联系我们</a>
			</div>
			<div class="footer_top_03">
				<a href=""><img src="image/footer_02.jpg" /></a>
			</div>
			<div class="footer_top_04">
				<img src="image/footer_03.jpg" />
			</div>
		</div>
	</div>
	<div class="big_footer_bot">
		<div class="footer_bot">
			<a>Copyright <span>©</span> 猎才医药网 jobuy.com All RightsReserved</a>
			<a>经营许可证编号：苏B2-20050006  ICP证编号：苏ICP备05059420号  增值电信业务经营许可证编号：苏B2-20050006</a>
		</div>
	</div>
</div>

</script>
</body>
</html>
