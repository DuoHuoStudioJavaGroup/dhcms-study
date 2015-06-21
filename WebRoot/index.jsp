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
	<jsp:forward page="/initIndexPage?method=init"></jsp:forward>
</body>
</html>
