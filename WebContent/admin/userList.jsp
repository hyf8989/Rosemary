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
						class="fa fa-angle-right"></i>用户管理<i class="fa fa-angle-right"></i>用户列表</li>
				</ol>
				<div class="agile-grids">
					<!-- tables -->

					<div class="agile-tables">
						<div class="w3l-table-info">
							<h2 class="agileits-icons-title">用户信息表</h2>
							<br />
							<br />
							<table id="table">
								<thead>
									<tr>
										<th>用户编号</th>
										<th>用户名</th>
										<th>姓名</th>
										<th>电话</th>
										<th>邮箱</th>
										<th>操作</th>
									</tr>
								</thead>
								<tbody>
									<c:if test="${sessionScope.pdu == null}">
										<jsp:forward page="../user.action?op=queryUsersBeanByPage"></jsp:forward>
									</c:if>
									<c:if test="${sessionScope.pdu != null}">
										<c:forEach items="${sessionScope.pdu.data}" var="ub">

											<tr>
												<td>${ub.userId}</td>
												<td>${ub.userName}</td>
												<td>${ub.name}</td>
												<td>${ub.userTel}</td>
												<td>${ub.userEmail}</td>
												<td><button
														class="layui-btn layui-btn-radius layui-btn-normal"
														id="updateBtn" name="updateBtn">编辑</button>&nbsp;
													<button class="layui-btn layui-btn-radius layui-btn-danger">删除</button></td>

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
	<!--js -->
	<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
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
		    ,count:${pdu.total} ,
		    curr:${pdu.page}
		   ,limit:${pdu.pageSize}
		    ,layout: ['count', 'prev', 'page','limit','next', 'skip']
		    ,jump: function(obj,first){
				console.log(obj);
				console.log(first);
				//首次不执行
				if (!first) {
					//do something
					location.href = "/Rosemary/user.action?op=queryUsersBeanByPage&page="
						+ obj.curr + "&pageSize=" + obj.limit
						+ "&keywords="
						+ document.getElementById("keywords").value;
				}
			}
		});
	});
		
		/* 编辑按钮弹出层 */
		$(".layui-btn-normal").click(
			function() {
			var msg="";
			//获取当前行的第一个td
            var userId = $(this).parents("tr").find("td").eq(0).text();
			var userName = $(this).parents("tr").find("td").eq(1).text();
			var name = $(this).parents("tr").find("td").eq(2).text();
			var userTel = $(this).parents("tr").find("td").eq(3).text();
			var userEmail = $(this).parents("tr").find("td").eq(4).text();

							layer.open({
										type : 1,
										title : "更改用户",
										anim : 1,
										area : [ '600px', '600px' ],
										offset : "auto",
										shadeClose : true,
										closeBtn : 1,
										content : "<div class='modal-body'> 用户名： <input type='text' disabled='disabled' name='userName' id='userName' style='width:300px;height:30px; margin-left:40px;margin-bottom:20px;' value=''></div>"
										+"<div class='modal-body'> 姓名: <input type='text' name='name' id='name' style='width:300px;height:30px;margin-left:65px;margin-bottom:30px;' value=''>" 										
										+"<div class='modal-body'>电话: <input type='text' name='userTel' id='userTel' style='width:300px;height:30px;margin-left:50px;margin-bottom:30px;' value=''></div>"
										+"<div class='modal-body'>邮箱: <input type='text' name='userEmail' id='userEmail' style='width:300px;height:30px;margin-left:50px;margin-bottom:30px;' value=''></div>"
										+"<input type='hidden' name='userId' id='userId' style='width:300px;margin-left:15px;margin-bottom:30px;'><br/>"
										+"<button class='layui-btn layui-btn-lg layui-btn-radius layui-btn-normal' style='margin-left:20%;margin-right:20px;' id='upUser'>更新</button>"
										+"<button class='layui-btn layui-btn-lg layui-btn-radius layui-btn-normal' margin-top:100px; id='close'>取消</div>"
									});
							//用jq代码信息显示在content元素中
							$("#userId").val(userId);
							$("#userName").val(userName);
							$("#name").val(name);
							$("#userTel").val(userTel);
							$("#userEmail").val(userEmail);
							
				$("#upUser").click(function name() {																
							//获取当前用户编号
							var userId = $("#userId").val();
							//获取输入的用户名
							var userName = $("#userName").val();
							var name = $("#name").val();
							var userEmail = $("#userEmail").val();
							var userTel = $("#userTel").val();							
							$.get("/Rosemary/ub.do",
									"op=updateInfo&userId=" + userId + "&userName="
											+ userName + "&name=" + name
											+ "&userEmail=" + userEmail + "&userTel="
											+ userTel, function(data, status) {										
										layer.open({
											title : "温馨提醒",
											skin : "layui-layer-molv",
											content : "<span style='color:black;'>" + data+ "</span>",
											anim : 0,
											btn : [ 'OK' ],
											yes : function(index, layero) {
												layer.closeAll();
												location.href = "/Rosemary/admin/userList.jsp";
											}
										}); 
									}); 														
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
	  <!-- 我们自己编写的用户js文件 --> 
<!-- 		<script src="js/user.js">
		<!-- 我们自己编写的用户js文件 -->
		</script> -->
</body>

</html>