<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


	<head>
		<meta charset="UTF-8">
		<title>购物车</title>
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
		<script type="text/javascript" src="layui/layui.js"></script>
		<style type="text/css">
			.row1 {
				
				margin-bottom: 10px;
			}
		</style>
	</head>

	<body>

		<!-- header-start -->
		<%@ include file="headhav.jsp"%>
		<!-- header-end -->
       
		<div class="container">
		<c:if test="${empty sessionScope.cart.cartItems }">
		<h1 style="margin-top:200px;margin-left:200px;">
		 <a href="shop.jsp" style="text-decoration:none;">您的购物车空空如也，赶紧开启剁手模式吧！</a>
		
		</h1>
		
		</c:if>
		<c:if test="${not empty sessionScope.cart.cartItems }">
		<c:forEach var="item" items="${ sessionScope.cart.cartItems}">
		<div style="margin-top: 20px; " class="row row1">
				<ul>
					<div style="clear: both;" class="col-md-12">
						<div style="padding-top: 10px;float: left;border:solid palegoldenrod;" class="col-md-3">
                              <div style="float: left;height:135px;overflow:hidden;" class="col-md-6" >
                              	
							<li><img src="${item.flower.sPicture }" id="" style="width: 100px;height: 100px;" ></li>&nbsp;&nbsp;
							</div>
							<div style="float: left;height:135px;overflow:hidden;" class="col-md-6">${item.flower.description }	</div>
						</div>
						<div style="padding-top: 10px;padding-right:2px;height: 135px;float: left;border:solid palegoldenrod;" class="col-md-3">
							<label>价格 :${item.total }</label>
						</div>
						<div style="padding-top: 10px;padding-right:2px;height: 135px;float: left;border:solid palegoldenrod;" class="col-md-3">
<div class="layui-btn-group">
  <button class="layui-btn layui-btn-primary layui-btn-sm">
    <i class="layui-icon">-</i>
  </button>
  
   <input type="text" name="title" required  lay-verify="required"  autocomplete="off" class="layui-input" style="width: 100px;height: 30px;">
  
  <button class="layui-btn layui-btn-primary layui-btn-sm">
    <i class="layui-icon">+</i>
  </button>
</div>
						</div>
						<div style="padding-top: 10px;padding-right:2px;height: 135px;float: left;border:solid palegoldenrod;" class="col-md-3">

							 <button class="layui-btn layui-btn-primary layui-btn-sm">
    <i class="layui-icon">&#xe640;</i>
  </button>
						</div>
					</div>
				</ul>
			</div>
			</c:forEach>
		</c:if>
		<span>${sessionScope.cart.totalPrice}</span>
			
			</div>
	</body>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script type="text/javascript" src="layui/layui.js">
			
		</script>
		<script>
		console.log("${sessionScope.cart.cartItems}");
		</script>
</html>