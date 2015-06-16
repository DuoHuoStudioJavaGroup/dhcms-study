<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <link rel="stylesheet" href="<%=basePath%>resources/stylesheets/admin.css">
    <link rel="stylesheet" href="<%=basePath%>resources/stylesheets/styles.css">
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <script src="http://cdn.bootcss.com/jquery/2.1.4/jquery.min.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>

<body>
    <div class="container-fluid">
        <div class="row clearfix">
           
           <jsp:include page="menu.jsp"></jsp:include>
           
            <div class="tab-content clearfix">
            	<section>
            		<p class="marginbot-10">
                        <span class="h3">栏目</span>
                        <a href="column-page.html" class="btn btn-link">新建单页</a>
                        <a href="#column-category" class="btn btn-link" data-toggle="modal">新建列表页</a>
                    </p>
                    <div class="modal fade" id="column-category">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                    <h4 class="modal-title">新建列表页</h4>
                                </div>
                                <div class="modal-body">
                                    <form action="#" method="POST" role="form">
                                    
                                        <div class="form-group">
                                            <label for="column-title">栏目标题</label>
                                            <input type="text" class="form-control" id="column-title" placeholder="Input field">
                                        </div>
                                        <div class="form-group">
                                            <label for="column-grade">页面级别</label>
                                            <input type="text" class="form-control" id="column-grade" placeholder="请输入页面级别，默认为0">
                                        </div>
                                        <div class="form-group">
                                            <label for="column-date">修改时间</label>
                                            <input type="date" class="form-control" id="column-date" placeholder="Input field">
                                        </div>

                                        <div class="form-group">
                                            <label for="column-Update">更新时间</label>
                                            <input type="date" class="form-control" id="column-Update" placeholder="Input field">
                                        </div>

                                        <button type="submit" class="btn btn-primary">提交</button>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                    <form action="#" method="POST" class="form-inline marginbot-30" role="form">
                        <select name="" id="input" class="form-control" required="required">
                            <option value="0">选择页面类型</option>
                            <option value="1">栏目1</option>
                            <option value="1">栏目2</option>
                            <option value="1">栏目2</option>
                        </select>
                        <button type="submit" class="btn btn-success btn-sm">筛选</button>
                    </form>
                    <table class="table table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>栏目名称</th>
                                <th>栏目类别</th>
                                <th>页面级别</th>
                                <th>作者</th>
                                <th>创建时间</th>
                                <th>更新时间</th>
                                <th>编辑</th>
                            </tr>
                        </thead>
                        
                        <tbody>
                        	<c:forEach items="${columnList}" var="cl">
	                           <tr>
	                                <td>${cl.columnName}</td>
	                                <td>${cl.columnIndex }</td>
	                                <td>1</td>
	                                <td>多火</td>
	                                <td>2015-6-6</td>
	                                <td>2015-6-10</td>
	                                <td>
	                                    <a href="/subyouth/column?method=editcolumn&id=${cl.id }" class="btn btn-primary">编辑</a>
	                                    <a href="/subyouth/column?method=deletecolumn&id=${cl.id }" class="btn btn-danger">删除</a>
	                                </td>
	                            </tr>
                            </c:forEach>
                        </tbody>
                        
                    </table>
            	</section>
            </div>
        </div>
    </div>
</body>

</html>
