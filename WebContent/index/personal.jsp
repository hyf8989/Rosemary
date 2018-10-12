<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>个人信息展示</title>
<!-- for-mobile-apps -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Personal Profile Form Widget Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- //for-mobile-apps -->
<link href='//fonts.googleapis.com/css?family=Questrial' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/p-forms.css">
<link href="css/style2.css" rel="stylesheet" type="text/css" media="all" />
 <script src="https://cdn.bootcss.com/jquery/1.10.2/jquery.min.js">
</script>
</head>
<body>
<div class="content">
		<h1>我的基本信息</h1>
		<div class="main w3l">
			<div class="im-g">
				<img src="images/img1.jpg" alt="">
			</div>
			<form class="contact-forms wthree">
				<!-- end /.header-->

					<!-- start name -->
					<div class="first-line agileits">
						<div class="span6 main-row">
							<div class="input">								
								用户名：<input type="text" id="userName" name="userName" placeholder="user name" required="">
							</div>
						</div>
						<div class="span6 main-row">
							<div class="input">								
								真实姓名：<input type="text" id="reaName" name="reaName" placeholder="really Name" required="">								
							</div>
						</div>
					</div>
					<!-- end name -->

					<!-- start email phone -->
					<div class="first-line agileits">
						<div class="span6 main-row">
							<div class="input">							
								邮箱：<input type="email" placeholder="Email" id="email" name="email" required="">
							</div>
						</div>
						<div class="span6 main-row">
							<div class="input">
								
								电话：<input type="text" placeholder="Phone" id="phone" name="phone" required="">
							</div>
						</div>
					</div>
					<!-- start createTime post code -->
					<div class="first-line agileits">
						<div class="span8 main-row">
							<div class="input">								
								注册时间:<input type="text" id="createTime" placeholder="注册时间" name="createTime" required="">
							</div>
						</div>						
					</div>
					<!-- end createTime post code -->	
					
					<!-- start updateTime post code -->
					<div class="first-line agileits">
						<div class="span8 main-row">
							<div class="input">								
								更新时间:<input type="text" id="updateTime" placeholder="更新时间" name="updateTime" required="">
							</div>
						</div>
						
					</div>
					<!-- end updateTime post code -->	
					
				<!-- end /.content -->

				<div class="footer">
					<button type="button" class="secondary-btn">取消</button>					
					<button type="submit" class="primary-btn">提交</button>
					<button type="button" class="secondary-btn">修改</button>
				</div>
				<!-- end /.footer -->
			</form>
		</div>
</div>
		<!-- Scripts -->
		<script src="js/jquery.1.11.1.min.js"></script>
		<script>
			$(document).ready(function(){
				// Phone masking
				$('#phone').mask('(999) 999-9999', {placeholder:'x'});
			});
		</script>
</body>
</html>
