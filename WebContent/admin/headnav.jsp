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
								<form action="../manager.action" method="post">
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
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-envelope"></i><span class="badge">3</span></a>
										<ul class="dropdown-menu">
											<li>
												<div class="notification_header">
													<h3>You have 3 new messages</h3>
												</div>
											</li>
											<li>
												<a href="#">
													<div class="user_img"><img src="images/in11.jpg" alt=""></div>
													<div class="notification_desc">
														<p>Lorem ipsum dolor</p>
														<p><span>1 hour ago</span></p>
													</div>
													<div class="clearfix"></div>
												</a>
											</li>
											<li class="odd">
												<a href="#">
													<div class="user_img"><img src="images/in10.jpg" alt=""></div>
													<div class="notification_desc">
														<p>Lorem ipsum dolor </p>
														<p><span>1 hour ago</span></p>
													</div>
													<div class="clearfix"></div>
												</a>
											</li>
											<li>
												<a href="#">
													<div class="user_img"><img src="images/in9.jpg" alt=""></div>
													<div class="notification_desc">
														<p>Lorem ipsum dolor</p>
														<p><span>1 hour ago</span></p>
													</div>
													<div class="clearfix"></div>
												</a>
											</li>
											<li>
												<div class="notification_bottom">
													<a href="#">See all messages</a>
												</div>
											</li>
										</ul>
									</li>
									<li class="dropdown head-dpdn">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bell"></i><span class="badge blue">3</span></a>
										<ul class="dropdown-menu">
											<li>
												<div class="notification_header">
													<h3>You have 3 new notification</h3>
												</div>
											</li>
											<li>
												<a href="#">
													<div class="user_img"><img src="images/in8.jpg" alt=""></div>
													<div class="notification_desc">
														<p>Lorem ipsum dolor</p>
														<p><span>1 hour ago</span></p>
													</div>
													<div class="clearfix"></div>
												</a>
											</li>
											<li class="odd">
												<a href="#">
													<div class="user_img"><img src="images/in6.jpg" alt=""></div>
													<div class="notification_desc">
														<p>Lorem ipsum dolor</p>
														<p><span>1 hour ago</span></p>
													</div>
													<div class="clearfix"></div>
												</a>
											</li>
											<li>
												<a href="#">
													<div class="user_img"><img src="images/in7.jpg" alt=""></div>
													<div class="notification_desc">
														<p>Lorem ipsum dolor</p>
														<p><span>1 hour ago</span></p>
													</div>
													<div class="clearfix"></div>
												</a>
											</li>
											<li>
												<div class="notification_bottom">
													<a href="#">See all notifications</a>
												</div>
											</li>
										</ul>
									</li>
									<li class="dropdown head-dpdn">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-tasks"></i><span class="badge blue1">9</span></a>
										<ul class="dropdown-menu">
											<li>
												<div class="notification_header">
													<h3>You have 8 pending task</h3>
												</div>
											</li>
											<li>
												<a href="#">
													<div class="task-info">
														<span class="task-desc">Database update</span><span class="percentage">40%</span>
														<div class="clearfix"></div>
													</div>
													<div class="progress progress-striped active">
														<div class="bar yellow" style="width:40%;"></div>
													</div>
												</a>
											</li>
											<li>
												<a href="#">
													<div class="task-info">
														<span class="task-desc">Dashboard done</span><span class="percentage">90%</span>
														<div class="clearfix"></div>
													</div>
													<div class="progress progress-striped active">
														<div class="bar green" style="width:90%;"></div>
													</div>
												</a>
											</li>
											<li>
												<a href="#">
													<div class="task-info">
														<span class="task-desc">Mobile App</span><span class="percentage">33%</span>
														<div class="clearfix"></div>
													</div>
													<div class="progress progress-striped active">
														<div class="bar red" style="width: 33%;"></div>
													</div>
												</a>
											</li>
											<li>
												<a href="#">
													<div class="task-info">
														<span class="task-desc">Issues fixed</span><span class="percentage">80%</span>
														<div class="clearfix"></div>
													</div>
													<div class="progress progress-striped active">
														<div class="bar  blue" style="width: 80%;"></div>
													</div>
												</a>
											</li>
											<li>
												<div class="notification_bottom">
													<a href="#">See all pending tasks</a>
												</div>
											</li>
										</ul>
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