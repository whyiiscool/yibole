<%@ page language="java" import="java.util.*" pageEncoding="UTf-8"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>


  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'Main.jsp' starting page</title>
    
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
<script src="js/slider.js"></script>
<meta charset="utf-8">
<title>主函数</title>
  </head>
  
  
  <body>
  <!--页眉-->
<div class="big_header">
	<div class="header clearfix">
		<div class="header_l">
			<a></a>
			<a>服务热线 </a>
		</div>
	</div>
</div>
<!--导航-->
<div class="big_nav">
	<div class="nav clearfix">
		<div class="nav_logo">
			
		</div>
		<div class="nav_a clearfix">
			<a class="in" href="">首页</a>
			<a href="companyXx.jsp">职位 </a>
			<a href="companyYp.jsp">公司</a>
			<a href="Myresume.jsp">我的简历</a>
			<div class="new">
				<img src="image/nav_new.jpg" />
			</div>
		</div>
	</div>
</div>
<!--内容-->
<div class="big_content">
	<div class="content clearfix">
		<!--内容左-->
		<div class="content_l">
			<ul class="sidebar">
				<li>
					<div class="lei">销售类</div>
					<div class="fen">
						<a href="">销售总监</a>
						<a href="">销售经理/主管</a>
						<a href="">销售助理</a>
					</div>
				</li>
				<li>
					<div class="lei">市场/商务/政府/公关类</div>
					<div class="fen">
						<a href="">市场总监</a>
						<a href="">市场经理/主管</a>
						<a href="">市场专员</a>
					</div>
				</li>
				<li>
					<div class="lei">研发/分析/临床类</div>
					<div class="fen">
						<a href="">研发总监</a>
						<a href="">研发经理/主管</a>
						<a href="">研发工程师</a>
					</div>
				</li>
				<li>
					<div class="lei">注册/申报/生产/质管类</div>
					<div class="fen">
						<a href="">药品注册/申报</a>
						<a href="">医疗器械注册/申报</a>
					</div>
				</li>
				<li>
					<div class="lei">医院/药店/护理/整形美容类</div>
					<div class="fen">
						<a href="">医院管理人员</a>
						<a href="">综合门诊/全科医生</a>
					</div>
				</li>
				<li>
					<div class="lei">人资/行政/财务/法务类</div>
					<div class="fen">
						<a href="">人事/HR</a>
						<a href="">培训经理</a>
						<a href="">薪资/绩效</a>
					</div>
				</li>
				<li>
					<div class="lei">客户服务类</div>
					<div class="fen">
						<a href="">售前咨询</a>
						<a href="">售后客服</a>
						<a href="">客服总监</a>
					</div>
				</li>
				<li>
					<div class="lei">采购/物流/贸易/交通类</div>
					<div class="fen">
						<a href="">国际贸易经理/主管</a>
						<a href="">国际贸易专员</a>
					</div>
				</li>
				<li class="bb_none">
					<div class="lei">IT互联网/运维/其他</div>
					<div class="fen">
						<a href="">技术/开发</a>
						<a href="">前端开发</a>
						<a href="">美工/平面设计</a>
					</div>
				</li>
						<li>
					<div class="lei">客户服务类</div>
					<div class="fen">
						<a href="">售前咨询</a>
						<a href="">售后客服</a>
						<a href="">客服总监</a>
					</div>
				</li>
			</ul>
		</div>
		<!--内容右-->
		<div class="content_r">
			<div class="search_box clearfix">
				<form>
				<div class="search clearfix">
					<div class="select">
						<div class="show">
							<a><span id="chanp">职位名</span><a>
							<a><img src="image/search_01.png"></a>
						</div>
						<ul class="hide">
							<a><li class="mingcheng">职位名1</li></a>
			  				<a><li class="mingcheng">职位名2</li></a>
			  				<a><li class="mingcheng">职位名3</li></a>
			  			</ul>
					</div>
					<input class="inp_srh" placeholder="请输入关键字搜索" >
					<input class="btn_srh" type="submit" value="搜索" style="cursor: pointer;">
				</div>
				</form>
		    </div>
			<div class="banner">
				<ul class="img_box">
	        		<li><a href=""><img src="image/banner_01.jpg"></a></li>
	        		<li><a href=""><img src="image/banner_01.jpg"></a></li>
	        		<li><a href=""><img src="image/banner_01.jpg"></a></li>
	        		<li><a href=""><img src="image/banner_01.jpg"></a></li>
	        	</ul>
	        	<div class="dian_box">
	        		<li class="active"><a>banner主题名称1</a></li>
					<li><a>banner主题名称2</a></li>
					<li><a>正在大图显示的banner</a></li>
					<li class="mr_0"><a>banner主题名称3</a></li>
	        	</div>
			</div>
			<div class="rmzw clearfix">
				<div class="biaoti_01"><span>热门职位</span></div>
				<div class="clearfix">
					<div class="rmzw_fen">
						<div class="biaoti_02">经营管理类招聘<span>（<i>39647</i>个职位）</span></div>
						<ul>
							<li class="clearfix">
								<b>佛山市</b>
								<a class="zw" href="">销售代表/高级销售代表/大客户</a>
								<span><i class="xz">5-8</i>万</span>
							</li>
							<li class="clearfix">
								<b>佛山市</b>
								<a class="zw" href="">生产公司总经理</a>
								<span><i class="xz">10-12</i>万</span>
							</li>
							<li class="clearfix">
								<b>徐州市</b>
								<a class="zw" href="">市场推广经理</a>
								<span><i class="xz">10-12</i>万</span>
							</li>
							<li class="clearfix">
								<b>武汉市</b>
								<a class="zw" href="">债券融资业务审核岗</a>
								<span><i class="xz">10-12</i>万</span>
							</li>
							<li class="clearfix">
								<b>武汉市</b>
								<a class="zw" href="">总裁办主任</a>
								<span><i class="xz">10-12</i>万</span>
							</li>
						</ul>
					</div>
					<div class="rmzw_fen mr_0">
						<div class="biaoti_02">经营管理类招聘<span>（<i>39647</i>个职位）</span></div>
						<ul>
							<li class="clearfix">
								<b>佛山市</b>
								<a class="zw" href="">销售代表/高级销售代表/大客户</a>
								<span><i class="xz">5-8</i>万</span>
							</li>
							<li class="clearfix">
								<b>佛山市</b>
								<a class="zw" href="">生产公司总经理</a>
								<span><i class="xz">10-12</i>万</span>
							</li>
							<li class="clearfix">
								<b>徐州市</b>
								<a class="zw" href="">市场推广经理</a>
								<span><i class="xz">10-12</i>万</span>
							</li>
							<li class="clearfix">
								<b>武汉市</b>
								<a class="zw" href="">债券融资业务审核岗</a>
								<span><i class="xz">10-12</i>万</span>
							</li>
							<li class="clearfix">
								<b>武汉市</b>
								<a class="zw" href="">总裁办主任</a>
								<span><i class="xz">10-12</i>万</span>
							</li>
						</ul>
					</div> 
					
					
				</div>
			</div>
		</div>
	</div>
</div>

<script type="text/javascript">
$(function(){
	
	//搜索框选择
	$(".search_box .search .select").hover(function(){
		$(".search_box .search .hide").show();
		$(".select .show img").attr("src","image/search_02.png");
	},function(){
		$(".search_box .search .hide").hide();
		$(".select .show img").attr("src","image/search_01.png");
	});
	$(".search_box .mingcheng").click(function()
	{
		$("#chanp").text($(this).text());	
	});
	
	//选项卡
	$(".content_r .xxk .biaoti_03 span").click(function(){
		var index=$(this).index(".content_r .xxk .biaoti_03 span");
		$(this).addClass("click").siblings().removeClass("click");
		$(".content_r .xxk_01 .xx_box").eq(index).show().siblings().hide();
	});
});

//banner滚动
var bannerSlider = new Slider($(".content_r .banner"), {
		time: 5000,
		delay: 1000,
		event: 'clike',
		auto: true,
		mode: 'fade',
		controller: $(".content_r .banner .dian_box"),
		activeControllerCls: 'active'
	});

</script>
  </body>
</html>
