<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
 <head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>多火DhCMS后台管理系统</title>
    <link rel="stylesheet" href="<%=basePath%>/resources/stylesheets/styles.css">
    <link rel="stylesheet" href="<%=basePath%>/resources/stylesheets/admin.css">
    
    <script language="javascript" src="<%=basePath%>/resources/javascripts/login/sha1.js"></script>
    <script language="javascript" src="<%=basePath%>/resources/javascripts/login/login.js"></script>
</head>

<body>
    <div class="login">
        <form action="<%=basePath%>login" method="POST" role="form" name="loginForm" onSubmit="return processLogin(this);">
            <legend class="text-center">DHCMS后台登陆</legend>
        
            <div class="form-group">
                <label for="name">管理员账号</label>
                <input type="text" class="form-control" id="name" name="loginName" placeholder="输入账号">
            </div>
        
            <div class="form-group">
                <label for="password">密码</label>
                <input type="password" class="form-control" id="password" name="pass" placeholder="输入密码">
                <input type="hidden" name="encodePass" >
            </div>
        
            <button type="submit" class="btn btn-primary center-block">登陆</button>
        </form>
    </div>
</body>

</html>
