<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<div class="header-main">
						<div class="logo-w3-agile">
							<h1><a href="index.html">Rosemary后台管理系统</a></h1>
						</div>
						<div class="w3layouts-left">

							<!--search-box-->
							<div class="w3-search-box">
								<form action="" method="post">
									<input type="text" placeholder="Search..." name="keywords" id="keywords" value="${keywords}" required="">
									<i class="layui-icon layui-icon-search" id="search" name="search"></i>  
								</form>
							</div>
							<!--//end-search-box-->
							<div class="clearfix"> </div>
						</div>
						<div class="w3layouts-right">
							<div class="profile_details_left">
								<!--notifications of menu start -->
								<ul class="nofitications-dropdown">
									<li class="dropdown head-dpdn">
										<a href="/Rosemary/index/index.jsp"><i class="fa fa-tasks">店铺</i><span class="badge blue1">进入</span></a>
									</li>

									<div class="clearfix"> </div>
								</ul>
								<div class="clearfix"> </div>
							</div>
							<!--notification menu end -->

							<div class="clearfix"> </div>
						</div>
						<div class="profile_details w3l">
							<ul>
								<li class="dropdown profile_details_drop">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
										<div class="profile_img">
											<!-- <span class="prfil-img"><img src="images/in.jpg" alt=""> </span> -->
											<div class="user-name">
												<p>${sessionScope.m.adminName}</p>
												<span>${sessionScope.m.adminLevel==1?"店铺管理员":"系统管理员"}</span>
											</div>
											<i class="fa fa-angle-down"></i>
											<i class="fa fa-angle-up"></i>
											<div class="clearfix"></div>
										</div>
									</a>
									<ul class="dropdown-menu drp-mnu">
										<li>
											<a href="#"><i class="fa fa-cog"></i> Settings</a>
										</li>
										<li>
											<a href="#"><i class="fa fa-user"></i> Profile</a>
										</li>
										<li>
											<a href="/Rosemary/admin/login.jsp"><i class="fa fa-sign-out"></i> Logout</a>
										</li>
									</ul>
								</li>
							</ul>
						</div>

						<div class="clearfix"> </div>
					</div>
</body>
</html>