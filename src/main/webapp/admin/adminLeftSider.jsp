<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- adminLefeSide start -->	
<div class="container-fluid">
		<div class="row">
			<div class="col-sm-3 col-md-2 sidebar">
				<ul class="nav nav-sidebar">
						<li><a href="writeblog.do">写文章</a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li><a href="adminblog.do">所有文章</a></li>
					<li><a href="blogtypelist.do">文章分类管理</a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li><a href="diary">所有日记</a></li>
					<li><a href="writediary.jsp">写日记</a></li>
				</ul>
				<shiro:hasRole name="admin">
				<ul class="nav nav-sidebar">
					<li><a href="admin/getAllUser">管理用户</a></li>
				</ul>
				<ul class="nav nav-sidebar">
					<li><a href="admin/adminlink">管理链接</a></li>
				</ul>
				</shiro:hasRole>
			</div>	
<!-- adminLefeSide end -->			