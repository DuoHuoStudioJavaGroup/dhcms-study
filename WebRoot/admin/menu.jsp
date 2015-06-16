<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<div class="pull-left menutab">
                <div class="avatar">
                    <div>
                        <a href="http://www.weibo.com/518501269" target="_blank">
                            <img src="<%=basePath%>/resources/images/admin.png" alt="">
                        </a>
                    </div>
                </div>
                <ul class="nav">
                    <li class="selected">
                        <a href="index.html">
                            <span class="fa fa-home"></span>
                            <span class="title">首页</span>
                        </a>
                    </li>
                    <li>
                        <a data-toggle="collapse" href="#menu-article">
                            <span class="fa fa-file-word-o"></span><span class="title">文章</span>
                        </a>
                    </li>
                    <div id="menu-article" class="collapse sub">
                        <ul>
                            <li>
                                <a href="/subyouth/article?method=edit">
                                    <span class="fa fa-pencil"></span><span class="title">写文章</span>
                                </a>
                            </li>
                            <li>
                                <a href="/subyouth/article?method=list">
                                    <span class="fa fa-list-ul"></span><span class="title">文章列表</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <li>
                        <a data-toggle="collapse" href="#menu-list">
                            <span class="fa fa-th"></span><span class="title">栏目</span>
                        </a>
                    </li>
                    <div id="menu-list" class="collapse sub">
                        <ul>
                            <li>
                                <a href="/subyouth/column?method=tocolumn">
                                    <span class="fa fa-plus"></span><span class="title">添加单页</span>
                                </a>
                            </li>
                            <li>
                                <a href="/subyouth/column?method=listcolumn">
                                    <span class="fa fa-list"></span><span class="title">管理栏目</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <li>
                        <a href="photo.html">
                            <span class="fa fa-photo"></span><span class="title">图片</span>
                        </a>
                    </li>
                    <li>
                        <a data-toggle="collapse" href="#menu-user">
                            <span class="fa fa-user"></span><span class="title">用户</span>
                        </a>
                    </li>
                    <div id="menu-user" class="collapse sub">
                        <ul>
                            <li>
                                <a href="user-add.html">
                                    <span class="fa fa-user-plus"></span><span class="title">添加用户</span>
                                </a>
                            </li>
                            <li>
                                <a href="user-list.html">
                                    <span class="fa fa-list"></span><span class="title">管理用户</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </ul>
            </div>
            <div class="top-bar">
            	<ul>
            		<li>
            			<a href="" title="Log Out">
            				<i class="fa fa-sign-out"></i>
            			</a>
            		</li>
            		<li>
            			<a href="" title="Messages">
            				<i class="fa fa-envelope"></i>
            			</a>
            		</li>
            		<li>
            			<a href="article.html" title="Edit">
            				<i class="fa fa-edit"></i>
            			</a>
            		</li>
            	</ul>
            </div>