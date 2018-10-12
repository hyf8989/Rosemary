<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
		<meta charset="UTF-8">
		<title>我的收货地址</title>
		<meta charset="utf-8">
		<title>首页</title>
		<meta name="description" content="">
		<meta name="author" content="">
		<meta name="keywords" content="">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<!-- Mobile Specific Meta  -->
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Lato:400,300,700,900,100' rel='stylesheet' type='text/css'>
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/font-awesome.min.css" />
		<!-- Custom CSS -->
		<link href="style.css" rel="stylesheet">
		<link href="layui/css/layui.css" rel="stylesheet">
		<link rel="stylesheet" type="text/css" href="layui/css/layui.css" />
		<style type="text/css">
			.addressCard {
				border: solid mistyrose;
				
				margin-bottom: 5px;
			}
			.container{
				margin-right: auto;
				margin-left: auto;
				margin-top: 20px;
			}
		</style>
	</head>

	<body>
	 <%@ include file="headhav.jsp" %>
	 
		<div class="container ">

			<div class="row ">

				<div class="col-md-4 addressCard">

					<div class="layui-card ">
						<div class="layui-card-header">我的收货地址</div>
						<div class="layui-card-body">
							<ul>
							<li><label>收货人姓名：</label><label>小黄</label></li>
							
							<li><label>联系方式：</label><label>17720835697</label></li>
							<li><label>福建</label><label>省</label>
						<label>厦门</label><label>市</label></li>
							<li><label>湖里</label><label>区</label>
							<label>吕岭路明发园小区</label>
							<label>8号楼408室</label></li>
							<li><label>邮编：123456</label></li>
							<li style="text-align: right;"><i class="layui-icon layui-icon-edit"></i>
								<i class="layui-icon layui-icon-delete"></i>
								<i class="layui-icon layui-icon-add-1"></i>
							</li>
							
							</ul>
						</div>
					</div>
				</div>

				<div class="col-md-4 addressCard">

					<div class="layui-card ">
						<div class="layui-card-header">我的收货地址</div>
						<div class="layui-card-body">
							<ul>
							<li><label>收货人姓名：</label><label>小黄</label></li>
							
							<li><label>联系方式：</label><label>17720835697</label></li>
							<li><label>福建</label><label>省</label>
						<label>厦门</label><label>市</label></li>
							<li><label>湖里</label><label>区</label>
							<label>吕岭路明发园小区</label>
							<label>8号楼408室</label></li>
							<li><label>邮编：123456</label></li>
							<li style="text-align: right;"><i class="layui-icon layui-icon-edit"></i>
								<i class="layui-icon layui-icon-delete"></i>
								<i class="layui-icon layui-icon-add-1"></i>
							</li>
							
							</ul>
						</div>
					</div>
				</div>
				<div class="col-md-4 addressCard">

					<div class="layui-card ">
						<div class="layui-card-header">我的收货地址</div>
						<div class="layui-card-body">
							<ul>
							<li><label>收货人姓名：</label><label>小黄</label></li>
							
							<li><label>联系方式：</label><label>17720835697</label></li>
							<li><label>福建</label><label>省</label>
						    <label>厦门</label><label>市</label></li>
							<li><label>湖里</label><label>区</label>
							<label>吕岭路明发园小区</label>
							<label>8号楼408室</label></li>
							<li><label>邮编：123456</label></li>
							<li style="text-align: right;"><i class="layui-icon layui-icon-edit"></i>
								<i class="layui-icon layui-icon-delete"></i>
								<i class="layui-icon layui-icon-add-1"></i>
							</li>
							
							</ul>
						</div>
					</div>
				</div>

			</div>
<!-- footer-start -->
		<%@ include file="foot.jsp" %>
		<!-- footer-end -->
		</div>
	</body>

</html>