<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page autoFlush="true" buffer="1094kb"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
>

<head>
<title>Tabels</title>
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
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/morris.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="layui/css/layui.css" />

<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- jQuery -->
<script src="js/jquery-2.1.4.min.js"></script>
<!-- //jQuery -->
<!-- tables -->
<link rel="stylesheet" type="text/css" href="css/table-style.css" />
<link rel="stylesheet" type="text/css" href="css/basictable.css" />

<script type="text/javascript" src="js/jquery.basictable.min.js"></script>
<script type="text/javascript" src="layui/layui.js" charset="utf-8">
		</script>
<script type="text/javascript">
			$(document).ready(function() {
				$('#table').basictable();

				$('#table-breakpoint').basictable({
					breakpoint: 768
				});

				$('#table-swap-axis').basictable({
					swapAxis: true
				});

				$('#table-force-off').basictable({
					forceResponsive: false
				});

				$('#table-no-resize').basictable({
					noResize: true
				});

				$('#table-two-axis').basictable();

				$('#table-max-height').basictable({
					tableWrapper: true
				});
			});
		</script>
<style type="text/css">
.orderDetail {
	display: none;
}
</style>
<!-- //tables -->
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
						class="fa fa-angle-right"></i>订单管理<i class="fa fa-angle-right"></i>订单表</li>
				</ol>
				<div class="agile-grids">
					<!-- tables -->

					<div class="agile-tables">
						<div class="w3l-table-info">
							<h2>订单表</h2>
							<table id="table">
								<thead>

									<th>订单编号</th>
									<th>用户名</th>
									<th><select class="form-control input-sm" id="status">
											<option value="5" selected="selected">全部状态</option>
											<option value="0">未付款</option>
											<option value="1">已付款</option>
											<option value="2">未发货</option>
											<option value="3">已发货</option>
											<option value="4">交易成功</option>
									</select></th>
									<th>地址</th>
									<th>下单时间</th>


									<th>操作</th>

								</thead>
								<c:if test="${sessionScope.orders==null }">

									<jsp:forward page="../order.do?op=showOrdersPage"></jsp:forward>
								</c:if>
								<c:forEach var="order" items="${sessionScope.orders.data }">
									<tbody>
										<tr>
											<td>${order.orderId }</td>
											<td>${order.userName }</td>
											<!-- 对订单的状态进行判断显示值 -->
											<c:choose>
												<c:when test="${order.orderStatus==0 }">
													<td>未付款</td>
												</c:when>
												<c:when test="${order.orderStatus==1 }">
													<td>已付款</td>
												</c:when>
												<c:when test="${order.orderStatus==2 }">
													<td>未发货</td>
												</c:when>
												<c:when test="${order.orderStatus==3 }">
													<td>已发货</td>
												</c:when>
												<c:otherwise>
													<td>交易成功</td>
												</c:otherwise>
											</c:choose>


											<td>${order.address }</td>
											<td>${order.createTime }</td>

											<td><button
													class="layui-btn layui-btn-radius layui-btn-normal btn-detail"
													data-toggle="modal" data-target="#myModal" id="detail">订单详情</button>&nbsp;
												<button class="layui-btn layui-btn-radius layui-btn-danger"
													data-toggle="modal" data-target="#myModalupdate"
													id="update">修改</button></td>

										</tr>

									</tbody>
								</c:forEach>
							</table>
						</div>

						<!-- 订单详情按钮 遮罩层开始 -->
						<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
							aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog" style="width: 800px;">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-hidden="true">&times;</button>
										<h2 class="modal-title" id="myModalLabel">订单详情</h2>
									</div>
									<div class="modal-body">

										<table class="layui-table">
											<colgroup>
												<col width="150">
												<col width="200">
												<col>
											</colgroup>
											<thead>
												<tr>
													<th>花束名</th>
													<th>单价</th>
													<th>数量</th>
													<th>小计</th>
													<th>发货时间</th>
												</tr>
											</thead>

											<tbody id="tbody-modal">
 

											</tbody>
										</table>

									</div>
									<!-- /.modal-content -->
								</div>
								<!-- /.modal -->
							</div>

						</div>
						<!--订单详情按钮 遮罩层结束 -->


						<!-- 修改按钮遮罩层开始 -->
						<div class="modal fade" id="myModalupdate" tabindex="-1"
							role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
							<div class="modal-dialog">
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal"
											aria-hidden="true">&times;</button>
										<h2 class="modal-title">修改订单信息</h2>
									</div>
									<div class="modal-body">

										<div class="layui-form-item">
											<label class="layui-form-label" style="width: 100px;">订单编号：</label>

											<div class="layui-input-block ">
												<input type="text" name="orderId" required
													lay-verify="required" id="orderID" autocomplete="off"
													class="layui-input">
											</div>

										</div>


										<div class="layui-form-item">
											<label class="layui-form-label" style="width: 100px;">用户名：</label>
											<div class="layui-input-block">
												<input type="text" name="userName" required
													lay-verify="required" id="uName" autocomplete="off"
													class="layui-input">
											</div>

										</div>
										<div class="layui-form-item">
											<label class="layui-form-label" style="width: 100px;">订单状态：</label>
											<div class="layui-input-block">
												<select name="ostatus" id="ostatus" lay-verify="">
													<option value="2" selected="selected">未发货</option>
													<option value="3">已发货</option>

												</select>
											</div>

										</div>
										<div class="layui-form-item">
											<label class="layui-form-label" style="width: 100px;">下单时间：</label>
											<div class="layui-input-block">
												<input type="text" name="time" required
													lay-verify="required" id="otime" autocomplete="off"
													class="layui-input">
											</div>

										</div>

										<div class="layui-form-item">
											<label class="layui-form-label" style="width: 100px;">发货时间：</label>
											<div class="layui-input-block">
												<input type="date" name="sendTime" required
													lay-verify="required" id="sendTime" autocomplete="off"
													class="layui-input">
											</div>

										</div>

									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">关闭</button>
										<button type="button" class="btn btn-primary" id="updateOrder">提交更改</button>
									</div>
									<!-- /.modal-content -->
								</div>
								<!-- /.modal -->
							</div>

						</div>
						<!-- 修改按钮遮罩层结束 -->

						<!---728x90--->

						<div id="pageDiv" style="text-align: center"></div>


						<!-- //tables -->

					</div>
					<!-- script-for sticky-nav -->
					<script>
						$(document).ready(function() {
							var navoffeset = $(".header-main").offset().top;
							$(window).scroll(function() {
								var scrollpos = $(window).scrollTop();
								if(scrollpos >= navoffeset) {
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
		<script>
			var toggle = true;

			$(".sidebar-icon").click(function() {
				if(toggle) {
					$(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
					$("#menu span").css({
						"position": "absolute"
					});
				} else {
					$(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
					setTimeout(function() {
						$("#menu span").css({
							"position": "relative"
						});
					}, 400);
				}

				toggle = !toggle;
			});
		</script>

		<!--js -->
		<script src="js/jquery.nicescroll.js"></script>
		<script src="js/scripts.js"></script>
		<!-- Bootstrap Core JavaScript -->
		<script src="js/bootstrap.min.js"></script>
		<!-- /Bootstrap Core JavaScript -->
		<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
		<script>
		
		$(function(){ 
       	
		layui.use([ 'laypage', 'layer' ], function() {
			var laypage = layui.laypage, layer = layui.layer;

			//完整功能 
			laypage.render({
			    elem: 'pageDiv' 
			    ,count:${orders.total} ,
			    curr:${orders.page}
			   ,limit:${orders.pageSize}
			    ,layout: ['count', 'prev', 'page','limit','next', 'skip']
			    ,jump: function(obj,first){
					console.log(obj);
					console.log(first);
					//首次不执行
					if (!first) {
						//do something
						location.href = "/Rosemary/order.do?op=showOrdersPage&page="
							+ obj.curr + "&pageSize=" + obj.limit
							+ "&keywords="
							+ document.getElementById("keywords").value;
					}
				}
			});
 
		});
			//订单详情按钮的单击事件
			$(".btn-detail").click(function(){
				var orderId=$(this).parents("tr").find("td").eq(0).text();
				$.get("/Rosemary/order.do","op=getOrderDetailInfo&orderId="+orderId,function(data,status){
					$("#tbody-modal").empty();
					var array=JSON.parse(data);
					$.each(array,function(index,od){
						$("#tbody-modal").append('<tr><td>'+od.flowerName+'</td><td>'+od.price+'</td><td>'+od.quantity+'</td><td>'+od.totalPrice+'</td><td>'+od.sendTime+'</td></tr>');
						
					
				});
				
			});
			});

			//修改按钮的单击事件
			$("#update").click(function() {
				
			console.log($(this).index());
				//获取表格中的信息
   			 var orderId=$(this).parents("tr").find("td").eq(0).text();
   			 var userName=$(this).parents("tr").find("td").eq(1).text();
   			 var orderStatus=$(this).parents("tr").find("td").eq(2).text();
   			 var address=$(this).parents("tr").find("td").eq(3).text();
   			 var time=$(this).parents("tr").find("td").eq(4).text();
   			 var payment=$(this).parents("tr").find("td").eq(5).text();
   			
				 //将表格中的数据展示在模态窗口中
				$("#orderID").val(orderId);
				$("#uName").val(userName);
			//将原来的订单状态设置为选中状态
				$("#ostatus option").each(function(){
					 if($(this).text()==orderStatus){
						$(this).attr("selected","selected");
					}
					
				});
				$("#oaddress").val(address);
				$("#otime").val(time);
				$("#opayment").val(payment);
				//将订单编号、用户名、下单时间、订单金额设置为不可操作状态
				$("#orderID").prop("disabled",true);
				$("#uName").prop("disabled",true);
				$("#otime").prop("disabled",true);
				$("#opayment").prop("disabled",true);
			});
			
		//修改信息模态窗口中的更新按钮的单击事件
		$("#updateOrder").click(function(){
			//获取订单编号
		var orderId=$("#orderID").val();
			//获取输入的订单状态、发货时间
			var orderStatus=$("#ostatus").find("option:selected").val();
			var sendTime=$("#sendTime").val();
			$.get("/Rosemary/order.do","op=updateOrder&orderId="+orderId+"&orderStatus="+orderStatus+"&sendTime="+sendTime,function(data,status){
				//如果得到的信息提示为信息更新成功，则弹出窗口提示用户信息更新成功
				if(data="订单信息更新成功啦~(*^▽^*)"){
					 layer.msg('<span style="color:black;">'+data+'</span>', {
							icon:6,
							time: 3000
						});
					 location.href = "/Rosemary/order.do?op=showOrdersPage&page="
							+ ${orders.page} + "&pageSize=" +${orders.pageSize}
							+ "&keywords="
							+ document.getElementById("keywords").value;
				}
				//如果得到的信息提示为信息更新失败，则弹出窗口提示用户信息更新失败
				else{
					 layer.msg('<span style="color:black;">'+data+'</span>', {
							icon:1,
							time: 3000
						});
				}
			});
		});
			 //下拉框选中事件
				 $("#status").change(function(){ 
					 
					 var status="";
				var statusVal=$(this).find("option:selected").val();
				if(statusVal==5){
					 location.href = "/Rosemary/order.do?op=showOrdersPage&page="
							+ ${orders.page} + "&pageSize=" +${orders.pageSize}
							+ "&keywords="
							+ document.getElementById("keywords").value;
				}
				else{
					$.get("/Rosemary/order.do","op=orderQueryByStatus&statusVal="+statusVal,function(data,status){
					
						if(data=="暂时还没有该状态的订单"){
				
							layer.msg('<span style="color:black;">'+data+'</span>', {
								icon:1,
								time: 1000
							});
					}
						else{
			         var array=JSON.parse(data);
			     	console.log(array);
			     	 $("table tbody").remove(); 
					 	$.each(array,function(index,order){
						 	switch(order.orderStatus){
						 	case 0:status="未付款";
						 	break;
						 	case 1:status="已付款";
						 	break;
						 	case 2:status="未发货";
						 	break;
						 	case 3:status="已发货";
						 	break;
						 	case 4:status="未付款";
						 	break;
						 	default:status="";
						 	break;
						 	}
						  
						 	 
							$("#table").append("<tbody><tr>"+
									"<td>"+order.orderId +"</td>"+
									"<td>"+order.userName +"</td>"+
									"<td>"+status+"</td>"+
									"<td>"+order.address +"</td>"+
									"<td>"+order.createTime+"</td>"+
									"<td><button "+
											" class='layui-btn layui-btn-radius layui-btn-normal btn-detail2'"+
											"data-toggle='modal' data-target='#myModal' id='detail' type='button'>订单详情</button>&nbsp;"+
										"<button class='layui-btn layui-btn-radius layui-btn-danger'>修改"+
										"</button></td>"+

								"</tr></tbody>"); 
						}); 
					}
					});
				}
		
			
			}); 
			
			//下拉框选中之后，点击订单详情按钮的触发事件
			
			
	  $(document).on('click','.btn-detail2',function(){
			$(".layui-table tbody").remove();
		  var orderId=$(this).parents("tr").find("td").eq(0).text();
			$.get("/Rosemary/order.do","op=getOrderDetailInfo&orderId="+orderId,function(data,status){
				var array=JSON.parse(data);
				
				$.each(array,function(index,od){
				
					$(".layui-table").append('<tbody><tr><td>'+od.flowerName+'</td><td>'+od.price+'</td><td>'+od.quantity+'</td><td>'+od.totalPrice+'</td><td>'+od.sendTime+'</td></tr></tbody>');
					
				});
			});
		  
	  }); 
		 
			//搜索按钮的单击事件
			$("#search").click(function(){
				location.href = "/Rosemary/order.do?op=showOrdersPage&page="
					+ ${orders.page} + "&pageSize=" +${orders.pageSize}
					+ "&keywords="
					+ document.getElementById("keywords").value;
			});
			
		});
		</script>
</body>

</html>