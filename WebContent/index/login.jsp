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
	
	
		<div>
			<input type="text" name="userName" id="userName"  placeholder="用户名" />
			<input type="hidden" name="op" value="login" id="op">
		</div>
		<div>
			<input type="password" name="userPwd" id="userPwd" placeholder="密码"  />
		</div>
		<button id="login" type="button">登 录</button><br/>
	

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

 <script type="text/javascript" src="layui/layui.js">
			
		</script> 
		
<script>
$(function(){
	$("#login").click(function(){
		  layui.use('layer', function() {
				var layer = layui.layer;

			});
	   var userName=$("#userName").val();
	   var op=$("#op").val();
	   var userPwd=$("#userPwd").val();
	   $.get("/Rosemary/user.action","userName="+userName+"&op="+op+"&userPwd="+userPwd,function(data,status){
	      if(data=="登录成功"){
	    	  layer.open({
					title: "友情提醒",
					skin: "layui-layer-lan",
					content: "<span style='color:black;'>"+data+"</span>",
					anim: 0,
					btn: ['确定'],
					yes: function(index, layero) {
						location.href="index.jsp";
					}
					
				});
	      }
	      else{
	    	  layer.msg('<span style="color:black;">'+data+'</span>', {
					icon:5,
					time: 2000
				});
	    	  $("#userName").val("");
	    	  $("#userPwd").val("");
	    	  
	      }
	   
	   });
	 
	
	});
	//键盘监听回车事件
	$('#userPwd').bind('keyup', function(event) {

		　　if (event.keyCode == "13") {

		　　　　//回车执行查询 

		　　　　$('#login').click();

		　　}

		});
	});
	
</script>


</body>
</html>