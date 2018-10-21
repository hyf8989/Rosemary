<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>userAdd</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript">

			addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
</script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<!-- Custom CSS -->
<link rel="stylesheet" type="text/css" href="layui/css/layui.css" />
<link href="css/style.css" rel='stylesheet' type='text/css' />

<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- jQuery -->
<script src="js/jquery-2.1.4.min.js"></script>

<!-- //jQuery -->
<link
	href='http://fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400'
	rel='stylesheet' type='text/css' />
<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700'
	rel='stylesheet' type='text/css'>
<!-- lined-icons -->
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
<!-- //lined-icons -->
</head>

<body>
	<div class="page-container">
		<!--/content-inner-->
		<div class="left-content">
			<div class="mother-grid-inner">
				<!--header start here-->
				<%@ include file="headnav.jsp"%>
				<!--heder end here-->
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">后台首页</a><i
						class="fa fa-angle-right"></i>用户管理<i class="fa fa-angle-right"></i>用户添加</li>
				</ol>
				<div class="agile3-grids">

					<div class="grid_3 grid_4 w3_agileits_icons_page">
						<div class="icons">
							<h2 class="agileits-icons-title">用户添加界面</h2>
							<br /> <br />
							<form action="" style="margin-bottom: 40%;">
								<div class="form-group">
									<label for="exampleInputText">账号:</label> <input type="text"
										class="form-control" id="userName" name="userName"
										aria-describedby="textHelp" placeholder="请输入账号">

								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">密码:</label> <input
										type="password" class="form-control" id="userPwd"
										name="userPwd" placeholder="请设置密码">
								</div>
								<div class="form-group">
									<label for="userTel">手机号:</label> <input
										type="text" class="form-control" id="userTel"
										name="userTel" placeholder="请输入手机号">
								</div>
								<center>
									<button type="button" class="btn btn-primary" id="userAdd"
										>添加用户</button>
								</center>
							</form>

						</div>

					</div>

				</div>
				<!-- script-for sticky-nav -->
				<script>
					$(document).ready(function() {
						var navoffeset = $(".header-main").offset().top;
						$(window).scroll(function() {
							var scrollpos = $(window).scrollTop();
							if (scrollpos >= navoffeset) {
								$(".header-main").addClass("fixed");
							} else {
								$(".header-main").removeClass("fixed");
							}
						});

					});
				</script>
				<!-- /script-for sticky-nav -->
				<!--inner block start here-->
				<div class="inner-block"></div>
				<!--inner block end here-->
				<!--copy rights start here-->
				<%@ include file="foot.jsp"%>
				<!--COPY rights end here-->
			</div>
		</div>
		<!--//content-inner-->
		<!--/sidebar-menu-->
		<%@ include file="left.jsp"%>
		<div class="clearfix"></div>
	</div>
	<!--js -->
	<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>
	<!-- /Bootstrap Core JavaScript -->
	<script type="text/javascript" src="layui/layui.js" charset="utf-8"></script>
	<script type="text/javascript">
		$(function() {
			layui.use('layer', function() {
				var layer = layui.layer;
			});
			var msg = "";//验证提示信息
			var flag = false;
			var userNameTest = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{4,16}$/;//用户名校验，必须为字母数字组合，且位数控制在4至16位
			var passwordTest = /^\w{6,16}$/;//密码校验，必须为6-16位任意字符
			var phoneTest=/^1\d{10}$/;//手机号正则表达式，规定由全为数字，1开头
			//验证用户名是否合法
			$("#userName").change(
					function() {
						//获取输入的账户名
						var userName = $("#userName").val();
						if (userNameTest.test(userName) == false) {
							msg = '必须为字母数字组合，且位数控制在4至16位';
							layer.msg('<span style="color:black;">' + msg
									+ '</span>', {
								icon : 4,
								time : 1000
							});
							$("#userName").val("");
						}
						//如果合法，就用ajax传值到Userservlet进行后台判断是否存在这个用户名
						else {
							//
							$.get("/Rosemary/user.action",
									"op=register&userName=" + userName,
									function(data, status) {
										layer.msg('<span style="color:black;">'
												+ data + '</span>', {
											icon : 6,
											time : 1000
										});
										if (data == "此用户名可用") {
											flag = true;
										} else {
											$("#userName").val("");
										}

									});
						}
					});
			//判断密码是否合法
			$("#userPwd").change(
					function() {
						var userPwd = $("#userPwd").val();
						if (passwordTest.test(userPwd) == false) {
							msg = "密码必须是6-16位字符";
							layer.msg('<span style="color:black;">' + msg
									+ '</span>', {
								icon : 6,
								time : 1000
							});
							$(this).val("");
						} else {
							flag = true;
						}
					});
			$("#userTel").change(
					function() {
						var userTel = $("#userTel").val();
						if (phoneTest.test(userTel) == false) {
							msg = "手机号必须是以1开始的11位有效数字";
							layer.msg('<span style="color:black;">' + msg
									+ '</span>', {
								icon : 6,
								time : 1000
							});
							$(this).val("");
						} else {
							flag = true;
						}
					});
			//添加用户
			$("#userAdd")
					.click(
							function() {
								var userName = $("#userName").val();
								var userPwd = $("#userPwd").val();
								var userTel = $("#userTel").val();
								/* console.log(userTel); */
								 if (flag == false
										|| (userName != "" && userPwd != "" &&userTel !="") == false) {
									msg = "请输入正确信息";
									layer.msg('<span style="color:black;">'
											+ msg + '</span>', {
										icon : 4,
										time : 2000
									});
								} else {
										
									
									if (msg = "添加成功") {
										layer
												.open({
													title : "友情提醒？",
													skin : "layui-layer-molv",
													content : "<span>确定添加吗？</span>",
													anim : 0,
													btn : [ '确定', '取消' ],
													yes : function(
															) {
														$.get("/Rosemary/user.action",
																"op=addUser&userName=" + userName
																		+ "&userPwd=" + userPwd+ "&userTel="+userTel,
																function(data, status) {
																	msg = data;
																	layer.msg('添加成功', {
																		icon : 1,
																		time : 2000
																	});
																});
														
														layer.closeAll();
														
													},
													btn2 : function(
															) {
														layer.close();
													}
												});
									}
								} 
							});
		});
	</script>
</body>

</html>