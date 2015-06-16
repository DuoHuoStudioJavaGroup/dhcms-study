<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="r" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <script src="http://cdn.bootcss.com/jquery/2.1.4/jquery.min.js"></script>
    <script src="<%=basePath%>admin/build/squire-raw.js"></script>
    <script src="http://cdn.bootcss.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
</head>

<body>
    <div class="container-fluid">
        <div class="row clearfix">
           
           <jsp:include page="menu.jsp"></jsp:include>
           
            <div class="tab-content">
                <section class="clearfix marginTop-48">
                    <form action="/subyouth/column?method=update" method="POST" role="form" class="form-horizontal">
                        <div class="form-group">
                            <label for="page-title"  class="col-sm-2 control-label">栏目名称</label>
                            <div class="col-sm-10">
                            	<input type="hidden" name="id" value="${column.id }">
                                <input type="text" class="form-control" name="name" id="page-title" value="${column.columnName }" required>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="page-grade"  class="col-sm-2 control-label">栏目类别</label>
                            <div class="col-sm-10">
                            	<select name="columnindex" class="form-control">
                            		<r:forEach begin="1" end="6" varStatus="item">
										<r:choose>
											<r:when test="${item['index'] == column.columnIndex }">
                            					<option select="selected" value ="${item['index'] }" >${item['index'] }</option>
											</r:when>
											<r:otherwise>
												<option value ="${item['index'] }" >${item['index'] }</option>
											</r:otherwise>
										</r:choose>
                            		</r:forEach>
                            	</select>
                            </div>
                        </div>
                        
                        <div class="form-group">
                            <label  class="col-sm-2 control-label">栏目描述</label>
                            <div class="col-sm-10">
                                <input type="text" class="form-control" name="description" id="page-title" value="${column.columnDescription }" required>
                            </div>
                        </div>
                        <div class="form-group">
                        	<label  class="col-sm-2 control-label"></label>
	                        <div class="col-sm-6">
	                        	<button type="submit" class="btn btn-primary">提交</button>
	                        </div>
                        </div>
                    </form>
                    
                    <div class="form-group">
                       	<label  class="col-sm-2 control-label"></label>
                        <div class="col-sm-6">
                        <%
						 	if (request.getAttribute("msg") != null) {
						 %> 
						 <%=request.getAttribute("msg")%> <%
						 	}
						 %>
                        </div>
                    </div>
                </section>
            </div>
        </div>
    </div>
</body>

</html>