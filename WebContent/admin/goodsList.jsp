<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page autoFlush="true" buffer="1200kb"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

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
			breakpoint : 768
		});

		$('#table-swap-axis').basictable({
			swapAxis : true
		});

		$('#table-force-off').basictable({
			forceResponsive : false
		});

		$('#table-no-resize').basictable({
			noResize : true
		});

		$('#table-two-axis').basictable();

		$('#table-max-height').basictable({
			tableWrapper : true
		});
	});
</script>
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
						class="fa fa-angle-right"></i>商品管理<i class="fa fa-angle-right"></i>商品列表</li>
				</ol>
				<div class="agile-grids">
					<!-- tables -->

					<div class="agile-tables">
						<div class="w3l-table-info">
							<h2 class="agileits-icons-title">商品基本信息表</h2>
							<br />
							<br />
							<table id="table">
								<thead>
									<tr>
										<th>编号</th>
										<th>名称</th>
										<th>价格</th>
										<th>寓意</th>
										<th>描述</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<c:if test="${sessionScope.pdf == null}">
										<jsp:forward page="../flower.do?op=queryFlowerByPage"></jsp:forward>
									</c:if>
									<c:if test="${sessionScope.pdf != null}">
										<c:forEach items="${sessionScope.pdf.data}" var="goods">
											<tr>
												<td>${goods.flowerId}</td>
												<td>${goods.flowerName}</td>
												<td>${goods.price}</td>
												<td>${goods.words}</td>
												<td>${goods.description}</td>
												<td><button
														class="layui-btn layui-btn-radius layui-btn-normal">编辑</button>&nbsp;
													<button class="layui-btn layui-btn-radius layui-btn-danger">删除
													</button></td>
											</tr>
										</c:forEach>
									</c:if>
									<!-- <tr>
										<td>2</td>
										<td>John</td>
										<td>John Stone</td>
										<td>4656132165464</td>
										<td>789451</td>
										<td><button
												class="layui-btn layui-btn-radius layui-btn-normal">编辑</button>&nbsp;
											<button class="layui-btn layui-btn-radius layui-btn-danger">删除
											</button></td>
									</tr>
									<tr>
										<td>3</td>
										<td>Jane</td>
										<td>Jane Strip</td>
										<td>12316456</td>
										<td>102356</td>
										<td><button
												class="layui-btn layui-btn-radius layui-btn-normal">编辑</button>&nbsp;
											<button class="layui-btn layui-btn-radius layui-btn-danger">删除
											</button></td>
									</tr>
									<tr>
										<td>4</td>
										<td>Gary</td>
										<td>Gary Mountain</td>
										<td>1234634561</td>
										<td>621012</td>
										<td><button
												class="layui-btn layui-btn-radius layui-btn-normal">编辑</button>&nbsp;
											<button class="layui-btn layui-btn-radius layui-btn-danger">删除
											</button></td>
									</tr>
									<tr>
										<td>5</td>
										<td>James</td>
										<td>James Camera</td>
										<td>1234654613</td>
										<td>621011</td>
										<td><button
												class="layui-btn layui-btn-radius layui-btn-normal">编辑</button>&nbsp;
											<button class="layui-btn layui-btn-radius layui-btn-danger">删除
											</button></td>
									</tr> -->
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
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>
	<!-- /Bootstrap Core JavaScript -->
	<script>
		layui.use([ 'laypage', 'layer' ], function() {
			var laypage = layui.laypage, layer = layui.layer;

			//完整功能 
			laypage.render({
			    elem: 'pageDiv'
			    ,count:${pdf.total} ,
			    curr:${pdf.page}
			   ,limit:${pdf.pageSize}
			    ,layout: ['count', 'prev', 'page','limit','next', 'skip']
			    ,jump: function(obj,first){
					console.log(obj);
					console.log(first);
					//首次不执行
					if (!first) {
						//do something
						location.href = "/Rosemary/flower.do?op=queryFlowerByPage&page="
							+ obj.curr + "&pageSize=" + obj.limit
							+ "&keywords="
							+ document.getElementById("keywords").value;
					}
				}
			});

		});
		$(".layui-btn-normal")
				.click(
						function() {
							layer
									.open({
										type : 1,
										skin : "layui-layer-lan",
										title : "更改商品",
										anim : 1,
										area : [ '600px', '600px' ],
										offset : "auto",
										shadeClose : true,
										closeBtn : 1,
										content : " <div class='modal-body'> 商品名： <input type='text' disabled='disabled' name='userName' style='width:300px;margin-left:30px;margin-bottom:20px;'> </div><div class='modal-body'>价格：<input type='text' name='userPwd'  style='width:300px;margin-left:55px;margin-bottom:30px;'></div> <div class='modal-body'>寓意： <input type='text' name='userLevel' style='width:300px;margin-left:50px;margin-bottom:30px;'> </div><div class='modal-body'>描述：  <input type='text' name='userState' style='width:300px;margin-left:50px;margin-bottom:30px;'><input type='hidden' name='userId' style='width:300px;margin-left:15px;margin-bottom:30px;'><br/><button class='layui-btn layui-btn-lg layui-btn-radius layui-btn-normal' style='margin-left:20%;margin-right:20px;'>更新</button><button class='layui-btn layui-btn-lg layui-btn-radius layui-btn-normal' margin-top:100px;>取消</div>"

									});
						});
		$(".layui-btn-danger").click(function() {
			layer.open({
				title : "友情提醒？",
				skin : "layui-layer-lan",
				content : "<span>删除了可就找不回来了哦？</span>",
				anim : 0,
				btn : [ '确定', '取消' ],
				yes : function(index, layero) {
					layer.msg('删除成功', {
						icon : 5,
						time : 3000
					});
				}
			});

		});
	</script>
</body>

</html>