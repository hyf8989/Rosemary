<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


	<head>
		<meta charset="UTF-8">
		<title>购物车</title>
		<meta name="description" content="">
		<meta name="author" content="">
		<meta name="keywords" content="">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">

		<!-- Mobile Specific Meta  -->
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

		<!-- Google Fonts -->
		<link href='https://fonts.googleapis.com/css?family=Lato:400,300,700,900,100' rel='stylesheet' type='text/css'>

		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="css/bootstrap.min.css" />
		<link rel="stylesheet" href="css/font-awesome.min.css" />
		<!-- Custom CSS -->
		<link href="style.css" rel="stylesheet">
		<script type="text/javascript" src="layui/layui.js"></script>
		<style type="text/css">
			.row1 {
				
				margin-bottom: 10px;
			}
		</style>
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

								<div class="language">
									<div class="current">
										<span>我的账户</span>
									</div>
									<ul class="lang">
										<li><img src="img/lang/2.jpg" alt="ar" />
											<a href="personal.html" title=""><span>我的信息</span></a>
										</li>
										<li><img src="img/lang/2.jpg" alt="ar" />
											<a href="pwd.html" title=""><span>修改密码</span></a>
										</li>
										<li><img src="img/lang/7.jpg" alt="hb" />
											<a href="myOrder.html" title=""><span>查看订单</span></a>
										</li>
									</ul>
								</div>

								<ul class="header-links hidden-xs">
									<li>
										<a class="login" href="../admin/login.html">
											我是管理员
										</a>
									</li>
									<li>
										<a class="login" href="register.html">注册</a>
									</li>
									<li>
										<a class="login" href="login.html">登录</a>
									</li>
								</ul>
								<div class="language">
									<div class="current">
										<span>语言</span>
									</div>
									<ul class="lang">
										<li class="selected"><img src="img/lang/1.jpg" alt="en" /><span>English</span></li>
										<li><img src="img/lang/2.jpg" alt="ar" />
											<a href="#" title=""><span>اللغة العربية</span></a>
										</li>
										<li><img src="img/lang/7.jpg" alt="hb" />
											<a href="#" title=""><span>עִברִית</span></a>
										</li>
										<li><img src="img/lang/3.jpg" alt="es" />
											<a href="#" title=""><span>Español</span></a>
										</li>
										<li><img src="img/lang/4.jpg" alt="ph" />
											<a href="#" title=""><span>Pilipino</span></a>
										</li>
										<li><img src="img/lang/5.jpg" alt="fr" />
											<a href="#" title=""><span>français</span></a>
										</li>
										<li><img src="img/lang/6.jpg" alt="sd" />
											<a href="#" title=""><span>svensk</span></a>
										</li>
									</ul>
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
											<a href="index.html">首页</a>
										</li>

										<li>
											<a href="shop.html">购物</a>
										</li>
										<li>
											<a href="about.html">关于我们</a>
										</li>
										<li>
											<a href="contact.html">联系我们</a>
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
											<a href="index.html">Home</a>
										</li>
										<li>
											<a href="about.html">About</a>
										</li>
										<li>
											<a href="shop.html">Shop</a>
										</li>
										<li>
											<a href="contact.html">contact</a>
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

		<div class="container">
			<div style="margin-top: 20px; " class="row row1">
				<ul>
					<div style="clear: both;" class="col-md-12">
						<div style="padding-top: 10px;float: left;border:solid palegoldenrod;" class="col-md-3">
                              <div style="float: left;" class="col-md-6">
                              	
							<li><img src="img/singlepro/a01.jpg" style="width: 100px;height: 100px;"/ ></li>&nbsp;&nbsp;
							</div>
							<div style="float: left;" class="col-md-6">描述	</div>
						</div>
						<div style="padding-top: 10px;padding-right:2px;height: 135px;float: left;border:solid palegoldenrod;" class="col-md-3">
							<label>价格 </label>
						</div>
						<div style="padding-top: 10px;padding-right:2px;height: 135px;float: left;border:solid palegoldenrod;" class="col-md-3">
<div class="layui-btn-group">
  <button class="layui-btn layui-btn-primary layui-btn-sm">
    <i class="layui-icon">-</i>
  </button>
  
   <input type="text" name="title" required  lay-verify="required"  autocomplete="off" class="layui-input" style="width: 100px;height: 30px;">
  
  <button class="layui-btn layui-btn-primary layui-btn-sm">
    <i class="layui-icon">+</i>
  </button>
</div>
						</div>
						<div style="padding-top: 10px;padding-right:2px;height: 135px;float: left;border:solid palegoldenrod;" class="col-md-3">

							 <button class="layui-btn layui-btn-primary layui-btn-sm">
    <i class="layui-icon">&#xe640;</i>
  </button>
						</div>
					</div>
				</ul>
			</div>
	</body>

</html>