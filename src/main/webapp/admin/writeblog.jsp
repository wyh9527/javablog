<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="adminHeader.jsp"%>
<%@ include file="adminLeftSider.jsp"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
  <%@ page isELIgnored="false"%>

			<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">

				<!-- 导入css/js -->
				<script type="text/javascript" charset="utf-8" 
				src="static/ckeditor/ckeditor.js"></script>
				<form action="addBlogs.do" method="post">
					<div class="table-responsive">
						<h2 class="sub-header">写文章</h2>
						<div class="col-md-10">
							<input type="text" class="form-control" name="title" id="title" placeholder="在此输入文章标题" value="">
							<textarea id="content" name="content" >记录下自己的点点滴滴....</textarea>
							<script type="text/javascript">
								CKEDITOR.replace("content");
							</script>
						</div>
						<div class="col-md-2">
							<div class="panel panel-default">
							
								<div class="panel-heading">
									<h3 class="panel-title">发布选项</h3>
								</div>
								<div class="panel-body">
								<div class="form-group status">
							 			<p>文章分类</p>
										<select class="form-control" id="blogTypeId" name="blogType.id" >
										 <option value ="">请选择分类</option>
										<c:forEach items="${blogtypecountlist}" var="BlogType">
                                        <option value ="${BlogType.id}">${BlogType.typeName }</option>
                                        </c:forEach>
                                       </select>
										
									</div>
								<hr>	
									<div class="form-group status">
							 			<p>文章状态</p>
										<label class="radio-inline"> 
											<input type="radio" name="status" value="1" checked=""> 发布
										</label>
										<label class="radio-inline"> 
											<input type="radio" name="status" value="0">草稿
										</label> 
									</div>
									<button class="btn btn-primary">提交</button>
									<button>保存</button>
								</div>
								</hr>
							</div>
						</div>
					</div>
				</form>
			</div>
<%@ include file="adminFooter.jsp"%>