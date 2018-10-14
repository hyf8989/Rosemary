<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- header-start -->
		<header>
			<div class="header-top">
				<div class="container">
					<div class="row">
						<div class="col-md-6 col-sm-12 hidden-xs">
							<div class="header-top-left">
								<div class="welcome-msg">
									<span class="default-msg hidden-xs">欢迎来电!</span>
									<span class="phone">联系电话: <span class="number">01234-567890</span></span>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-xs-12 col-sm-12">
							<div class="header-top-right">
								<c:if test="${sessionScope.ub ne null}">
								<div class="language">
									<div class="current">
										<span>我的账户</span>
									</div>
									<ul class="lang">
										<li><img src="img/lang/2.jpg" alt="ar" />
											<a href="personal.jsp" title=""><span>我的信息</span></a>
										</li>
										<li><img src="img/lang/2.jpg" alt="ar" />
											<a href="pwd.jsp" title=""><span>修改密码</span></a>
										</li>
										<li><img src="img/lang/7.jpg" alt="hb" />
											<a href="myOrder.jsp" title=""><span>查看订单</span></a>
										</li>
										<li><img src="img/lang/7.jpg" alt="hb" />
											<a href="/Rosemary/address.do?op=myAddress&userName=${sessionScope.ub.userName}" title=""><span>收货地址</span></a>
										</li>
									</ul>
								</div>
								</c:if>
								
								
								<ul class="header-links hidden-xs">
									<li>
										<a class="login" href="../admin/login.jsp">
											我是管理员
										</a>
									</li>
									
									<c:if test="${sessionScope.ub eq null}">
									<li>
										<a class="login" href="register.jsp">注册</a>
									</li>
									<li>
										<a class="login" href="login.jsp">登录</a>
									</li>
									
									</c:if>
									<c:if test="${sessionScope.ub ne null}">
									<li>
										<a class="login" href="register.jsp">退出登录</a>
									</li>
									</c:if>
									
								</ul>
								<div class="language">
								    <c:if test="${sessionScope.ub eq null }">
								    <div >
										<span id="userName">当前用户：游客</span>
									</div></c:if>
									<c:if test="${sessionScope.ub ne null }">
									<div >
										<span id="userName">当前用户：${sessionScope.ub.userName}</span>
									</div>
									</c:if>
									
									
								</div>
							</div>
						</div>
			
					</div>
				</div>
			</div>
			<div class="header-middle">
				<div class="container">
					<div class="row">
						<div class="col-md-4 col-sm-12 col-xs-8">
							<div class="logo">
								<a href="index.html"><img src="img/logo.png" alt="" /></a>
							</div>
						</div>
						<div class="col-md-5 col-sm-6 hidden-xs">
							<div class="search-box">
								<form action="#">
									<input class="form-control search-form" type="text" placeholder="请输入商品关键字搜索" />
									<button class="search-button" value="Search" id="search" type="submit"><i class="fa fa-search"></i></button>
								</form>
							</div>
						</div>
						<div class="col-md-3 col-xs-4 col-sm-6">
							<div class="shopping-cart">
								<a class="cart" href="#" title="view shopping cart"><span class="hidden-xs">购物车<br><small>3件商品 - ￥199.00</small></span></a>
								<div class="top-cart-content">
									<div class="media header-middle-checkout">
										<div class="media-left check-img">
											<a href="#"><img src="img/cart/粉色满天星.jpg" alt="" /></a>
										</div>
										<div class="media-body checkout-content">
											<h4 class="media-heading">
                                                    <span class="cart-count">1</span>
                                                    <a href="#">粉色满天星</a>
                                                    <span class="btn-remove checkout-remove" title="remove this product from my cart"><i class="fa fa-times" aria-hidden="true"></i></span>
                                                </h4>
											<p>￥ 78.15</p>
										</div>
									</div>
									<div class="media header-middle-checkout last-child">
										<div class="media-left check-img">
											<a href="#"><img src="img/cart/紫色小雏菊.jpg" alt="" /></a>
										</div>
										<div class="media-body checkout-content">
											<h4 class="media-heading">
                                                    <span class="cart-count">2</span>
                                                    <a href="#">紫色小雏菊</a>
                                                    <span class="btn-remove checkout-remove" title="remove this product from my cart"><i class="fa fa-times" aria-hidden="true"></i></span>
                                                </h4>
											<p>￥120.85</p>
										</div>
									</div>
									<div class="cart-total">
										<span>总价</span>
										<span><b>￥199.00</b></span>
									</div>
									<div class="checkout">
										<a href="#"><span>结算<i class="fa fa-arrow-circle-o-right" aria-hidden="true"></i></span></a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="main-menu-area hidden-xs hidden-sm">
				<div class="container">
					<div class="row">
						<div class="colo-md-12">
							<div class="main-menu">
								<nav>
									<ul>
										<li>
											<a href="index.jsp">首页</a>
										</li>

										<li>
											<a href="shop.jsp">购物</a>
										</li>
										<li>
											<a href="about.jsp">关于我们</a>
										</li>
										<li>
											<a href="contact.jsp">联系我们</a>
										</li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- mobile-menu-area-start -->
			<div class="mobile-menu-area visible-xs visible-sm">
				<div class="container">
					<div class="row">
						<div class="col-md-12">
							<div class="mobile_menu">
								<nav id="mobile_menu_active">
									<ul>
										<li>
											<a href="index.jsp">Home</a>
										</li>
										<li>
											<a href="about.jsp">About</a>
										</li>
										<li>
											<a href="shop.jsp">Shop</a>
										</li>
										<li>
											<a href="contact.jsp">contact</a>
										</li>
									</ul>
								</nav>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- mobile-menu-area-end -->
		</header>
		<!-- header-end -->
</body>
</html>