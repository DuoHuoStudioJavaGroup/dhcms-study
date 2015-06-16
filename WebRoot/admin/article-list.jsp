<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
    <script src="http://cdn.bootcss.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>

<body>
    <div class="container-fluid">
        <div class="row clearfix">
            
            <jsp:include page="menu.jsp"></jsp:include>
            
            <div class="tab-content clearfix">
            	<section class="clearfix">
                    <p class="marginbot-10">
                        <span class="h3">文章</span>
                        <a href="/subyouth/article?method=edit" class="btn btn-link">新建文章</a>
                    </p>
                    <form action="#" method="POST" class="form-inline marginbot-30" role="form">
                        <select name="" id="input" class="form-control" required="required">
                            <option value="0">选择项目管理栏目</option>
                            <option value="1">栏目1</option>
                            <option value="1">栏目2</option>
                            <option value="1">栏目2</option>
                        </select>
                        <button type="submit" class="btn btn-success btn-sm">筛选</button>
                        <select name="" id="input" class="form-control" required="required">
                            <option value="0">选择项目管理栏目</option>
                            <option value="1">栏目1</option>
                            <option value="1">栏目2</option>
                            <option value="1">栏目2</option>
                        </select>
                        <button type="submit" class="btn btn-success btn-sm">筛选</button>
                    </form>
            		<table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>文章标题</th>
                                <th>作者</th>
                                <th>分类目录</th>
                                <th>标签</th>
                                <th>日期</th>
                                <th>编辑</th>
                            </tr>
                        </thead>
                        <tbody>
                        	<c:forEach items="${articleList}" var="articleList">
	                            <tr>
	                                <td>${articleList.title}</td>
	                                <td>admin</td>
	                                <td>规章制度</td>
	                                <td>规章制度</td>
	                                <td>2015-03-08</td>
	                                <td>
	                                    <a href="/subyouth/article?method=reedit&id=${articleList.id}" class="btn btn-primary">编辑</a>
	                                    <a href="/subyouth/article?method=delete&id=${articleList.id}" class="btn btn-danger">删除</a>
	                                </td>
	                            </tr>
                            </c:forEach>
                        </tbody>
                    </table>
                    <div class="text-center">
                        <ul class="pagination">
                            <li><a href="#">&laquo;</a></li>
                            <li><a href="#">1</a></li>
                            <li><a href="#">2</a></li>
                            <li><a href="#">3</a></li>
                            <li><a href="#">4</a></li>
                            <li><a href="#">5</a></li>
                            <li><a href="#">&raquo;</a></li>
                        </ul>
                    </div>
            	</section>
            </div>
        </div>
    </div>
</body>

</html>