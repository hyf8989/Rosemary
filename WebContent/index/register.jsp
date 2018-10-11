<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>jQuery背景切换注册登录模板</title>
<link rel="stylesheet" href="css/style3.css" />
<body>

<div class="register-container">
	<h1>用户注册</h1>
	
	<form action="" method="post" id="registerForm">
		<div>
			<input type="text" name="username" class="username" placeholder="您的用户名" autocomplete="off"/>
		</div>
		<div>
			<input type="password" name="password" class="password" placeholder="输入密码" oncontextmenu="return false" onpaste="return false" />
		</div>
		<div>
			<input type="password" name="confirm_password" class="confirm_password" placeholder="再次输入密码" oncontextmenu="return false" onpaste="return false" />
		</div>
		<div>
		<input type="text" name="phone_number" class="phone_number" placeholder="输入手机号码" autocomplete="off" id="number"/>
		 <button id="submit" value="点击发送验证码" onclick="sendCode(this)">点击发送验证码</button>
		</div>
		

		<button id="submit" type="submit">注 册</button>
	</form>
	<a href="index.html">
		<button type="button" class="register-tis">已经有账号？</button>
	</a>

</div>

<script type="text/javascript">
 var clock = '';
 var nums =60;
 var btn;
 function sendCode(thisBtn)
 { 
  btn = thisBtn;
 btn.disabled = true; //将按钮置为不可点击
 btn.value = nums+'秒后可重新获取';
 clock = setInterval(doLoop, 1000); //一秒执行一次 

 }
 function doLoop()
 {
 nums--;
 if(nums > 0){
  btn.value = nums+'秒后可重新获取';
 }else{
  clearInterval(clock); //清除js定时器
  btn.disabled = false;
  btn.value = '点击发送验证码';
  nums = 60; //重置时间
 }
 }
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