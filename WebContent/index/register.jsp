<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>注册</title>
<link rel="stylesheet" href="css/style3.css" />
<body>

<div class="register-container">
	<h1>用户注册</h1>
	
	<form action="" method="post" >
		<div>
			<input type="text" name="username"  placeholder="您的用户名" />
		</div>
		<div>
			<input type="password" name="password" class="password" placeholder="输入密码"  />
		</div>
		<div>
			<input type="password" name="confirm_password" class="confirm_password" placeholder="再次输入密码"  />
		</div>
		<div>  
		<input type="text" name="phone_number"  placeholder="输入手机号码"  id="phoneNumber"/>
		
		</div>
		
        <button id="send" type="button">点击发送验证码</button>
		<button id="submit" type="submit">注 册</button>
	</form>
	<a href="login.jsp">
		<button type="button" class="register-tis">已经有账号？</button>
	</a>

</div>
<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js">
</script>

<script type="text/javascript">

	 $(function(){
		 
		var phoneNumber=$("#phoneNumber").val();
		var phoneTest=/^1\d{10}$/;//手机号正则表达式
		
	 $("#send").click(function(){
		$(this).attr("disabled","disabled");//将按钮设为不可点击
		
		$.get("user.action",function(data,status){
			 console.log(data);
		});
		
	 })	 ;
	 
	 
	 
	 });
	

 
 
 
</script>

<script src="js/jquery.min.js"></script>
<script src="js/common.js"></script>
<!--背景图片自动更换-->
<script src="js/supersized.3.2.7.min.js"></script>
<script src="js/supersized-init.js"></script>
<!--表单验证-->
<script src="js/jquery.validate.min.js?var1.14.0"></script>

</body>
</html>