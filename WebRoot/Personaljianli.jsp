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
    
    <title>My JSP 'Personaljianli.jsp' starting page</title>
    
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
//   String i=request.getParameter("id");
//   int id=Integer.parseInt( i );
//   JianliDao jl=new JianliDao();
//   Resume resume=jl.queryjianli(id);
//HttpSession session=ServletActionContext.getRequest().getSession();

   String filmid=request.getParameter("filmid");
   session.setAttribute("FILMID", filmid);
   String postid=request.getParameter("postid");
   session.setAttribute("POSTID", postid);
   
   %>
  
  
  
  <s:form action="jianli" method="post" theme="simple">
  <s:set name="RE" value="#session.RE"/>
   <!--页眉-->
<div class="big_header">
	<div class="header clearfix">
		<div class="header_l">
			<a>欢迎来到医伯乐医药网</a>
			<a>暂无服务热线</a>
		</div>
<!-- 		<div class="header_r"> -->
<!-- 			<div class="select"> -->
<!-- 				<a class="select_show">王小丫</a> -->
<!-- 				<ul class="select_hide dis_no"> -->
<!-- 					<li><a href="">消息</a></li> -->
<!-- 					<li><a href="">设置</a></li> -->
<!-- 					<li><a href="">退出</a></li> -->
<!-- 				</ul> -->
<!-- 			</div> -->
<!-- 		</div> -->
	</div>
</div>
<!--导航-->
<div class="big_nav">
	<div class="nav clearfix">
		<div class="nav_a clearfix">
			<a href="">首页</a>
			<a href="">职位 </a>
			<a href="">公司</a>
			<div class="new">
				<img src="image/nav_new.jpg" />
			</div>
		</div>
	</div>
</div>
<!--内容-->
<div class="big_content pt_33">
	<div class="content clearfix">
	<!--内容左-->
		<div class="content1_l">
			<div class="biaoti_01 clearfix">
				<div class="h11">我的简历</div>
			</div>
			<div class="wdmp_box clearfix">
				<div class="biaoti_02 wdmp"><a>我的名片</a></div>
				<div class="touxiang clearfix">
				<img src="image/wodejianli/touxiang.jpg">
				<div class="xm">
					<s:property value="#RE.relname"/>
				</div>
					
				<div class="gk">
					<s:property  value="#RE.experience"/>
				</div>
				</div>
				<div class="bianji">
					<img src="image/wodejianli/bianji.png" />
				</div>
			</div>
			<div class="jbzl_box clearfix">
				<div class="biaoti_02 jbzl"><a>个人资料</a><span></span></div>
				<div class="jbzl_text clearfix">
					<div class="jbzl_text_01">
					
						<div><span>姓名：</span><i><s:textfield name="re.relname" value="%{#RE.relname}"/></i></div>
 					    <div><span>年龄：</span><i><s:textfield name="re.age" value="%{#RE.age}"/></i></div>
						<div><span>性别：</span><i><s:textfield name="re.sex" value="%{#RE.sex}"/></i></div>
					</div>
					<div class="jbzl_text_02">
                        <div><span>现居住地：</span><i><s:textfield name="re.liveplace" value="%{#RE.liveplace}"/></i></div> 
						<div><span>手机号码：</span><i><s:textfield name="re.usernum" value="%{#RE.usernum}"/></i></div>
						<div><span>出生年月：</span><i><s:textfield name="re.brith" value="%{#RE.brith}"/></i></div>
						
					</div>
					<div class="jbzl_text_03">
					    <div><span>就业经历：</span><i><s:textfield name="re.experience" value="%{#RE.experience}"/></i></div>
						<div><span>电子邮箱：</span><i><s:textfield name="re.email" value="%{#RE.email}"/></i></div>
						<div><span>学&nbsp;&nbsp;历：&nbsp;&nbsp;</span><i><s:textfield name="re.education" value="%{#RE.education}"/></i></div>	
					
					</div>
				</div>
				<div class="bianji">
					<img src="image/wodejianli/bianji.png" />
				</div>
			</div>
		</div>
	<!--内容右~模板一-->
	<div> <input readonly="readonly" name="re.filmid" value=<%=request.getParameter("filmid")%>> </div>
		<div class="content1_r">
		
<!-- 			<div class="content1_r_01"> -->
<!-- 				<a class="box tdjl" href="">投递记录</a> -->
<!-- 				<a class="box scj" href="">收藏夹</a> -->
<!-- 				<a class="box xx mr_0" href="">消息</a> -->
<!-- 			</div> -->
			<div class="content1_r_03 clearfix">
				<div class="biaoti">模块管理</div>
<!-- 				<s:submit cssClass="bankuai r_01" name="sub" value="投递记录"></s:submit> -->
				<a class="bankuai r_01" href="Myresume.jsp">投递记录</a>
				<a class="bankuai r_02" href="">收藏夹</a>
				<a class="bankuai r_03 br_none" href="">消息</a>
				<a class="bankuai r_04" href="ResetPassword.jsp">密码修改</a>
<!-- 			<a class="bankuai r_04" href="">简历修改</a> -->
				<s:submit cssClass="bankuai r_04" name="sub" value="投递简历"></s:submit>
<!-- 				<s:submit cssClass="bankuai r_05" name="sub" value="新增简历"></s:submit> -->
				<s:submit cssClass="bankuai r_06" name="sub" value="修改简历"></s:submit>
				<s:submit cssClass="bankuai r_05" name="sub" value="删除简历"></s:submit>
<!-- 				<a class="bankuai r_05" href="">教育经历</a> -->
<!-- 				<a class="bankuai r_06 br_none" href="">自我评价</a> -->
			</div>
		</div>
		</div>
		</div>
		</s:form>
  </body>
</html>
