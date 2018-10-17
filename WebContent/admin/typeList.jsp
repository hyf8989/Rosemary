<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ page autoFlush="true" buffer="1200kb"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>type</title>
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
						class="fa fa-angle-right"></i>管理员管理<i class="fa fa-angle-right"></i>类型列表</li>

				</ol>
				<!-- tab content -->
				<div class="col-md-12 tab-content tab-content-in w3">
					<div class="tab-pane text-style active" id="tab1" style="margin-bottom: 2%">
						<div class="inbox-right">
						<h2>鲜花类型</h2>
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
										<th>编号</th>
										<th>类型名</th>
										<th>创建时间</th>
										<th>更新时间</th>
										<th>操作</th>
									</tr>
									<tbody>
										<%-- <c:if test="${sessionScope.pdm == null}">
											<jsp:forward page="../manager.action?op=queryManager"></jsp:forward>
										</c:if>
										<c:if test="${sessionScope.pdm != null}">
											<c:forEach items="${sessionScope.pdm.data}" var="m"> --%>

												<tr class="table-row">													
													<td class="table-text">
														<h6>编号</h6>
													</td>
													<td class="table-text"><h6>类名</h6></td>
													<td><span class="fam">创建时间</span></td>
													<td><span class="fam">更新时间</span></td>

													<td>
													<button class="layui-btn layui-btn-radius pwd-reset" id="upType"
															style="margin-left: 20%;">编辑</button>
														
														<button class="layui-btn layui-btn-radius layui-btn-danger" id="delType">删除</button>

													</td>
												</tr>

											<%-- </c:forEach>

										</c:if> --%>
									</tbody>
								</table>
							</div>
							<div id="pageDiv" style="text-align: center"></div>
						</div>
					</div>
					<div class="tab-pane text-style" id="tab2">
						<div class="inbox-right">

							<div class="mailbox-content">
								<div class="mail-toolbar clearfix">
									<div class="float-right">
										<button	class="layui-btn  layui-btn-normal" id="addType">添加</button>

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
	<!-- <div class="inner-block">
		page  block
		<div id="pageDiv" style="text-align: center">111</div>
	</div> -->
	<!--inner block end here-->
	<!--copy rights start here-->
	<%-- <%@ include file="foot.jsp"%> --%>
	<!--COPY rights end here-->
	
	
	<!--//content-inner-->
	<!--/sidebar-menu-->
	<%@ include file="left.jsp"%>
	<div class="clearfix"></div>
	
	<!-- <script>
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
	</script> -->
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
		$(".layui-btn-normal").click(function() {
			var adminName =$(this).parents("tr").find("h6").text();
			layer.open({
				title : "友情提醒？",
				skin : "layui-layer-lan",
				content : "<span>确定要解锁吗？</span>",
				anim : 0,
				btn : [ '确定', '取消' ],
				yes : function(index, layero) {
					$.get("/Rosemary/manager.action","op=clearManagerStatus&adminName=" + adminName, function(data, status) {
						layer.msg(data, {
							icon : 4,
							time : 3000
						});
						location.reload(true);
					}); 
					/* layer.msg('成功释放用户权限', {
						icon : 6,
						time : 3000
					}); */
				}
			});
		});
		$(".pwd-reset").click(function() {
			var adminName =$(this).parents("tr").find("h6").text();
			layer.open({
				title : "友情提醒？",
				skin : "layui-layer-lan",
				content : "<span>确定重置该管理员密码？（密码默认为admin）</span>",
				anim : 0,
				btn : [ '确定', '取消' ],
				yes : function(index, layero) {
					//...ajax请求
					//location.href = "/Rosemary/manager.action?op=updateManagerPwd"; 
					$.get("/Rosemary/manager.action","op=updateManagerPwd&adminName=" + adminName, function(data, status) {
						layer.msg(data, {
						icon : 6,
						time : 3000
					});
						location.reload(true);
					}); 
					//var adminName =$(this).parents("tr").find("h6").text();
					//location.href = "/Rosemary/manager.action?op=updateManagerPwd&adminName=" + adminName;
					
				}
			});
		});
		$(".layui-btn-danger").click(function() {
			//console.log($(this).parents("tr").find("span").text());
			var adminName =$(this).parents("tr").find("h6").text();
			layer.confirm("请问是否确定锁定？", {
				btn : [ "确定", "取消" ],
				icon : 4
			//按钮
			}, function(index) {
				$.get("/Rosemary/manager.action","op=lockManagerStatus&adminName=" + adminName, function(data, status) {
					layer.msg(data, {
						icon : 4,
						time : 3000
					});
					location.reload(true);
				}); 
				
				layer.close(index);
			}, function() {

			});
		});
	</script>
	<%@ include file="foot.jsp"%>
</body>

</html>