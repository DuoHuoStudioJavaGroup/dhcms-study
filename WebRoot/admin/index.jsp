<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>多火DhCMS后台管理系统</title>
    <link rel="stylesheet" href="<%=basePath%>/resources/stylesheets/styles.css">
    <link rel="stylesheet" href="<%=basePath%>/resources/stylesheets/admin.css">
    <link rel="stylesheet" href="<%=basePath%>/resources/stylesheets/font-awesome.min.css">
    <script src="http://cdn.bootcss.com/jquery/2.1.4/jquery.min.js"></script>
    <%--  <script src="<%=basePath%>/resources/javascripts/bootstrap.min.js"></script> --%>
    <script src="http://cdn.bootcss.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>

<body>
    <div class="container-fluid">
        <div class="row clearfix">
            
            <jsp:include page="menu.jsp"></jsp:include>
            
            <div class="tab-content clearfix">
            	<section>
            		
            	</section>
            </div>
        </div>
    </div>
</body>

</html>
