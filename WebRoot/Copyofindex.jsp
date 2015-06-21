<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width initial-scale=1">
	<title>南京信息工程大学团委</title>
	<link rel="stylesheet" href="<%=basePath%>/resources/stylesheets/lightbox.css">
	<link rel="stylesheet" href="<%=basePath%>/resources/stylesheets/styles.css">
	<link rel="stylesheet" href="<%=basePath%>/resources/stylesheets/phone.css">
</head>
<body>
	<div class="container hidden-xs">
		<div class="row">
			<header class="clearfix">
				<h1 class="logo pull-left"><img src="<%=basePath%>/resources/images/logo.png" alt="logo"></h1>
				<div class="pull-right">
					<div class="header-link">
						<a href="<%=basePath%>login.jsp"><span class="glyphicon glyphicon-user"></span>登录</a>
						<a href="#">学校首页</a>
						<a href="#">信息公告</a>
						<a href="#">天际新闻</a>
					</div>
					<div class="form-search clearfix">
						<input type="text" class="form-control pull-left">
						<button type="submit" class="pull-left"><span class="glyphicon glyphicon-search"></span></button>
					</div>
				</div>
			</header>
		</div>
	</div>

	<div class="navBar hidden-xs">
		<div class="container">
			<div class="row">
				<ul>
					<li><a href="#">首页</a></li>
					<li><a href="#">团委简介</a></li>
					<li><a href="#">工作流程</a>
						<ul>
							<li><a href="#">社会实践</a></li>
							<li><a href="#">志愿服务</a></li>
							<li><a href="#">学术科技</a></li>
							<li><a href="#">组织建设</a></li>
							<li><a href="#">思想教育</a></li>
							<li><a href="#">问题活动</a></li>
						</ul>
					</li>
					<li><a href="#">规章制度</a></li>
					<li><a href="#">工作专题</a></li>
					<li><a href="#">青英人才</a></li>
					<li><a href="#">网上团校</a></li>
					<li><a href="#">学生组织</a>
						<ul>
							<li><a href="#">社会实践</a></li>
							<li><a href="#">志愿服务</a></li>
							<li><a href="#">学术科技</a></li>
							<li><a href="#">组织建设</a></li>
							<li><a href="#">思想教育</a></li>
							<li><a href="#">问题活动</a></li>
						</ul>
					</li>
					<li><a href="#">团属刊物</a></li>
					<li><a href="#">资料下载</a></li>
				</ul>
			</div>
		</div>
	</div>

	<!-- 手机版导航 -->

	<nav class="navbar navbar-default visible-xs" role="navigation">
	    <!-- Brand and toggle get grouped for better mobile display -->
	    <div class="navbar-header">
	        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
	            <span class="sr-only">Toggle navigation</span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	        </button>
	        <a class="navbar-brand" href="#">团委飘扬在线</a>
	    </div>
	    <!-- Collect the nav links, forms, and other content for toggling -->
	    <div class="collapse navbar-collapse navbar-ex1-collapse">
	        <ul class="nav navbar-nav">
	            <li><a href="#">首页</a></li>
	            <li><a href="#">团委简介</a></li>
	            <li><a href="#" data-toggle="collapse" data-target="#collapseExample">工作流程</a>
	                <ul id="collapseExample">
	                    <li><a href="#">社会实践</a></li>
	                    <li><a href="#">志愿服务</a></li>
	                    <li><a href="#">学术科技</a></li>
	                    <li><a href="#">组织建设</a></li>
	                    <li><a href="#">思想教育</a></li>
	                    <li><a href="#">问题活动</a></li>
	                </ul>
	            </li>
	            <li><a href="#">规章制度</a></li>
	            <li><a href="#">工作专题</a></li>
	            <li><a href="#">青英人才</a></li>
	            <li><a href="#">网上团校</a></li>
	            <li><a href="#" data-toggle="collapse" data-target="#collapseExample1">学生组织</a>
	                <ul id="collapseExample1">
	                    <li><a href="#">社会实践</a></li>
	                    <li><a href="#">志愿服务</a></li>
	                    <li><a href="#">学术科技</a></li>
	                    <li><a href="#">组织建设</a></li>
	                    <li><a href="#">思想教育</a></li>
	                    <li><a href="#">问题活动</a></li>
	                </ul>
	            </li>
	            <li><a href="#">团属刊物</a></li>
	            <li><a href="#">资料下载</a></li>
	        </ul>
	    </div>
	    <!-- /.navbar-collapse -->
	</nav>


	<div class="container">
		<div class="row">
			<div id="carousel-id" class="carousel slide" data-ride="carousel">
			    <ol class="carousel-indicators">
			        <li data-target="#carousel-id" data-slide-to="0" class=""></li>
			        <li data-target="#carousel-id" data-slide-to="1" class=""></li>
			        <li data-target="#carousel-id" data-slide-to="2" class="active"></li>
			    </ol>
			    <div class="carousel-inner">
			        <div class="item">
			            <img data-src="" alt="First slide" src="<%=basePath%>/resources/images/show.png">
			        </div>
			        <div class="item">
			            <img data-src="" alt="Second slide" src="<%=basePath%>/resources/images/show.png">
			        </div>
			        <div class="item active">
			            <img data-src="" alt="Third slide" src="<%=basePath%>/resources/images/show.png">
			        </div>
			    </div>
			    <a class="left carousel-control" href="#carousel-id" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
			    <a class="right carousel-control" href="#carousel-id" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
			</div>
		</div>
	</div>
	<section class="container">
		<div class="row">
			<div class="col-md-6 col-xs-12 article-content">
				<article>
					<div class="article-title article-notify"></div>
					<div class="article-body">
						<ul class="article-body-list">
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
						</ul>
					</div>
				</article>
			</div>
			<div class="col-md-6 col-xs-12 article-content">
				<article>
					<div class="article-title article-news"></div>
					<div class="article-body">
						<ul class="article-body-list">
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
						</ul>
					</div>
				</article>
			</div>
			<div class="col-md-6 col-xs-12 article-content">
				<article>
					<div class="article-title article-college-news"></div>
					<div class="article-body">
						<ul class="article-body-list">
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
						</ul>
					</div>
				</article>
			</div>
			<div class="col-md-6 col-xs-12 article-content">
				<article>
					<div class="article-title article-student"></div>
					<div class="article-body">
						<ul class="article-body-list">
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
							<li class="clearfix">
								<span class="article-line hidden-xs"></span>
								<a href="">南京信息工程大学团委一行十六个字</a>
								<span class="pull-right article-time hidden-xs">2015-3-27</span>
							</li>
						</ul>
					</div>
				</article>
			</div>
		</div>
	</section>

	<section class="carousel-footer hidden-xs">
		<div class="container">
			<div class="row">
				<div id="carousel">
					<a href="images/carousel/1-big.png" data-lightbox="range-roll"><span class="image"><img src="<%=basePath%>/resources/images/carousel/1-big.png" alt="carousel"></span></a>
					<a href="images/carousel/2-big.png" data-lightbox="range-roll"><span class="image"><img src="<%=basePath%>/resources/images/carousel/2-big.png" alt="carousel"></span></a>
					<a href="images/carousel/3-big.png" data-lightbox="range-roll"><span class="image"><img src="<%=basePath%>/resources/images/carousel/3-big.png" alt="carousel"></span></a>
					<a href="images/carousel/4-big.png" data-lightbox="range-roll"><span class="image"><img src="<%=basePath%>/resources/images/carousel/4-big.png" alt="carousel"></span></a>
					<a href="images/carousel/1-big.png" data-lightbox="range-roll"><span class="image"><img src="<%=basePath%>/resources/images/carousel/1-big.png" alt="carousel"></span></a>
					<a href="images/carousel/2-big.png" data-lightbox="range-roll"><span class="image"><img src="<%=basePath%>/resources/images/carousel/2-big.png" alt="carousel"></span></a>
					<a href="images/carousel/3-big.png" data-lightbox="range-roll"><span class="image"><img src="<%=basePath%>/resources/images/carousel/3-big.png" alt="carousel"></span></a>
					<a href="images/carousel/4-big.png" data-lightbox="range-roll"><span class="image"><img src="<%=basePath%>/resources/images/carousel/4-big.png" alt="carousel"></span></a>
				</div>
			</div>
		</div>
	</section>

	<footer class="container">
		<div class="row">
			<p class="text-center">                        
				<span>相关链接:</span>
				<a href="#">团中央</a>
				<a href="#">中国气象局</a>
				<a href="#">团省委</a>
				<a href="#">省学联</a>
				<a href="#">江苏省教育厅</a>
				<a href="#">中青在线</a>
				<a href="#">我的青春故事 </a>
			</p>
			<p class="text-center">技术支持：南京信息工程大学 <a href="http://duohuo.org">多火工作室 </a>日常维护：校青年新闻中心    </p>
			<p class="text-center">  联系地址：南京市宁六公路219号 联系电话：025-58731121 办公地址：大学生活动中心303 邮编：210044 </p>
		</div>
	</footer>
	<script src="http://cdn.bootcss.com/jquery/2.1.4/jquery.min.js"></script>
	<script src="<%=basePath%>/resources/javascripts/bootstrap.min.js"></script>
	<script src="<%=basePath%>/resources/javascripts/slick.min.js"></script>
	<script src="<%=basePath%>/resources/javascripts/lightbox.min.js"></script>

	<script type="text/javascript">
	    $(document).ready(function(){
	      $('#carousel').slick({
	          slidesToShow: 4,
	          slidesToScroll: 1,
	          autoplay: true,
	          autoplaySpeed: 1000,
	      });
	    });
	  </script>
</body>
</html>
