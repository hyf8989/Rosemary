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
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
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

		<div class="layui-container" style="margin-top:20px;"> 
		   <c:if test="${empty sessionScope.orders.data}">
		     <div class="layui-row">
		     <div class="layui-col-md-12">
		      <h1>您当前还未有任何订单哦！</h1>
		     </div>
		    
		     </div>
		     
		   
		   </c:if>
		   <c:if test="${not empty sessionScope.orders.data  }">
		  <div class="layui-row">
		  <div class="layui-col-md-12">
		  
		   <table class="table table-striped">
  <thead class="thead-dark">
    <tr>
      <th scope="col">订单编号</th>
      <th scope="col">订单状态</th>
      <th scope="col">创建时间</th>
      <th scope="col">运费</th>
      <th scope="col">实际付费</th>
      <th scope="col">收货地址</th>
      <th scope="col">操作</th>
      
    </tr>
  </thead>
  <tbody>
  <c:forEach var="order" items="${sessionScope.orders.data }">
    <tr>
      <td scope="row">${order.orderId }</td>
     
      <td>${order.orderStatus=='0'?'未付款':'已付款'}</td>
      <td>${order.createTime }</td>
      <td>￥：${order.postage }</td>
      <td>￥：${order.payment }</td>
       <td>${order.address}</td>
       <td> <button class="layui-btn layui-btn-fluid order-search" type="button">查看明细</button></td>
    </tr>
   </c:forEach>
  </tbody>
</table>
	<div id="pageDiv"></div>  
		  </div>
		  
		  
		  </div>
		  
		   
		   </c:if>
			</div>			
      <!-- footer-start -->
		<%@ include file="foot.jsp" %>
		<!-- footer-end -->
		
	</body>
	<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js">
</script>
<script type="text/javascript" src="layui/layui.js">
	
		</script>
<script>
$(function(){
	var userId="${sessionScope.ub.userId}";
	layui.use(['laypage', 'layer'], function(){
	  var laypage = layui.laypage
	  ,layer = layui.layer;
	   
	//完整功能 
	  laypage.render({
	    elem: 'pageDiv'
	    ,count: ${sessionScope.orders.total} ,
	    curr:${sessionScope.orders.page} 
	   ,limit:${sessionScope.orders.pageSize} 
	    ,layout: ['count', 'prev', 'page','limit','next', 'skip']
	    ,jump: function(obj,first){
	      console.log(obj);
	      console.log(first);
	    //首次不执行
	      if(!first){
	        //do something
	    	  location.href="/Rosemary/order.do?op=queryOrderByUserId&page="+obj.curr+"&pageSize="+obj.limit+"&userId="+userId;
	      }
	    }
	  });
	    
	}); 
	
	$(".order-search").click(function(){
		  
	console.log($(this).parents("tr").find("td").eq(0).text())	;
	});
});

</script>
<script>


</script>
	 
</html>