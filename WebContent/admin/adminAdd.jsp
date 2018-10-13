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
				<%@ include file="headnav.jsp" %>
				<!--heder end here-->
				<ol class="breadcrumb">
					<li class="breadcrumb-item"><a href="index.html">后台首页</a><i
						class="fa fa-angle-right"></i> 系统管理<i class="fa fa-angle-right"></i>管理员添加</li>
				</ol>
				<div class="agile3-grids">

					<div class="grid_3 grid_4 w3_agileits_icons_page">
						<div class="icons">
							<h2 class="agileits-icons-title">管理员添加界面</h2>
							<br />
							<br />
							<form action="/Rosemary/manager.action" style="margin-bottom: 40%;">
								<div class="form-group">
									<label for="exampleInputEmail1">管理员账号：</label> <input
										type="email" name="adminName" class="form-control" id="exampleInputEmail1"
										aria-describedby="emailHelp" placeholder="Enter email">
									<small id="emailHelp" class="form-text text-muted">We'll
										never share your email with anyone else.</small>
								</div>
								<div class="form-group">
									<label for="exampleInputPassword1">密码:</label> <input
										type="password" name="adminPwd" class="form-control"
										id="exampleInputPassword1" placeholder="Password">
								</div>
								<div class="form-group">
									<label for="exampleInputAdminStatus">管理员状态:</label> <select
										class="form-control" name="adminStatus">
										<option>请选择</option>
										<option value="0">锁定</option>
										<option value="1">解锁</option>
									</select>
								</div>
								<div class="form-group">
									<label for="exampleInputAdminLevel">管理员身份:</label> <select
										class="form-control" name="adminLevel">
										<option>请选择</option>
										<option value="1">店铺管理员</option>
										<option value="0">系统管理员</option>
									</select>
								</div>
								<center>
									<div class="form-check">
										<input type="checkbox" class="form-check-input"
											id="exampleCheck1"> <label class="form-check-label"
											for="exampleCheck1" style="margin-top: 40px;">确定添加</label>
									</div>
									<button type="submit" class="btn btn-primary" id="adminAdd">添加管理员</button>
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
				<%@ include file="foot.jsp" %>
				<!--COPY rights end here-->
			</div>
		</div>
		<!--//content-inner-->
		<!--/sidebar-menu-->
		<%@ include file="left.jsp" %>
		<div class="clearfix"></div>
	</div>
	<script>
		var toggle = true;

		$(".sidebar-icon").click(
				function() {
					if (toggle) {
						$(".page-container").addClass("sidebar-collapsed")
								.removeClass("sidebar-collapsed-back");
						$("#menu span").css({
							"position" : "absolute"
						});
					} else {
						$(".page-container").removeClass("sidebar-collapsed")
								.addClass("sidebar-collapsed-back");
						setTimeout(function() {
							$("#menu span").css({
								"position" : "relative"
							});
						}, 400);
					}

					toggle = !toggle;
				});
	</script>
	<!--js -->
	<script type="text/javascript" src="layui/layui.js" charset="utf-8"></script>
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>
	<!-- /Bootstrap Core JavaScript -->
	<script type="text/javascript">
		layui.use('layer', function() {
			var layer = layui.layer;

		});
		$("#adminAdd").click(function() {
			layer.open({
				title : "友情提醒？",
				skin : "layui-layer-molv",
				content : "<span>确定添加吗？</span>",
				anim : 0,
				btn : [ '确定', '取消' ],
				yes : function(index, layero) {
					layer.msg('添加成功', {
						icon : 1,
						time : 2000
					});
				},
				btn2 : function(index, layero) {
					layer.close();
				}
			});

		});
	</script>
</body>

</html>