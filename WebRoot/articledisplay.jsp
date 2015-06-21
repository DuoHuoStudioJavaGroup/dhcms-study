<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>${article.title }</title>
	<meta charset="utf-8" />    
	
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
					<li><a href="/subyouth/initIndexPage?method=init">首页</a></li>
					<c:forEach items="${topcolumn }" var="tc">
						<li><a href="/subyouth/initIndexPage?method=listColumnArticle&columnid=${tc.id }">${tc.columnName }</a></li>
					</c:forEach>
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
	            <li><a href="/subyouth/initIndexPage?method=init">首页</a></li>
	            <c:forEach items="${topcolumn }" var="tc">
					<li><a href="/subyouth/initIndexPage?method=listColumnArticle&columnid=${tc.id }">${tc.columnName }</a></li>
				</c:forEach>
	        </ul>
	    </div>
	    <!-- /.navbar-collapse -->
	</nav>
	
	<!-- 文章内容展示区 -->
	<div>
		<h1>${article.title }</h1>
		<div>${article.content }</div>
	</div>
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
