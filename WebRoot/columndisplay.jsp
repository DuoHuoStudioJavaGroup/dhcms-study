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
	
	<!-- 指定栏目的文章列表 -->
	<section class="container">
		<div class="row">
			<div class="col-md-6 col-xs-12 article-content">
				<article>
					<div class="article-title article-notify"></div>
					<div class="article-body">
						<ul class="article-body-list">
							<c:forEach items="${articlelist }" var="af">
								<li class="clearfix">
									<span class="article-line hidden-xs"></span>
									<a href="/subyouth/initIndexPage?method=displayarticle&id=${af.id }">${af.title }</a>
									<span class="pull-right article-time hidden-xs">2015-3-27</span>
								</li>
							</c:forEach>
						</ul>
					</div>
				</article>
			</div>
		</div>
	</section>
  </body>
</html>
