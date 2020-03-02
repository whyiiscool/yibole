<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page language="java" import="com.ybl.vo.*,com.yibole.Dao.*"%>
<%@ taglib uri="/struts-tags" prefix="ybl"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<link href="css/index.css" rel="stylesheet">
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
	List<Zp> list = new ArrayList();
	ResumeDao dao = new ResumeDao();
	list = dao.selectallZP();
%>
<body>
	<!--页眉-->
	<div class="big_header">
		<div class="header clearfix">
			<div class="header_l">
				<a>欢迎来到医伯乐</a> <a>服务热线 88888888</a>
			</div>
		</div>
	</div>
	<!--导航-->
	<div class="big_nav">
		<div class="nav clearfix">
			<div class="nav_a clearfix">
				<a href="Main.jsp">首页</a><a href="companyXx.jsp">职位</a><a href="personaYp.jsp">公司</a>
				<a href="Myresume.jsp">我的简历</a>
			</div>
		</div>
	</div>
	<!--内容-->
	<div class="big_czmm_content">
		<div class="denglu_content">
			<div class="content3 clearfix">
				<div class="content3_l">

					<%
						for (Zp res : list) {
					%>

					<a class="box mr_0 clearfix"
						href="Personaljianli.jsp?&filmid=<%=res.getFilmid()%>&postid=<%=res.getPostid()%>">
						<div class="text">
							<b><%=res.getFilmid()%></b>
							<div class="text_zw">
								<i><%=res.getPostid()%></i>
							</div>
							<div class="text_nr">
								所需人数：<%=res.getPostnum()%><br> 招聘需求：<%=res.getPosttext()%>
							</div>
						</div>
					</a>

					<%
						}
					%>

				</div>
			</div>
		</div>
		<!--页脚-->
</body>
</html>
