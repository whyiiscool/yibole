<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="com.ybl.vo.*,com.yibole.Dao.*" %>
<%@ taglib uri="/struts-tags" prefix="ybl"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
  <link  href="css/index.css" rel="stylesheet">
    <base href="<%=basePath%>">
    
    <title>My JSP 'user_company_resume.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <%
  List<Resume> list = new ArrayList();
  Employer em = (Employer)session.getAttribute("em");
  String filmid = em.getFilmid();
  if(filmid!=null){
  ResumeDao dao = new ResumeDao();
  list = dao.selectfromfilmid(filmid);
  }
   %>
  <body>
    <!--页眉-->
<div class="big_header">
	<div class="header clearfix">
		<div class="header_l">
			<a>欢迎来到医伯乐</a>
			<a>服务热线 400-6802998</a>
		</div>
		<div class="header_r">
		<!--未登录状态
			<a href="">登录</a>
			<span>丨</span>
			<a href="">注册</a>
		-->
		<!--个人登录状态-->
			<a href="my_company.jsp">我的公司</a>
			<span>丨</span>
			<a href="user_company.jsp">招聘岗位</a>
			<span>丨</span>
			<a href="user_company_res.jsp">投递记录</a>
			<span>丨</span>
			<div class="select">
				<a class="select_show">${em.filmid}公司</a>
				<ul class="select_hide dis_no">
					<li><a href="">消息</a></li>
					<li><a href="">设置</a></li>
					<li><a href="">退出</a></li>
				</ul>
			</div>
		</div>
	</div>
</div>
<!--导航-->
<div class="big_nav">
	<div class="nav clearfix">
		<div class="nav_logo">
			<img style="height: 40px;width: 120px" src="image/ybl-1.png" />
		</div>
		<div class="nav_a clearfix">
			<a href="user_company.jsp">首页</a>
			<a href="AddZp.jsp">增加职位</a>
			<a class="in" href="user_company_res.jsp">查看简历</a>
			<div class="new">
				<img src="image/nav_new.jpg" />
		     </div>
		    <a href="user_company_resumecollect.jsp">我的收藏</a>
	</div>
</div>

<!--内容-->
<div class="big_czmm_content">
	<div class="denglu_content">
		<div class="content3 clearfix">
		<div class="content3_l">
			
			<%
			for(Resume res : list){
			 %>
			
			<a class="box mr_0 clearfix" href="user_company_resume.jsp?filmid=<%=em.getFilmid() %>&realname=<%=res.getRelname() %>&postid=<%=res.getPostid()%> &userid=<%=res.getUsername()%> ">
				<div class="text">
					<b><%=res.getRelname() %></b>
					<div class="text_zw"><i><%=res.getPostid() %></i></div>
					<div class="text_nr"><%=res.getEducation() %>学历</div>
				</div>
			</a>

         <%}%>
         
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
  </body>
</html>
