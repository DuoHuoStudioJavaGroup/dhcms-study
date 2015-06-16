<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <title>发表文章</title>
    <link rel="stylesheet" href="http://neilj.github.io/Squire/build/Squire-UI.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="<%=basePath%>resources/stylesheets/admin.css">
    <link rel="stylesheet" href="<%=basePath%>resources/stylesheets/styles.css">
    <!-- <link rel="stylesheet" href="http://cdn.amazeui.org/amazeui/2.4.0/css/amazeui.min.css" /> -->
    <script src="http://cdn.bootcss.com/jquery/2.1.4/jquery.min.js"></script>
    <script src="<%=basePath%>admin/build/squire-raw.js"></script>
    <script src="http://neilj.github.io/Squire/build/Squire-UI.js"></script>
   <%--  <script src="<%=basePath%>/resources/javascripts/bootstrap.min.js"></script> --%>
    <script src="http://cdn.bootcss.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <script>
    $(document).ready(function() {
        new SquireUI({
            replace: 'textarea#foo',
            height: 600
        });
    });
    </script>
</head>

<body>
    <div class="container-fluid">
        <div class="row clearfix">
            
            <jsp:include page="menu.jsp"></jsp:include>
            
           <!-- edit area --> 
            <div class="tab-content">
               <form name="article" method="post" action="/subyouth/article?method=update">
               	<div class="am-g dh-news-am-g">
					<div class="am-u-sm-2">文章标题:</div>
					<input type="hidden" value="${article.id}" name="id" />
					<div class="am-u-sm-6 am-u-end">
						<input type="text" name="title" placeholder="请输入标题" value="${article.title }" required>
					</div>
				</div>
				
				<div class="am-g dh-news-am-g">
					<div class="am-u-sm-2">正文:</div>
					<div class="am-u-sm-10">
						<textarea class="ckeditor" id="newseditor1" name="content" rows="8" cols="30"><a:out value="${article.content}" escapeXml="false"></a:out></textarea>
					</div>
				</div>
				
				<div class="am-g dh-news-am-g">
					<div class="am-u-sm-2 am-u-sm-centered">
						<button type="submit" class="am-btn am-btn-default am-radius">提交</button>
					</div>
				</div>
						
               </form>
               <div>
            	<%
				 	if (request.getAttribute("msg") != null) {
				 %> 
				 <%=request.getAttribute("msg")%> <%
				 	}
				 %> 
            </div>
            </div>
        </div>
    </div>
</body>

<script type="text/javascript" src="<%=basePath%>resources/javascripts/ckeditor/ckeditor.js"></script>
</html>
