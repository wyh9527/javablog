<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="adminHeader.jsp"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
 <%@ page isELIgnored="false"%>
<%@ include file="adminLeftSider.jsp"%>
			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<h1>${msg}</h1>
				<h2 class="sub-header">所有文章</h2>
				<table class="table table-hover">
					<thead>
						<tr>
						    <th>标题</th>
							<th>发布时间</th>
							<th>评论</th>
							<th>操作</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${adminblog.list}" var="blogs">
						<tr>
						   <td>${blogs.title}</td>
							<td>${blogs.releaseDate}</td>
							<td>${blogs.replyNumber}</td>
							<td>
								
								<div class="btn-group">
									<button type="button"
										class="btn btn-sm btn-default dropdown-toggle"
										data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										操作 <span class="caret"></span>
									</button>
									<ul class="dropdown-menu">
										<li><a href="getBlog.do?id=${blogs.id }">编辑</a></li>
										<li><a href="deleteBlog.do?id=${blogs.id }" onclick= "return del()">删除</a></li>
									</ul>
								</div>
							
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				<!-- 分页信息 -->
				<div class="col-md-6">
						当前<span class="label label-default">${adminblog.pageNum }</span>页
						|总<span class="label label-default">${adminblog.pages }</span>页
						|总<span class="label label-default">${adminblog.total }</span>篇文章.	
				</div>
				<div class="col-md-6">
						<nav aria-label="Page navigation">
						  <ul class="pagination">
						  	<li><a href="adminblog.do?pn=1">首页</a></li>
						  	<c:if test="${adminblog.hasPreviousPage}">
							    <li>
							      <a href="admin/adminblog.do?pn=${adminblog.pageNum-1}" aria-label="Previous">
							        <span aria-hidden="true">&laquo;</span>
							      </a>
							    </li>
						    </c:if>
						    <c:forEach items="${adminblog.navigatepageNums}" var="navigatepageNums">
						    	<c:if test="${navigatepageNums==adminblog.pageNum }">
						    		<li class="active"><a>${navigatepageNums }</a></li>
						    	</c:if>
						    	<c:if test="${navigatepageNums!=adminblog.pageNum }">
						    		<li><a href="adminblog.do?pn=${navigatepageNums}">${navigatepageNums }</a></li>
						    	</c:if>
						    </c:forEach>
						    <c:if test="${adminblog.hasNextPage}">
							    <li>
							      <a href="adminblog?pn=${adminblog.pageNum+1}" aria-label="Next">
							        <span aria-hidden="true">&raquo;</span>
							      </a>
							    </li>
						    </c:if>
						    <li><a href="adminblog.do?pn=${adminblog.pages }">末页</a></li>
						  </ul>
						</nav>			
					</div>	
			</div>
			<<script type="text/javascript">
			function del(){ 
				var fdel=window.confirm( "是否确定删除？ "); 
				if (fdel) 
				{ return true; } 
				else 
				{ return false; } 
				} 
         </script>
<%@ include file="adminFooter.jsp"%>