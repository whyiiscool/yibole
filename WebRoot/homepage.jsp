<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>医伯乐网-人才招聘网-医疗行业招聘求职平台</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <style type="text/css">
  .smallimg{
  width:30px; 
  height:30px;
  position:relative;
  top:8px;
  }
  .con{
    float: left;
    margin-left: 15%;
    width: 85%;
    height: 50px;
  }
  .cont{
    float: left;
    margin-left: 15%;
    width: 70%;
    height: 400px;
  }
  .viceDiv_1 {
    float: left;
    margin-top: 2% ;
    width: 30%;
    height: 150px;  
  }
  .viceDiv_2 {
    float: left;
    margin-top: 2% ;
    width: 60%;
    height: 150px;  
  }
  .viceDiv_3 {
    float: left;
    margin-top: 5% ;
    width: 90%;
    height: 50px;  
  }
  .input{
  border: 3px solid #1E90FF;
  border-radius:10px;
  padding: 7px 0px;
  border-radius: 3px;
  padding-left:5px;
  position:relative;
  top:45px;
  }
  .viceDiv_2-2 {
  position:relative;
  top:45px;
  padding: 0;
  margin: 0;
  }
  .button{
  border-radius:10px;
  width: 100px;
  height: 40px;
  background:#1E90FF;
  font-size:17px;
  line-height: 65px;
  color:white;
  padding: 0;
  margin: 0;
  letter-spacing: 2px;
  text-align: center;
  padding: 2px;
  cursor: pointer;
  text-decoration: none;
  position:relative;
  top:48px;
  }
  .font{
  font-size:20px;
  margin-left:80px;
  color:black;
  }
  #container {
	width: 500px;
	height: 300px;
	overflow: hidden;
}
 
#photo {
	width: 4800px;
	animation: switch 5s ease-out infinite;
}
 
#photo > img {
	float: left;
	width: 500px;
	height: 300px;
}
 
@keyframes switch {
	0%, 25% {
		margin-left: 0;
	}
	35%, 60% {
		margin-left: -500px;
	}
	70%, 100% {
		margin-left: -1000px;
	}

  </style>
  <body>

  <center>
  <div class=con style="height: 85px; "><div class=viceDiv_1 style="height: 71px; width: 496px"><a href="/" ><img class=smallimg src="img/home.png">首页</a></div>
  <div class=viceDiv_2 style="height: 78px; width: 942px"> <a href="resume1.jsp" id="head_login_link"><img class=smallimg src="img/nickname.png">简历详情</a><span class="cc">|</span>
            <a href="" target="_blank" rel="nofollow"> </a>
            <a href="" target="_blank" rel="nofollow"><img class=smallimg src="img/genie community.png">企业招聘</a></div>      </div>
           


       
    <!--m-topbar END-->
    <div class=cont>
        <div>
            <div class=viceDiv_1>
                <a href="https://www.cfw.cn/" target="_blank">
                    <img src="img/医院.png" width="180"></a>
            </div>
            <div class=viceDiv_2>
                <div class=viceDiv_2-2>
                    <input type="text" class=input name="nope" id="nope" placeholder="请输入关键词 例：设计师、制版、督导等" style="width: 651px; height: 65px"/><input type="submit" class=button value="搜索" style="height: 68px; width: 107px"/>
                </div>
               
        </div>
    </div>
    <div class=viceDiv_3>
        <div>
            <ul>
                <a href="/" class=font>首页</a>
                <a href="/zhaopin/" class=font>找工作</a>
                <a href="/resources/" class=font>招人才</a>
                <a href="/company/" class=font>找公司</a>
            </ul>
        </div>
    </div>
</div>
                    
   <div id="container">
      <div id="photo">
	
			<img src="https://www.cfw.cn/adv/2019/09/201992310010.jpg" alt=""/><img src="https://www.cfw.cn/adv/2019/09/2019917143840.jpg" alt=""/><img src="https://www.cfw.cn/adv/2018/11/20181121102016.jpg" alt=""/><img src="https://www.cfw.cn/adv/2019/01/201917163643.jpg" alt=""/>
			
		</div>
  </div>

   </center>
  </body>
</html>
