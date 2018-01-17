<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
 <%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<% pageContext.setAttribute("${pageContext.request.contextPath}", request.getContextPath());%>  
 <%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="description" content="">
  
  <!-- Google Fonts -->
  <link href='http://fonts.googleapis.com/css?family=Raleway:300,400%7COpen+Sans:400,400i,700%7CLibre+Baskerville:400i' rel='stylesheet'>

  <!-- Css -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/bootstrap.min.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/font-icons.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/sliders.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/style.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/responsive.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/spacings.css" />
  <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/animate.min.css" />
<style type="text/css">
 .sb{
display: block;
            max-height:100rem;	
            text-overflow: ellipsis;
            overflow: hidden;
            white-space: nowrap; 
}
</style>
</head>
<body class="relative">

  <!-- Preloader -->

  <div class="main-wrapper oh">

    <header class="nav-type-1 dark-nav">

      <!-- Fullscreen search -->
      <div class="search-wrap">
        <div class="search-inner">
          <div class="search-cell">
            <form method="get">
              <div class="search-field-holder">
                <input type="search" class="form-control main-search-input" placeholder="Search for">
                <div class="search-submit-icon"><i class="icon icon_search"></i></div>
                <input type="submit" class="search-submit" value="search">
              </div>            
            </form>
          </div>
        </div>
        <i class="icon icon_close search-close" id="search-close"></i>
      </div> <!-- end fullscreen search -->
    
      <nav class="navbar navbar-fixed-top">
        <div class="navigation">
          <div class="container relative">

            


              <!-- side menu -->
              <div class="side-menu nav-left hidden-sm hidden-xs">
                <div class="nav-inner">
                  <div class="nav-search-wrap hidden-sm hidden-xs">
                    <a href="#" class="nav-search search-trigger">
                      <i class="icon icon_search"></i>
                    </a>
                  </div>
                </div>
              </div> <!-- end side menu -->

              <div class="col-md-12 nav-wrap">
                <div class="collapse navbar-collapse text-center" id="navbar-collapse">
                  
                  <ul class="nav navbar-nav">

					<li><a href="${pageContext.request.contextPath}/index.do">主页</a></li>
					<li><a href="about.html">关于</a></li>
                    <li><a href="blog-single.html">源码下载</a></li>
					<li><a href="contact.html">联系</a></li>

                    <li id="mobile-search" class="hidden-lg hidden-md">
                      <form method="get" class="mobile-search">
                        <input type="search" class="form-control" placeholder="Search...">
                        <button type="submit" class="search-button">
                          <i class="icon icon_search"></i>
                        </button>
                      </form>
                    </li>
                  </ul> <!-- end menu -->
                </div> <!-- end collapse -->
              </div> <!-- end col -->

              <!-- side menu -->
              <div class="side-menu right mobile-left-align">
                <div class="nav-inner menu-socials social-icons">
                  <div class="right">
                    <a href="#"><i class="fa fa-instagram"></i></a>
                    <a href="#"><i class="fa fa-facebook"></i></a>
                    <a href="#"><i class="fa fa-twitter"></i></a>
                    <a href="#"><i class="fa fa-pinterest-p"></i></a>
                    <a href="#"><i class="fa fa-heart"></i></a>
                  </div>
                </div>
              </div> <!-- end side menu -->
          
            </div> <!-- end row -->
          </div> <!-- end container -->
        </div> <!-- end navigation -->
      </nav> <!-- end navbar -->
    </header>

    <section class="header-wrap hero-section bg-light ">
      <div class="container sb">
        <div class="logo-container text-center">
          <div class="logo-wrap">
            <a href="index.html">
              <img class="logo-dark" src="${pageContext.request.contextPath}/statics/img/logo_dark_big.png" alt="logo">
            </a>
          </div>
        </div>
      </div>
    </section>

    <div class="content-wrapper oh">

     

      <!-- Content -->
      <section class="content blog-standard">
        <div class="container relative">
          <div class="row">
            
            <!-- post content -->
            <div class="col-md-9 post-content mb-50">
            
              <!-- large post -->
              
           <c:forEach items="${pageInfo.list}" var="blog">
					 <article class="entry-item large-post ">
              <div class="entry-header">
                  <a href="#" class="entry-category">求职</a>
                  <h2 class="entry-title">
                    <a href="${pageContext.request.contextPath}/IndexgetBlogbyid.do?id=${blog.id}"><c:out value="${blog.title}"/></a>
                  </h2>
                </div>
                
                <div class="entry-img">
                  <a href="blog-single.html">
                    <img src="${pageContext.request.contextPath}/statics/ifeatured_post.jpg" alt="">
                  </a>
                </div>
                
                <div>
                  <div class="sb">                    
                      <p>${blog.content}
                      </p>
                      <div>
                      <div class="text-center">
                        <a href="${pageContext.request.contextPath}/IndexgetBlogbyid.do?id=${blog.id}" class="read-more underline-link">Read More</a>
                      </div>
                   

                    <div class="entry-meta-wrap clearfix">
                      <ul class="entry-meta">
                        <li class="entry-date">
                          <c:out value="${blog.releaseDate}"/>
                        </li>                 
                        <li class="entry-comments">
                          <a href="blog-single.html">2 Comments</a>
                        </li>   
                        <li class="entry-date">
                              <span>Visit( )</span>
                            </li>          
                      </ul>

                      <div class="social-icons right">
                        <a href="#">
                          <i class="fa fa-instagram"></i>
                        </a>
                        <a href="#">
                          <i class="fa fa-facebook"></i>
                        </a>
                        <a href="#">
                          <i class="fa fa-twitter"></i>
                        </a>                        
                        <a href="#">
                          <i class="fa fa-pinterest-p"></i>
                        </a>
                        <a href="#">
                          <i class="fa fa-heart"></i>
                        </a>
                      </div>
                    </div>
                  </div>
                </div>
              </article> <!-- end large post -->
               </c:forEach>
              <div class="row mt-20">
                <div class="col-md-12 text-center">
                <c:if test="${pageInfo.hasPreviousPage}">
                  <a href="${pageContext.request.contextPath}/indextype/${pageInfo.pageNum-1}.do?typeId=" class="btn btn-md btn-stroke" id="load-more">Previous Page</a>
                  </c:if>
                  &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp &nbsp
                 	<c:if test="${pageInfo.hasNextPage}"> 
                  <a href="${pageContext.request.contextPath}/indextype/${pageInfo.pageNum+1}.do?typeId=" class="btn btn-md btn-stroke" id="load-more">Next   Page</a>
                  </c:if>
                </div>
              </div>


            </div> <!-- end col -->
            
            <!-- Sidebar -->
            <aside class="col-md-3 sidebar">

              <div class="widget about-blog text-center">
                <div class="heading-lines">
                  <h3 class="widget-title heading">我的信息</h3>
                </div>
                <img src="img/about_me.jpg" alt="">
                <p class="mb-20 mt-30">A personal diary of wanderlust and an overflowing wardrobe. Live with passion.</p>
                <img src="${pageContext.request.contextPath}/statics/img/signature.png" alt="">
              </div>

              
             

              <!-- Categories -->
              <div class="widget categories">
                <div class="heading-lines">
                  <h3 class="widget-title heading">按日志种类</h3>
                </div>
                <ul class="list-dividers">
                     <c:forEach items="${blogtypelistIndex}" var="blogtypelistIndex">
                  <li>
                    <a href="${pageContext.request.contextPath}/indextype.do?typeId=${blogtypelistIndex.id}">${blogtypelistIndex.typeName}</a><span>(${blogtypelistIndex.blogCount})</span>
                  </li>
                     </c:forEach>
                </ul>
              </div>

              <!-- Ad banner -->
              <div class="widget custom-ad-banner">
                <a href="#">
                  <img src="${pageContext.request.contextPath}/static/img/banner.jpg" alt="">
                </a>
              </div>

       

              <!-- Latest Tweets -->
              <div class="widget categories">
                <div class="heading-lines">
                  <h3 class="widget-title heading">友情链接</h3>
                </div>
                <div class="twitter-slider text-center">
                  <i class="fa fa-twitter twitter-icon"><a href="#">聂峰军笔记</a></i>
                   <i class="fa fa-twitter twitter-icon"><a href="#">网易云音乐</a></i>
                  <div id="tweets"></div>
                </div>
              </div>

            </aside> <!-- end sidebar -->
      
          </div> <!-- end row -->
        </div> <!-- end container -->
      </section> <!-- end content -->


      


      <div class="widget-social">
        <div class="social-icons text-center">
          <a href="#">
            <i class="fa fa-instagram"></i>
            <span>instagram</span>
          </a>
          <a href="#">
            <i class="fa fa-facebook"></i>
            <span>facebook</span>
          </a>
          <a href="#">
            <i class="fa fa-twitter"></i>
            <span>twitter</span>
          </a>
          <a href="#">
            <i class="fa fa-pinterest-p"></i>
            <span>pinterest</span>
          </a>
          <a href="#">
            <i class="fa fa-rss"></i>
            <span>rss</span>
          </a>
        </div>
      </div>


      <!-- Footer Type-1 -->
      <footer class="footer footer-type-1 bg-dark">
        <div class="bottom-footer">
          <div class="container">
            <div class="row">

              <div class="col-sm-12 copyright text-center">
                <span>
                 <a target="_blank" href="http://www.niefengjun.cn"> Copyright &copy; 2018.Company name All rights reserved.</a>
                </span>
              </div>

            </div>
          </div>
        </div>
      </footer> <!-- end footer -->


      <div id="back-to-top">
        <a href="#top"><i class="fa fa-angle-up"></i></a>
      </div>

    </div> <!-- end content wrapper -->
  </div> <!-- end main wrapper -->

  <!-- jQuery Scripts -->
  <script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/jquery.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/plugins.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/statics/js/scripts.js"></script>

  <!-- Instafeed -->
  

    
</body>
</html>