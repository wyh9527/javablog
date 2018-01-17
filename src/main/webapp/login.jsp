<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
  <%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
	<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link type="image/vnd.microsoft.icon" href="static/img/favicon.png" rel="shortcut icon">
    <title>登录</title>
    <script src="static/js/jquery.1.4.2.min.js"></script>
	<link href="static/css/logo.css" type="text/css" rel="stylesheet"/>
</head>
<body>
<div class="wrapper">

    <div class="froyo-frame login-body">
        <div class="admin-face">
            <div class="face-img">
            <img src="static/img/headicon.jpg" alt="logo">
        </div>
        </div>
        <h1 class="admin-login-tittle">「从现在开始，为自己的未来做准备」</h1>
        <div class="admin-login-form">
            <form class="form" action="login.do" method="post" autocomplete="off">
                <div class="admin-name"><input name="username" type="text" placeholder="用户名"></div>
                <div class="admin-password"><input name="password" type="password" placeholder="密码"></div>
                <div class="admin-button"><button type="submit" id="login-button">登录</button></div>
                <div class="admin-button"><a id="login-button" href="${APP_PATH}">返回首页</a></div>
            </form>
        </div>
        <h1 class="admin-login-tittle">
	${message}	
        </h1>
    </div>

</div>

<script type="text/javascript">
 
	//login-button的点击事件..
    $('#login-button').click(function(event){
        event.preventDefault();
        $('form').fadeOut(500);
        $('.wrapper').addClass('form-success');
        $('.form').submit();
    });
    //重新发送激活邮件!
    function setReEmail(id){
    	var html = "";
    	$("#setReMsg").empty();
    	$.post(
    			"${APP_PATH}/setReEmail",
    			{id:id},
    			function(data){
    				var obj =$.parseJSON(data);
    				if(obj.success){
    					html ="邮件已发送，请到邮箱查收..."; 
    					$("#setReMsg").append(html);
    				}else{
    					html ="邮件发送失败，请到联想管理员邮箱..."; 
    					$("#setReMsg").append(html);
    				}
    			}
    		)
    }
	
</script>

</body>
</html>