<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>用户列登录</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link rel="stylesheet" href="css/style3.css" />

<body>

<div class="login-container">
	<h1>用户登录</h1>
	
	<form action="" method="post" id="loginForm">
		<div>
			<input type="text" name="userName" class="userName" placeholder="用户名" autocomplete="off"/>
			<input type="hidden" name="op" value="login">
		</div>
		<div>
			<input type="password" name="userPwd" class="userPwd" placeholder="密码" oncontextmenu="return false" onpaste="return false" />
		</div>
		<button id="submit" type="submit">登 录</button>
	</form>

	<a href="register.jsp">
		<button type="button" class="register-tis">还有没有账号？</button>
	</a>

</div>

<script src="js/jquery.min.js"></script>
<script src="js/common.js"></script>
<!--背景图片自动更换-->
<script src="js/supersized.3.2.7.min.js"></script>
<script src="js/supersized-init.js"></script>
<!--表单验证-->
<script src="js/jquery.validate.min.js?var1.14.0"></script>



</body>
</html>