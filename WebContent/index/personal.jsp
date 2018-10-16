<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>个人信息展示</title>
<!-- for-mobile-apps -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Personal Profile Form Widget Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- //for-mobile-apps -->
<link href='//fonts.googleapis.com/css?family=Questrial'
	rel='stylesheet' type='text/css'>
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/p-forms.css">
<link href="css/style2.css" rel="stylesheet" type="text/css" media="all" />


</head>
<body>
	<div class="content">
		<h1>我的基本信息</h1>
		<div class="main w3l">
			<div class="im-g">
				<img src="images/img1.jpg" alt="">
			</div>

			<c:if test="${sessionScope.ubList==null }">
				<jsp:forward page="/ub.do&op=queryUserBean"></jsp:forward>
			</c:if>

			<c:forEach var="userBean" items="${sessionScope.ubList}">
				<form class="contact-forms wthree">
					<!-- end /.header-->

					<!-- start name -->
					<div class="first-line agileits">
						<div class="span6 main-row">
							<div class="input">
								用户名：<input type="text" id="userName" name="userName"
									value="${userBean.userName}">
							</div>
						</div>
						<div class="span6 main-row">
							<div class="input">
								真实姓名：<input type="text" id="name" name="name"
									value="${userBean.name}">
							</div>
						</div>
					</div>
					<!-- end name -->
					<!-- start email phone -->
					<div class="first-line agileits">
						<div class="span6 main-row">
							<div class="input">
								邮箱：<input type="email" id="userEmail" name="userEmail"
									required="" value="${userBean.userEmail}">
							</div>
						</div>
						<div class="span6 main-row">
							<div class="input">
								电话：<input type="text" id="userTel" name="userTel"
									value="${userBean.userTel}">
							</div>
						</div>
					</div>
					<!-- start createTime post code -->
					<div class="first-line agileits">
						<div class="span8 main-row">
							<div class="input">
								注册时间:<input type="text" readonly="true" id="createTime"
									name="createTime" value="${userBean.createTime}">
							</div>
						</div>
					</div>
					<!-- end createTime post code -->

					<!-- start updateTime post code -->
					<div class="first-line agileits">
						<div class="span8 main-row">
							<div class="input">
								更新时间:<input type="text" readonly="true" id="updateTime"
									name="updateTime" value="${userBean.updateTime}">
							</div>
						</div>

					</div>
					<!-- end updateTime post code -->

					<!-- end /.content -->

					<div class="footer">
						<button id="exit" name="exit" type="button" class="secondary-btn">关闭</button>
						<button id="update" type="button" name="update"
							class="primary-btn">确认修改</button>
					</div>
					<!-- end /.footer -->
				</form>
			</c:forEach>
		</div>
	</div>
	<!-- 修改信息的单击事件 -->
	<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
	<script src="https://cdn.bootcss.com/jquery/1.10.2/jquery.min.js"></script>
	<script type="text/javascript" src="layui/layui.js"></script>
	<script type="text/javascript">
		layui.use('layer', function() {
			var msg;
			var layer = layui.layer;
		});
		$("#update").click(
				function() {
					//获取当前用户编号
					var userId = "${sessionScope.ub.userId}";
					//获取输入的用户名
					var userName = $("#userName").val();
					var name = $("#name").val();
					var userEmail = $("#userEmail").val();
					var userTel = $("#userTel").val();
					$.post("/Rosemary/ub.do",
							"op=updateInfo&userId=" + userId + "&userName="
									+ userName + "&name=" + name
									+ "&userEmail=" + userEmail + "&userTel="
									+ userTel, function(data, status) {
								msg = data;
							});

					layer.open({
						title : "温馨提醒",
						skin : "layui-layer-molv",
						content : "<span style='color:black;'>" + msg
								+ "</span>",
						anim : 0,
						btn : [ 'OK' ],
						yes : function(index, layero) {
							layer.closeAll();
							location.href = "/Rosemary/index/index.jsp";
						}
					});

				});
	</script>
	<!-- 点击关闭按钮跳转到首页 -->
	<script type="text/javascript">
	
	$("#exit").click(function () {
		location.href = "/Rosemary/index/index.jsp";
	});
	</script>

</body>
</html>
