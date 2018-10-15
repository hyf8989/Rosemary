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
	
	
	
	
	
	
	
		/* 	addEventListener("load", function() {
				setTimeout(hideURLbar, 0);
			}, false);

			function hideURLbar() {
				window.scrollTo(0, 1);
			}
		 */






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
						class="fa fa-angle-right"></i>管理员管理<i class="fa fa-angle-right"></i>管理员列表</li>

				</ol>
				<!-- tab content -->
				<div class="col-md-12 tab-content tab-content-in w3">
					<div class="tab-pane text-style active" id="tab1">
						<div class="inbox-right">

							<div class="mailbox-content">
								<div class="mail-toolbar clearfix">
									<div class="float-left">
										<div class="btn-group m-r-sm mail-hidden-options"
											style="display: inline-block;">

											<div class="btn-group">
												<a class="btn btn-default dropdown-toggle"
													data-toggle="dropdown" aria-expanded="false"><i
													class="fa fa-tags"></i> <span class="caret"></span></a>
												<ul class="dropdown-menu dropdown-menu-right" role="menu">
													<li><a href="#">系统管理员</a></li>
													<li><a href="#">店铺管理员</a></li>

												</ul>
											</div>
										</div>


									</div>
									<div class="float-right">
										<div class="dropdown">
											<a href="#" title="" class="btn btn-default"
												data-toggle="dropdown" aria-expanded="false">
										</div>

										<div class="btn-group">
											<a class="btn btn-default"><i class="fa fa-angle-left"></i></a>
											<a class="btn btn-default"><i class="fa fa-angle-right"></i></a>
										</div>


									</div>

								</div>

								<table class="layui-table ">
									<tr>
										<th>头像</th>
										<th>用户名</th>
										<th>状态</th>
										<th>系统身份</th>
										<th>操作</th>
									</tr>
									<tbody>
										<c:if test="${requestScope.list == null}">
											<jsp:forward page="../manager.action?op=queryManager"></jsp:forward>
										</c:if>
										<c:if test="${requestScope.list != null}">
											<c:forEach items="${requestScope.list}" var="m">

												<tr class="table-row">
													<td class="table-img"><img src="images/in.jpg" alt="">
													</td>
													<td class="table-text">
														<h6>${m.adminName}</h6>
													</td>
													<td><span class="fam">${m.adminStatus==1?"活跃":"锁定"}</span></td>
													<td><span class="fam">${m.adminLevel==1?"店铺管理员":"系统管理员"}</span></td>

													<td>

														<button class="layui-btn layui-btn-radius pwd-reset"
															style="margin-left: 20%;">重置密码</button>
														<button
															class="layui-btn layui-btn-radius layui-btn-danger">锁定</button>
														<button
															class="layui-btn layui-btn-radius layui-btn-normal">解锁</button>

													</td>
												</tr>

											</c:forEach>

										</c:if>
									</tbody>
								</table>
							</div>
						</div>
					</div>
					<div class="tab-pane text-style" id="tab2">
						<div class="inbox-right">

							<div class="mailbox-content">
								<div class="mail-toolbar clearfix">
									<div class="float-left">
										<div class="btn-group m-r-sm mail-hidden-options"
											style="display: inline-block;">
											<div class="btn-group">
												<a class="btn btn-default dropdown-toggle"
													data-toggle="dropdown" aria-expanded="false"><i
													class="fa fa-folder"></i> <span class="caret"></span></a>
												<ul class="dropdown-menu dropdown-menu-right" role="menu">
													<li><a href="#">Social</a></li>
													<li><a href="#">Forums</a></li>
													<li><a href="#">Updates</a></li>

													<li><a href="#">Spam</a></li>
													<li><a href="#">Trash</a></li>

													<li><a href="#">New</a></li>
												</ul>
											</div>
											<div class="btn-group">
												<a class="btn btn-default dropdown-toggle"
													data-toggle="dropdown" aria-expanded="false"><i
													class="fa fa-tags"></i> <span class="caret"></span></a>
												<ul class="dropdown-menu dropdown-menu-right" role="menu">
													<li><a href="#">Work</a></li>
													<li><a href="#">Family</a></li>
													<li><a href="#">Social</a></li>

													<li><a href="#">Primary</a></li>
													<li><a href="#">Promotions</a></li>
													<li><a href="#">Forums</a></li>
												</ul>
											</div>
										</div>


									</div>
									<div class="float-right">
										<div class="dropdown">
											<a href="#" title="" class="btn btn-default"
												data-toggle="dropdown" aria-expanded="false"> <i
												class="fa fa-cog icon_8"></i> <i
												class="fa fa-chevron-down icon_8"></i>
												<div class="ripple-wrapper"></div></a>
											<ul class="dropdown-menu float-right">
												<li><a href="#" title=""> <i
														class="fa fa-pencil-square-o icon_9"></i> Edit
												</a></li>
												<li><a href="#" title=""> <i
														class="fa fa-calendar icon_9"></i> Schedule
												</a></li>
												<li><a href="#" title=""> <i
														class="fa fa-download icon_9"></i> Download
												</a></li>

												<li><a href="#" class="font-red" title=""> <i
														class="fa fa-times" icon_9=""></i> Delete
												</a></li>
											</ul>
										</div>

										<div class="btn-group">
											<a class="btn btn-default"><i class="fa fa-angle-left"></i></a>
											<a class="btn btn-default"><i class="fa fa-angle-right"></i></a>
										</div>


									</div>

								</div>

							</div>
						</div>
					</div>







				</div>
			</div>
		</div>
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
	<div class="inner-block">
		<!-- page  block-->
		<div id="pageDiv" style="text-align: center">111</div>
	</div>
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
	<script type="text/javascript" src="layui/layui.js" charset="utf-8"></script>


	<!-- /Bootstrap Core JavaScript -->
	<script>
		layui.use([ 'laypage', 'layer' ], function() {
			var laypage = layui.laypage, layer = layui.layer;

			//完整功能 
			laypage.render({
				elem : 'pageDiv',
				count : 12,
				curr : 1,
				limit : 5,
				layout : [ 'count', 'prev', 'page', 'limit', 'next', 'skip' ],
				jump : function(obj, first) {
					console.log(obj);
					console.log(first);
					//首次不执行
					if (!first) {
						//do something
						location.href = "manager.action?op=queryManager&page="
								+ obj.curr + "&pageSize=" + obj.limit
								+ "&keywords="
								+ document.getElementById("keywords").value;
					}
				}
			});

		});
		$(".layui-btn-normal").click(function() {
			layer.open({
				title : "友情提醒？",
				skin : "layui-layer-lan",
				content : "<span>确定要解锁吗？</span>",
				anim : 0,
				btn : [ '确定', '取消' ],
				yes : function(index, layero) {
					layer.msg('成功释放用户权限', {
						icon : 6,
						time : 3000
					});
				}
			});
		});
		$(".pwd-reset").click(function() {
			layer.open({
				title : "友情提醒？",
				skin : "layui-layer-lan",
				content : "<span>确定重置该管理员密码？（密码默认为admin）</span>",
				anim : 0,
				btn : [ '确定', '取消' ],
				yes : function(index, layero) {
					layer.msg('成功重置', {
						icon : 6,
						time : 3000
					});
				}
			});
		});
		$(".layui-btn-danger").click(function() {
			layer.confirm("请问是否确定锁定？", {
				btn : [ "确定", "取消" ],
				icon : 4
			//按钮
			}, function(index) {
				layer.msg('锁定', {
					icon : 4,
					time : 3000
				});
				layer.close(index);
			}, function() {

			});
		});
	</script>
</body>

</html>