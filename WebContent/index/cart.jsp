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
			.layui-table tr:hover{
			 background: linear-gradient(#fff,#aaa);
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
		<table class="layui-table " lay-skin="line" lay-size="lg" lay-even>
									<tr>
										<th>商品图</th>
										<th>花名</th>
										<th>数量</th>
										<th>小计</th>
										<th><span style="color:black;margin-left:50%;">操作</span></th>
									</tr>
									<tbody>
										
									
											<c:forEach var="item" items="${ sessionScope.cart.cartItems}">
									<tr class="table-row" >
													<td class="table-img" id="${item.flower.flowerId}"><img src="${item.flower.sPicture }" alt="">
													</td>
													<td class="table-text">
														<h6>${item.flower.flowerName}</h6>
													</td>
													<td><input type="text" style="color:black;width:30px;" value="${item.quantity}" /><button style="margin-left:5px;" class="layui-btn layui-btn-sm plus">
    <i class="layui-icon">&#xe654;</i>
  </button><button style="margin-left:5px;" class="layui-btn layui-btn-sm sub" >
    <i class="layui-icon" style="font:bold 10px;">--</i></td>
													<td><span class="fam">${item.total}</span></td>

													<td>

														<button class="layui-btn layui-btn-radius layui-btn-danger layui-btn-lg removeCartItem"
															style="margin-left: 50%;">移除</button>
														
														
													</td>
												</tr>
												</c:forEach>

										<tr>
										<td></td>
										<td></td>
										<td></td>
										<td></td>
										<td>总价<span style="color:red;">：${sessionScope.cart.totalPrice }</span><button type="button" class="layui-btn layui-btn-radius layui-btn-danger check-out" style="margin-left:35%;">去结算</button></td>
										</tr>

										
									</tbody>
								</table>
			</c:if>
		
		
		
			
	
		
			
			</div>
	</body>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script type="text/javascript" src="layui/layui.js">
			
		</script>
		<!-- 我们自己编写的购物车js文件 --> 
		<script src="js/cart.js">
		<!-- 我们自己编写的购物车js文件 -->
	
		</script>
</html>