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
						class="fa fa-angle-right"></i>留言管理<i class="fa fa-angle-right"></i>留言列表</li>
				</ol>
				<div class="agile-grids">
					<!-- tables -->

					<div class="agile-tables">
						<div class="w3l-table-info">
							<h2>留言信息表</h2>
							<table id="table">
								<thead>
									<tr>
										<th>编号</th>
										<th>花束</th>
										<th>留言用户</th>
										<th>留言内容</th>
										<th>留言时间</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<c:if test="${sessionScope.messagePage == null}">
										<jsp:forward page="../message.do?op=showAllMessagePage"></jsp:forward>
									</c:if>
									
										<c:forEach items="${sessionScope.messagePage.data}" var="message">
											<tr>
												<td>${message.messageId}</td>
												<td>${message.flowerName}</td>
												<td>${message.userName}</td>
												<td>${message.content}</td>
												<td>${message.publishTime}</td>
												<td>
													<button class="layui-btn layui-btn-radius layui-btn-danger">删除
													</button></td>

											</tr>
										</c:forEach>
									
									
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
	$(function(){
		layui.use([ 'laypage', 'layer' ], function() {
			var laypage = layui.laypage, layer = layui.layer;

			//完整功能 
			laypage.render({
			    elem: 'pageDiv'
			    ,count:${messagePage.total} ,
			    curr:${messagePage.page}
			   ,limit:${messagePage.pageSize}
			    ,layout: ['count', 'prev', 'page','limit','next', 'skip']
			    ,jump: function(obj,first){
					console.log(obj);
					console.log(first);
					//首次不执行
					if (!first) {
						//do something
						location.href = "/Rosemary/message.do?op=showAllMessagePage&page="
							+ obj.curr + "&pageSize=" + obj.limit
							+ "&keywords="
							+ document.getElementById("keywords").value;
					}
				}
			});

		});
	
		//删除按钮的单击事件
		$(".layui-btn-danger").click(function() {
			var messageId=$(this).parents("tr").find("td").eq(0).text();
			console.log(messageId);
			layer.open({
				title : "友情提醒？",
				skin : "layui-layer-lan",
				content : "<span>删除了可就找不回来了哦？</span>",
				anim : 0,
				btn : [ '确定', '取消' ],
				yes : function(index, layero) {
	               //若用户点击确定，则进行删除操作
					$.get("/Rosemary/message.do","op=deleteMessage&messageId="+messageId,function(data,status){
						
						//删除操作执行成功后，刷新页面
						if(data="ok~，留言删除成功啦~(*^▽^*)"){
							 layer.msg('<span style="color:black;">'+data+'</span>', {
		 							icon:6,
		 							time: 1000
		 						});
							 location.href = "/Rosemary/message.do?op=showAllMessagePage&page="
									+ ${messagePage.total}+ "&pageSize=" + ${messagePage.total}
									+ "&keywords="
									+ document.getElementById("keywords").value;
						}
						else{
							layer.msg('<span style="color:black;">'+data+'</span>', {
	 							icon:1,
	 							time: 2000
	 						});
						}
					});  
				}
			});

		});
		
		//点击搜索框旁的搜索按钮的单击
		$("#search").click(function(){

			 location.href = "/Rosemary/message.do?op=showAllMessagePage&page="
					+ ${messagePage.total}+ "&pageSize=" + ${messagePage.total}
					+ "&keywords="
					+ document.getElementById("keywords").value;
		});
		
		
	});
		
		
	</script>
</body>

</html>