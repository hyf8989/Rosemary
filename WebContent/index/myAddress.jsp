<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- Google Fonts -->
<link
	href='https://fonts.googleapis.com/css?family=Lato:400,300,700,900,100'
	rel='stylesheet' type='text/css'>
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

.container {
	margin-right: auto;
	margin-left: auto;
	margin-top: 20px;
}
</style>
</head>

<body>
	<%@ include file="headhav.jsp"%>

	<div class="container ">

		<div class="row ">
         <c:if test="${sessionScope.list==null }">
         <jsp:forward page="/address.do&op=myAddress"></jsp:forward>
         </c:if>
         
         <c:forEach var="address" items="${sessionScope.addressList }">
			<div class="col-md-4 addressCard">

				<div class="layui-card ">
					<div class="layui-card-header">我的收货地址</div>
					<div class="layui-card-body">
						<ul>
							<li><label>收货人姓名：${address.receiverName}</label></li>

							<li><label>联系方式：${address.receiverPhone}</label></li>
							<li><label>${address.receiverProvince}省${address.receiverCity}市</label></li>
							<li><label>${address.receiverDistrict}区${address.addressInfo}</label></li>
							<li><label>邮编：${address.receiverZip}</label></li>
							<li style="text-align: right;">
							
								 <a href=""><i class="layui-icon layui-icon-edit"></i></a>
								 <a href=""><i class="layui-icon layui-icon-delete"></i> </a>
							    <a href=""><i class="layui-icon layui-icon-add-1"></i></a>
							    </li>

						</ul>
					</div>
				</div>
			</div>
</c:forEach>

		</div>

	</div>
	<!-- footer-start -->
	<%@ include file="foot.jsp"%>
	<!-- footer-end -->

	<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
	<script type="text/javascript">
		$(function() {

			var userName="${sessionScope.ub.userName}";
			
		});
	</script>

</body>

</html>