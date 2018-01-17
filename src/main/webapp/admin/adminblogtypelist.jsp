	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>jQuery鼠标点击弹出登录框代码 - 站长素材</title>
<script type="text/javascript" src="static/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="static/js/login.js"></script>
<link rel="stylesheet" type="text/css"  href="static/css/style1.css"/>
<link rel="stylesheet" type="text/css"  href="static/css/style2.css"/>
<link href="static/css/logo.css" type="text/css" rel="stylesheet"/>
<script type="text/javascript">
		var msg ="${message}";
		if(msg!=""){
			alert(msg);
		}
</script>
</head>
<%@ include file="adminHeader.jsp"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
 <%@ page isELIgnored="false"%>
<%@ include file="adminLeftSider.jsp"%>

			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
				<h1>${msg}</h1>
				<h2 class="sub-header">文章类别</h2>
				<div class="login-header"><a href="javascript:void(0);">+</a>新的分类</div>
    <div class="login">
    <div class="login-title">添加分类<span><a href="javascript:void(0);" class="close-login">关闭</a></span></div>
   <form action="addblogPageInfo.do" method="post">
    <div class="login-input-content">
   
        <div class="login-input">
            <label>分类名称</label>
            <input type="text" placeholder="请输入名称"  name="typeName" id="blogPageInfo" class="list-input"/>
        </div>
        
    </div>
   <div class="login-title"><button type="submit" id="login-button">提交</button></div>
    </form>
</div>
	
				<table class="table table-hover">
					<thead>
						<tr>
						    <th>编号</th>
							<th>博客类型</th>
						</tr>
					</thead>
					<tbody>
					<c:forEach items="${blogPageInfo.list}" var="blogtype">
						<tr>
						   <td>${blogtype.id}</td>
							<td>${blogtype.typeName}</td>
							<td>${blogtype.blogCount}</td>
							<td>
								
								<div class="btn-group">
									<button type="button"
										class="btn btn-sm btn-default dropdown-toggle"
										data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										操作 <span class="caret"></span>
									</button>
									<ul class="dropdown-menu">
										<li><a href=javascript:void(0);>编辑</a></li>
										<li><a href="deleteblogtype.do?id=${blogtype.id}">删除</a></li>
									</ul>
								</div>
							
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
				</hr>
				<!-- 分页信息 -->
				<div class="col-md-6">
						当前<span class="label label-default">${blogPageInfo.pageNum }</span>页
						|总<span class="label label-default">${blogPageInfo.pages }</span>页
						|总<span class="label label-default">${blogPageInfo.total }</span>中分类.	
				</div>
				<div class="col-md-6">
						<nav aria-label="Page navigation">
						  <ul class="pagination">
						  	<li><a href="blogtypelist.do?pn=1">首页</a></li>
						  	<c:if test="${blogPageInfo.hasPreviousPage}">
							    <li>
							      <a href="blogtypelist.do?pn=${blogPageInfo.pageNum-1}" aria-label="Previous">
							        <span aria-hidden="true">&laquo;</span>
							      </a>
							    </li>
						    </c:if>
						    <c:forEach items="${blogPageInfo.navigatepageNums}" var="navigatepageNums">
						    	<c:if test="${navigatepageNums==blogPageInfo.pageNum }">
						    		<li class="active"><a>${navigatepageNums }</a></li>
						    	</c:if>
						    	<c:if test="${navigatepageNums!=blogPageInfo.pageNum }">
						    		<li><a href="blogtypelist.do?pn=${navigatepageNums}">${navigatepageNums }</a></li>
						    	</c:if>
						    </c:forEach>
						    <c:if test="${blogPageInfo.hasNextPage}">
							    <li>
							      <a href="blogtypelist.do?pn=${blogPageInfo.pageNum+1}" aria-label="Next">
							        <span aria-hidden="true">&raquo;</span>
							      </a>
							    </li>
						    </c:if>
						    <li><a href="blogtypelist.do?pn=${blogPageInfo.pages }">末页</a></li>
						  </ul>
						</nav>			
					</div>	
			</div>
			 
<%@ include file="adminFooter.jsp"%>