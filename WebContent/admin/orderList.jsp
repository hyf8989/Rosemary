<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>>

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
			.orderDetail{
				display: none;
			}

		</style>
		<!-- //tables -->
		<link href='http://fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css' />
		<link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
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
						<li class="breadcrumb-item">
							<a href="index.html">后台首页</a><i class="fa fa-angle-right"></i>订单管理<i class="fa fa-angle-right"></i>订单表</li>
					</ol>
					<div class="agile-grids">
						<!-- tables -->

						<div class="agile-tables">
							<div class="w3l-table-info">
								<h2>订单表</h2>
								<table id="table">
									<thead>
									
											<th>订单编号</th>
											<th>用户编号</th>
											<th>
												<select class="form-control input-sm" id="zt" onchange="DoSelectZT()">
													<option value="0" selected="selected">全部状态</option>
													<option value="1">待付款</option>
													<option value="2">送货完毕</option>
													<option value="3">今日配送</option>
													<option value="4">待评价</option>
													<option value="-1">已取消</option>
												</select>
											</th>
											<th>地址</th>
											<th>下单时间</th>
											<th>操作</th>
										
									</thead>

									<tbody>
										<tr>
											<td>SO1001</td>
											<td>1 </td>
											<td>待付款</td>
											<td>思明</td>
											<td>2018-10-10</td>
											<td><button   class="layui-btn layui-btn-radius layui-btn-normal btn-detail">订单详情</button>&nbsp;<button class="layui-btn layui-btn-radius layui-btn-danger">删除 </button></td>

										</tr>
										<tr class="orderDetail">
											<td>订单编号</td>
											<td>花束</td>
											<td>真实姓名</td>
											<td>订单状态</td>
											<td>订单类型</td>
											<td>总金额</td>
											</tr>
											<tr class="orderDetail">
												<td>201805089</td>
											<td>蓝色妖姬</td>
											<td>李宇</td>
											<td>已送达</td>
											<td>销售订单</td>
											<td>厦门市湖里区</td>
											
											</tr>
											
											
									
										
										
										<tr>
											<td>SO1002</td>
											<td>2 </td>
											<td>今日配送</td>
											<td>湖里</td>
											<td>2018-10-10</td>
											<td><button  class="layui-btn btn-detail layui-btn-radius layui-btn-normal">订单详情</button>&nbsp;<button class="layui-btn layui-btn-radius layui-btn-danger">删除 </button></td>
										</tr>
										<tr class="orderDetail">
											<td>订单编号</td>
											<td>花束</td>
											<td>真实姓名</td>
											<td>订单状态</td>
											<td>订单类型</td>
										
											<td>总金额</td>
											</tr>
											<tr class="orderDetail">
												<td>201805089</td>
											<td>蓝色妖姬</td>
											<td>李宇</td>
											<td>已送达</td>
											<td>销售订单</td>
											<td>厦门市湖里区</td>
											
											</tr>
										<tr>
											<td>SO1003</td>
											<td>3 </td>
											<td>送货完毕</td>
											<td>同安</td>
											<td>2018-10-10</td>
											<td><button class="layui-btn btn-detail layui-btn-radius layui-btn-normal">订单详情</button>&nbsp;<button class="layui-btn layui-btn-radius layui-btn-danger">删除 </button></td>
										</tr>
										<tr class="orderDetail">
											<td>订单编号</td>
											<td>花束</td>
											<td>真实姓名</td>
											<td>订单状态</td>
											<td>订单类型</td>
										
											<td>总金额</td>
											</tr>
											<tr class="orderDetail">
												<td>201805089</td>
											<td>蓝色妖姬</td>
											<td>李宇</td>
											<td>已送达</td>
											<td>销售订单</td>
											<td>厦门市湖里区</td>
											
											</tr>

										<tr>
											<td>SO1004</td>
											<td>4 </td>
											<td>待评价</td>
											<td>海沧</td>
											<td>2018-10-10</td>
											<td><button class="layui-btn btn-detail layui-btn-radius layui-btn-normal">订单详情</button>&nbsp;<button class="layui-btn layui-btn-radius layui-btn-danger">删除 </button></td>
										</tr>
										<tr class="orderDetail">
											<td>订单编号</td>
											<td>花束</td>
											<td>真实姓名</td>
											<td>订单状态</td>
											<td>订单类型</td>
										
											<td>总金额</td>
											</tr>
											<tr class="orderDetail">
												<td>201805089</td>
											<td>蓝色妖姬</td>
											<td>李宇</td>
											<td>已送达</td>
											<td>销售订单</td>
											<td>厦门市湖里区</td>
											
											</tr>
										<tr>
											<td>SO1005</td>
											<td>5 </td>
											<td>已取消</td>
											<td>翔安</td>
											<td>2018-10-10</td>
											<td><button class="layui-btn btn-detail layui-btn-radius layui-btn-normal">订单详情</button>&nbsp;<button class="layui-btn layui-btn-radius layui-btn-danger">删除 </button></td>
										</tr>
										<tr class="orderDetail">
											<td>订单编号</td>
											<td>花束</td>
											<td>真实姓名</td>
											<td>订单状态</td>
											<td>订单类型</td>
										
											<td>总金额</td>
											</tr>
											<tr class="orderDetail">
												<td>201805089</td>
											<td>蓝色妖姬</td>
											<td>李宇</td>
											<td>已送达</td>
											<td>销售订单</td>
											<td>厦门市湖里区</td>
											
											</tr>
									</tbody>
								</table>
							</div>

							<!---728x90--->

							<div id="pageDiv" style="text-align: center"></div>

						</div>
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
					<div class="inner-block">

					</div>
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
		<script>
			layui.use(['laypage', 'layer'], function() {
				var laypage = layui.laypage,
					layer = layui.layer;

				//完整功能 
				laypage.render({
					elem: 'pageDiv',
					count: 5,
					curr: 1,
					limit: 5,
					layout: ['count', 'prev', 'page', 'limit', 'next', 'skip'],
					jump: function(obj, first) {
						console.log(obj);
						console.log(first);
						//首次不执行
						if(!first) {
							//do something
							location.href = "";
						}
					}
				});

			});
			/*$(".layui-btn-normal").click(function() {
				layer.open({
					type: 1,
					title: "更改用户",
					anim: 1,
					area: ['600px', '600px'],
					offset: "auto",
					shadeClose: true,
					closeBtn: 1,
					content: " <div class='modal-body'> 用户名： <input type='text' disabled='disabled' name='userName' style='width:300px;margin-left:30px;margin-bottom:20px;'> </div><div class='modal-body'>电话：<input type='text' name='userPwd'  style='width:300px;margin-left:55px;margin-bottom:30px;'></div> <div class='modal-body'>邮箱： <input type='text' name='userLevel' style='width:300px;margin-left:50px;margin-bottom:30px;'> </div><div class='modal-body'>姓名：  <input type='text' name='userState' style='width:300px;margin-left:50px;margin-bottom:30px;'><input type='hidden' name='userId' style='width:300px;margin-left:15px;margin-bottom:30px;'><br/><button class='layui-btn layui-btn-lg layui-btn-radius layui-btn-normal' style='margin-left:20%;margin-right:20px;'>更新</button><button class='layui-btn layui-btn-lg layui-btn-radius layui-btn-normal' margin-top:100px;>取消</div>"

				});
			});*/
		</script>
		<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
		<script type="text/javascript">
			/*$(function() {
				$("#btn1").click(function () {
					$("#table1").toggle("slow");
				});
			});*/
			$(function(){
             $(".btn-detail").click(function () {
					/*$(".orderDetail").toggle("slow");*/
				var index=	$(this).parents("tr").index();

				var index1=index+2;
				var index2=index+3;
				console.log(index2);
				$("table tr").eq(index1).toggle("slow");
				$("table tr").eq(index2).toggle("slow");


				/*
				$("table").find("tr").eq(index1).toggle("slow");
				$("table").find("tr").eq(index2).toggle("slow");*/
				});

			});
			$(".layui-btn-danger").click(function() {
				layer.open({
					title: "确定删除吗？",
					skin: "layui-layer-lan",
					content: "<span>删除了可就找不回来了哦？</span>",
					anim: 0,
					btn: ['确定', '取消'],
					yes: function(index, layero) {
						layer.msg('删除成功', {
							icon: 5,
							time: 3000
						});
					}
				});
			});

		</script>
	</body>

</html>