<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<title>我的订单</title>
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
		<style type="text/css">
			.row1{
				border: solid peachpuff  ;
				margin-bottom: 10px;
			}
		</style>
	</head>

	<body>

		<!-- header-start -->
		<%@ include file="headhav.jsp" %>
		<!-- header-end -->

		<div class="container">
		<c:if test="${sessionScope.MyOrdersList==null }">
				<jsp:forward page="/MyOrders.do&op=queryMyOrders"></jsp:forward>
			</c:if>
			
			<c:forEach var="orders" items="${sessionScope.MyOrdersList }">
			
			<div style="margin-top: 20px; " class="row row1">
				<ul>
					<div style="clear: both;" class="col-md-12">
						<div style="padding-top: 10px;padding-left:10px;float: left;">

							<li><img src="${orders.sPicture}" style="width: 100px;height: 100px;"></li>&nbsp;&nbsp;
						</div>
						<div style="padding-top: 10px;padding-left:10px;float: left;">
							<li>订单编号：${orders.orderId}</li>
							<li>订单状态：${orders.orderStatus}</li>							
							<li>下单时间：${orders.createTime} , 发货时间：${orders.sendTime}</li>							
							<li>单价：${orders.price} , 数量：${orders.quantity} , 邮费：${orders.postage} , 实际付款：${orders.payment}</li>
							<li>${orders.flowerName}----${orders.description}</li>							
							<li>总费用：${orders.totalPrice}</li>
						</div>
					</div>
				</ul>
			</div>
     </c:forEach>
						
      <!-- footer-start -->
		<%@ include file="foot.jsp" %>
		<!-- footer-end -->
		</div>
	</body>

</html>