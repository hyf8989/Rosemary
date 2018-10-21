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
<%-- ${pageContext.request.contextPath}/ --%>
<!-- Bootstrap Core CSS -->
<link href="${pageContext.request.contextPath}/admin/css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/admin/css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/morris.css" type="text/css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/layui/css/layui.css" />

<!-- Graph CSS -->
<link href="${pageContext.request.contextPath}/admin/css/font-awesome.css" rel="stylesheet">
<!-- jQuery -->
<script src="${pageContext.request.contextPath}/admin/js/jquery-2.1.4.min.js"></script>
<!-- //jQuery -->
<!-- tables -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/css/table-style.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/admin/css/basictable.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/admin/js/jquery.basictable.min.js"></script>
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
<link rel="stylesheet" href="${pageContext.request.contextPath}/admin/css/icon-font.min.css" type='text/css' />
<!-- //lined-icons -->
<style type="text/css">

</style>
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
				<div class="agile-grids">
					<!-- tables -->

					<div class="agile-tables">
						<div class="w3l-table-info">
							<h2 class="agileits-icons-title">管理员信息表</h2>
							<br />
							<br />
							<table class="layui-table ">
									<tr>
										<th>管理员编号</th>
										<th>管理官账号</th>
										<th>状态</th>
										<th>系统身份</th>
										<th>操作</th>
									</tr>
									<tbody>
										<c:if test="${sessionScope.pdm == null}">
											<jsp:forward page="../manager.action?op=queryManager"></jsp:forward>
										</c:if>
										<c:if test="${sessionScope.pdm != null}">
											<c:forEach items="${sessionScope.pdm.data}" var="m">

												<tr class="table-row">
													<td class="table-img" style="text-align: center">
													${m.adminId}
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

	<div class="clearfix"></div>
	<!--js -->
	<script src="${pageContext.request.contextPath}/admin/js/jquery.nicescroll.js"></script>
	<script src="${pageContext.request.contextPath}/admin/js/scripts.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="${pageContext.request.contextPath}/admin/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="${pageContext.request.contextPath}/admin/layui/layui.js" charset="utf-8"></script>


	<!-- /Bootstrap Core JavaScript -->
	<script>
		 layui.use([ 'laypage', 'layer' ], function() {
			var laypage = layui.laypage, layer = layui.layer;

			//完整功能 
			laypage.render({
			    elem: 'pageDiv'
			    ,count:${pdm.total} ,
			    curr:${pdm.page}
			   ,limit:${pdm.pageSize}
			    ,layout: ['count', 'prev', 'page','limit','next', 'skip']
			    ,jump: function(obj,first){
					console.log(obj);
					console.log(first);
					//首次不执行
					if (!first) {
						//do something
						location.href = "/Rosemary/manager.action?op=queryManager&page="
								+ obj.curr + "&pageSize=" + obj.limit
								+ "&keywords="
								+ document.getElementById("keywords").value;
					}
				}
			});

		}); 
	
	</script>
	<!-- 自己编写的admin.js文件 --> 
		<script src="js/admin.js">
		<!-- 自己编写的admin.js文件 -->	
		</script>
	
</body>

</html>