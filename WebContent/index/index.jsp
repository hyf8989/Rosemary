<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${sessionScope.list eq null}"><!-- 判断最新鲜花是否已查询到 -->
	<script>location.href="/Rosemary/flower.do?op=getFlowerInfoByLimit";</script>
</c:if>
<c:if test="${sessionScope.list2 eq null}"><!-- 判断顶级鲜花是否已查询到 -->
	<script>location.href="/Rosemary/flower.do?op=getFlowerInfoByPrice";</script>
</c:if>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="utf-8">
<title>首页</title>
<meta name="description" content="">
<meta name="author" content="">
<meta name="keywords" content="">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<!-- Mobile Specific Meta  -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<!-- Google Fonts -->
<link
	href='https://fonts.googleapis.com/css?family=Lato:400,300,700,900,100'
	rel='stylesheet' type='text/css'>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css" />
<link rel="stylesheet" href="css/font-awesome.min.css" />
<!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/index/style.css"
	rel="stylesheet">
<link href="layui/css/layui.css" rel="stylesheet">

</head>

<body>

	<!-- header-start -->
	<%@ include file="headhav.jsp"%>
	<!-- header-end -->
	<!-- slider-start -->
	<div class="slider-container" id="slider">
		<div class="slider">
			<!-- Slider Image -->
			<div id="mainslider" class="nivoSlider slider-image">
				<img src="img/slider/hua1.jpg" alt="main slider"
					title="#htmlcaption1" /> <img src="img/slider/hua2.jpg"
					alt="main slider" title="#htmlcaption2" />
			</div>
			<!-- Slider Caption 1 -->
			<div id="htmlcaption1" class="nivo-html-caption slider-caption-1">
				<div class="slider-progress"></div>
				<div class="slide1-text slide-1 hidden-xs">
					<div class="middle-text">
						<div class="cap-dec wow bounceInLeft" data-wow-duration="0.9s"
							data-wow-delay="0s">
							<h1>The Best Fashion</h1>
						</div>
						<div class="cap-title wow bounceInRight" data-wow-duration="1.2s"
							data-wow-delay="0.2s">
							<h3>Save Your Time and Money</h3>
						</div>
						<div class="cap-readmore wow bounceInUp" data-wow-duration="1.3s"
							data-wow-delay=".5s">
							<a href="#">Shop Now</a>
						</div>
					</div>
				</div>
			</div>
			<!-- Slider Caption 2 -->
			<div id="htmlcaption2" class="nivo-html-caption slider-caption-2">
				<div class="slider-progress"></div>
				<div class="slide1-text slide-2 hidden-xs">
					<div class="middle-text">
						<div class="cap-dec wow bounceInLeft" data-wow-duration="0.9s"
							data-wow-delay="0s">
							<h1>The Best Fashion</h1>
						</div>
						<div class="cap-title wow bounceInRight" data-wow-duration="1.2s"
							data-wow-delay="0.2s">
							<h3>Save Your Time and Money</h3>
						</div>
						<div class="cap-readmore wow bounceInUp" data-wow-duration="1.3s"
							data-wow-delay=".5s">
							<a href="#">立即购买</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- slider-end -->
	<!-- banner-area-start -->
	<div class="banner-area hidden-sm hidden-xs">
		<div class="container">
			<div class="row">
				<div class="col-md-4 col-xs-12">
					<div class="single-banner wow fadeIn" data-wow-duration=".5s"
						data-wow-delay=".5s">
						<a href="#"> <img src="img/banner/戴安娜粉玫瑰.jpg" alt="" />
						</a>
					</div>
				</div>
				<div class="col-md-4 col-xs-12">
					<div class="single-banner wow fadeIn" data-wow-duration=".5s"
						data-wow-delay=".5s">
						<a href="#"> <img src="img/banner/粉百合.jpg" alt="" />
						</a>
					</div>
				</div>
				<div class="col-md-4 col-xs-12">
					<div class="single-banner wow fadeIn" data-wow-duration=".5s"
						data-wow-delay=".5s">
						<a href="#"> <img src="img/banner/香槟玫瑰.jpg" alt="" />
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- banner-area-end -->
	<!-- feature-area-start -->

	<!-- feature-area-end -->
	<!-- new-product-area-start -->
	<div class="new-product-area">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="section-heading">
						<h3>最新鲜花</h3>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="new-product wow fadeIn" data-wow-duration=".5s"
					data-wow-delay=".5s">
					<div class="new-carousel">

						<c:forEach var="flower" items="${sessionScope.list }">

							<div class="col-md-12 flower-show" id="${flower.flowerId}">


								<!-- single-product-start -->
								<div class="single-product">
									<div class="single-product-img">
										<a href="#" class="product-show"><img
											src="${flower.sPicture }" alt="" /></a> <span class="sale-box">
											<span class="sale">Sale</span>
										</span> <span class="new-box"> <span class="new">New</span>
										</span>
									</div>
									<div class="single-product-content">
										<div class="product-title">
											<h5>
												<a href="#">${flower.flowerName}</a>
											</h5>
										</div>
										<div class="rating">
											<div class="star star-on"></div>
											<div class="star star-on"></div>
											<div class="star star-on"></div>
											<div class="star star-on"></div>
											<div class="star star-on"></div>
										</div>
										<div class="price-box">
											<span class="price">${flower.price}</span> <span class="old-price">${flower.price+100}</span>
										</div>
										<div class="product-action">
											<button class="btn btn-default add-cart" title="加入购物车" >加入购物车</button>
											<a class="add-wishlist" href="#" title="加入收藏夹"><i
												class="fa fa-heart"></i></a> <a class="quick-view look" href="#"
												title="快速查看" data-toggle="modal" data-target="#myModal" ><i
												class="fa fa-search"></i></a>
										</div>
									</div>
								</div>
								<!-- single-product-end -->




							</div>



						</c:forEach>

					</div>
				</div>
			</div>

		</div>
	</div>
	<!-- new-product-area-end -->
	<!-- best-seller-area-start -->
	<div class="bestseller-area">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="best-seller-col wow fadeIn" data-wow-duration=".5s"
						data-wow-delay=".5s">
						<h3>销量最高</h3>
						<div class="best-seller-content">
							<!-- single-new-product-start -->
							<div class="single-new-product">

								<div class="product-img">
									<a href="#"><img src="img/singlepro/红玫瑰.jpg" alt="" /></a>
								</div>
								<div class="product-details">
									<div class="single-product-content">
										<div class="product-title">
											<h5>
												<a href="#">红玫瑰</a>
											</h5>
										</div>
										<div class="rating">
											<div class="star star-on"></div>
											<div class="star star-on"></div>
											<div class="star star-on"></div>
											<div class="star star-on"></div>
											<div class="star star-on"></div>
										</div>
										<div class="price-box">
											<span class="price">￥50.00</span> <span class="old-price">￥70.00</span>
										</div>
										<div class="product-action">
											<button class="btn btn-default add-cart" title="加入购物车">加入购物车</button>
											<a class="add-wishlist" href="#" title="加入收藏夹"><i
												class="fa fa-heart"></i></a> <a class="quick-view" href="#"
												title="快速查看" data-toggle="modal" data-target="#myModal"><i
												class="fa fa-search"></i></a>
										</div>
									</div>
								</div>
							</div>

							<!-- single-new-product-start -->
							<div class="single-new-product">
								<div class="product-img">
									<a href="#"><img src="img/singlepro/红玫瑰.jpg" alt="" /></a>
								</div>
								<div class="product-details">
									<div class="single-product-content">
										<div class="product-title">
											<h5>
												<a href="#">红玫瑰</a>
											</h5>
										</div>
										<div class="rating">
											<div class="star star-on"></div>
											<div class="star star-on"></div>
											<div class="star star-on"></div>
											<div class="star star-on"></div>
											<div class="star star-on"></div>
										</div>
										<div class="price-box">
											<span class="price">￥50.00</span> <span class="old-price">￥70.00</span>
										</div>
										<div class="product-action">
											<button class="btn btn-default add-cart" title="加入购物车">加入购物车</button>
											<a class="add-wishlist" href="#" title="加入收藏夹"><i
												class="fa fa-heart"></i></a> <a class="quick-view" href="#"
												title="快速查看" data-toggle="modal" data-target="#myModal"><i
												class="fa fa-search"></i></a>
										</div>
									</div>
								</div>
							</div>
							<!-- single-new-product-start -->
							<!-- single-new-product-start -->
							<div class="single-new-product">
								<div class="product-img">
									<a href="#"><img src="img/singlepro/粉色扶郎.jpg" alt="" /></a>
								</div>
								<div class="product-details">
									<div class="single-product-content">
										<div class="product-title">
											<h5>
												<a href="#">粉色扶郎</a>
											</h5>
										</div>
										<div class="rating">
											<div class="star star-on"></div>
											<div class="star star-on"></div>
											<div class="star star-on"></div>
											<div class="star star-on"></div>
											<div class="star star-on"></div>
										</div>
										<div class="price-box">
											<span class="price">￥50.00</span> <span class="old-price">￥70.00</span>
										</div>
										<div class="product-action">
											<button class="btn btn-default add-cart" title="加入购物车">加入购物车</button>
											<a class="add-wishlist" href="#" title="加入收藏夹"><i
												class="fa fa-heart"></i></a> <a class="quick-view" href="#"
												title="快速查看" data-toggle="modal" data-target="#myModal"><i
												class="fa fa-search"></i></a>
										</div>
									</div>
								</div>
							</div>
							<!-- single-new-product-start -->
						</div>
					</div>
				</div>
				
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="best-seller-col top-mar-xs wow fadeIn"
						data-wow-duration=".5s" data-wow-delay=".5s">
						<h3>顶级鲜花</h3>
						<div class="best-seller-content">
						<!-- single-new-product-start -->
						<c:forEach var="flower" items="${sessionScope.list2 }">
						<div class="single-new-product flower-show" id="${flower.flowerId }">
								<div class="product-img">
									<a href="#" class="product-show"><img src="${flower.sPicture }" alt="" /></a>
								</div>
								<div class="product-details">
									<div class="single-product-content">
										<div class="product-title">
											<h5>
												<a href="#">${flower.flowerName }</a>
											</h5>
										</div>
										<div class="rating">
											<div class="star star-on"></div>
											<div class="star star-on"></div>
											<div class="star star-on"></div>
											<div class="star star-on"></div>
											<div class="star star-on"></div>
										</div>
										<div class="price-box">
											<span class="price">￥${flower.price }</span> <span class="old-price">￥${flower.price+100}</span>
										</div>
										<div class="product-action">
											<button class="btn btn-default add-cart" title="加入购物车">加入购物车</button>
											<a class="add-wishlist" href="#" title="加入收藏夹"><i
												class="fa fa-heart"></i></a> <a class="quick-view" href="#"
												title="快速查看" data-toggle="modal" data-target="#myModal"><i
												class="fa fa-search"></i></a>
										</div>
									</div>
								</div>
							</div>
						
						
						
						</c:forEach>
							
							
							<!-- single-new-product-end -->
							
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- best-seller-area-end -->
	<!-- banner-2-area-start -->
	<div class="banner-2-area">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="single-banner wow fadeIn" data-wow-duration=".5s"
						data-wow-delay=".5s">
						<a href="#"><img src="img/singlepro/紫色小雏菊.jpg" alt="" /></a>
					</div>
				</div>
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="single-banner wow fadeIn" data-wow-duration=".5s"
						data-wow-delay=".5s">
						<a href="#"><img src="img/singlepro/白玫瑰.jpg" alt="" /></a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- banner-2-area-end -->
	<!-- exclusive-area-start -->
	<div class="exclusive-area">
		<div class="container">
			<div class="row">
				<div class="col-md-3 col-xs-12 hidden-sm wow fadeIn"
					data-wow-duration=".5s" data-wow-delay=".5s">
					<div class="best-seller">
						<div class="row">
							<div class="best-carousel">
								<div class="col-md-12">
									<!-- single-product-start -->
									<div class="single-product">
										<div class="single-product-img">
											<a href="#"><img src="img/singlepro/金枝玉叶玫瑰.jpg" alt="" /></a>
											<span class="discount-box">-12%</span>
										</div>
										<div class="upcoming">
											<span class="is-countdown"> </span>
											<div data-countdown="2020/09/01"></div>
										</div>
										<div class="single-product-content">
											<div class="product-title">
												<h5>
													<a href="#">金枝玉叶玫瑰</a>
												</h5>
											</div>
											<div class="rating">
												<div class="star star-on"></div>
												<div class="star star-on"></div>
												<div class="star star-on"></div>
												<div class="star star-on"></div>
												<div class="star"></div>
											</div>
											<div class="price-box">
												<span class="price">￥50.00</span> <span class="old-price">￥70.00</span>
											</div>
											<div class="product-action">
												<button class="btn btn-default add-cart" title="加入购物车">加入购物车</button>
												<a class="add-wishlist" href="#" title="加入收藏夹"><i
													class="fa fa-heart"></i></a> <a class="quick-view" href="#"
													title="快速查看" data-toggle="modal" data-target="#myModal"><i
													class="fa fa-search"></i></a>
											</div>
										</div>
									</div>
									<!-- single-product-end -->
								</div>
								<div class="col-md-12">
									<!-- single-product-start -->
									<div class="single-product">
										<div class="single-product-img">
											<a href="#"><img src="img/singlepro/红玫瑰.jpg" alt="" /></a> <span
												class="discount-box">-8%</span>
										</div>
										<div class="upcoming">
											<span class="is-countdown"> </span>
											<div data-countdown="2021/09/01"></div>
										</div>
										<div class="single-product-content">
											<div class="product-title">
												<h5>
													<a href="#">红玫瑰</a>
												</h5>
											</div>
											<div class="rating">
												<div class="star star-on"></div>
												<div class="star star-on"></div>
												<div class="star star-on"></div>
												<div class="star star-on"></div>
												<div class="star"></div>
											</div>
											<div class="price-box">
												<span class="price">￥50.00</span> <span class="old-price">￥70.00</span>
											</div>
											<div class="product-action">
												<button class="btn btn-default add-cart" title="加入购物车">加入购物车</button>
												<a class="add-wishlist" href="#" title="加入收藏夹"><i
													class="fa fa-heart"></i></a> <a class="quick-view" href="#"
													title="快速查看" data-toggle="modal" data-target="#myModal"><i
													class="fa fa-search"></i></a>
											</div>
										</div>
									</div>
									<!-- single-product-end -->
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-md-9 col-xs-12 col-sm-12 wow fadeIn"
					data-wow-duration=".5s" data-wow-delay=".5s">
					<div class="row">
						<div class="col-md-12">
							<div class="section-heading">
								<h3>exclusive</h3>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="exclusive-product">
							<div class="exclusive-carousel">
								<div class="col-md-12">
									<!-- single-product-start -->
									<div class="single-product">
										<div class="single-product-img">
											<a href="#"><img src="img/singlepro/紫色小雏菊.jpg" alt="" /></a>
											<span class="sale-box"> <span class="sale">Sale</span>
											</span>
										</div>
										<div class="single-product-content">
											<div class="product-title">
												<h5>
													<a href="#">紫色小雏菊</a>
												</h5>
											</div>
											<div class="rating">
												<div class="star star-on"></div>
												<div class="star star-on"></div>
												<div class="star star-on"></div>
												<div class="star star-on"></div>
												<div class="star"></div>
											</div>
											<div class="price-box">
												<span class="price">￥50.00</span> <span class="old-price">￥70.00</span>
											</div>
											<div class="product-action">
												<button class="btn btn-default add-cart" title="加入购物车">加入购物车</button>
												<a class="add-wishlist" href="#" title="加入收藏夹"><i
													class="fa fa-heart"></i></a> <a class="quick-view" href="#"
													title="快速查看" data-toggle="modal" data-target="#myModal"><i
													class="fa fa-search"></i></a>
											</div>
										</div>
									</div>
									<!-- single-product-end -->
								</div>
								<div class="col-md-12">
									<!-- single-product-start -->
									<div class="single-product">
										<div class="single-product-img">
											<a href="#"><img src="img/singlepro/粉色满天星.jpg" alt="" /></a>
											<span class="sale-box"> <span class="sale">Sale</span>
											</span>
										</div>
										<div class="single-product-content">
											<div class="product-title">
												<h5>
													<a href="#">粉色满天星</a>
												</h5>
											</div>
											<div class="rating">
												<div class="star"></div>
												<div class="star"></div>
												<div class="star"></div>
												<div class="star"></div>
												<div class="star"></div>
											</div>
											<div class="price-box">
												<span class="price">￥50.00</span> <span class="old-price">￥70.00</span>
											</div>
											<div class="product-action">
												<button class="btn btn-default add-cart" title="加入购物车">加入购物车</button>
												<a class="add-wishlist" href="#" title="加入收藏夹"><i
													class="fa fa-heart"></i></a> <a class="quick-view" href="#"
													title="快速查看" data-toggle="modal" data-target="#myModal"><i
													class="fa fa-search"></i></a>
											</div>
										</div>
									</div>
									<!-- single-product-end -->
								</div>
								<div class="col-md-12">
									<!-- single-product-start -->
									<div class="single-product">
										<div class="single-product-img">
											<a href="#"><img src="img/singlepro/粉色扶郎.jpg" alt="" /></a>
											<span class="sale-box"> <span class="sale">Sale</span>
											</span>
										</div>
										<div class="single-product-content">
											<div class="product-title">
												<h5>
													<a href="#">粉色扶郎</a>
												</h5>
											</div>
											<div class="rating">
												<div class="star star-on"></div>
												<div class="star star-on"></div>
												<div class="star star-on"></div>
												<div class="star star-on"></div>
												<div class="star star-on"></div>
											</div>
											<div class="price-box">
												<span class="price">￥50.00</span> <span class="old-price">￥70.00</span>
											</div>
											<div class="product-action">
												<button class="btn btn-default add-cart" title="加入购物车">加入购物车</button>
												<a class="add-wishlist" href="#" title="加入收藏夹"><i
													class="fa fa-heart"></i></a> <a class="quick-view" href="#"
													title="快速查看" data-toggle="modal" data-target="#myModal"><i
													class="fa fa-search"></i></a>
											</div>
										</div>
									</div>
									<!-- single-product-end -->
								</div>
								<div class="col-md-12">
									<!-- single-product-start -->
									<div class="single-product">
										<div class="single-product-img">
											<a href="#"><img src="img/singlepro/白玫瑰.jpg" alt="" /></a> <span
												class="sale-box"> <span class="sale">Sale</span>
											</span>
										</div>
										<div class="single-product-content">
											<div class="product-title">
												<h5>
													<a href="#">白玫瑰</a>
												</h5>
											</div>
											<div class="rating">
												<div class="star star-on"></div>
												<div class="star star-on"></div>
												<div class="star star-on"></div>
												<div class="star star-on"></div>
												<div class="star"></div>
											</div>
											<div class="price-box">
												<span class="price">￥50.00</span> <span class="old-price">￥70.00</span>
											</div>
											<div class="product-action">
												<button class="btn btn-default add-cart" title="加入购物车">加入购物车</button>
												<a class="add-wishlist" href="#" title="加入收藏夹"><i
													class="fa fa-heart"></i></a> <a class="quick-view" href="#"
													title="快速查看" data-toggle="modal" data-target="#myModal"><i
													class="fa fa-search"></i></a>
											</div>
										</div>
									</div>
									<!-- single-product-end -->
								</div>
								<div class="col-md-12">
									<!-- single-product-start -->
									<div class="single-product">
										<div class="single-product-img">
											<a href="#"><img src="img/singlepro/白色多头香水百合.jpg" alt="" /></a>
											<span class="sale-box"> <span class="sale">Sale</span>
											</span>
										</div>
										<div class="single-product-content">
											<div class="product-title">
												<h5>
													<a href="#">白色多头香水百合</a>
												</h5>
											</div>
											<div class="rating">
												<div class="star"></div>
												<div class="star"></div>
												<div class="star"></div>
												<div class="star"></div>
												<div class="star"></div>
											</div>
											<div class="price-box">
												<span class="price">￥50.00</span> <span class="old-price">￥70.00</span>
											</div>
											<div class="product-action">
												<button class="btn btn-default add-cart" title="加入购物车">加入购物车</button>
												<a class="add-wishlist" href="#" title="加入收藏夹"><i
													class="fa fa-heart"></i></a> <a class="quick-view" href="#"
													title="快速查看" data-toggle="modal" data-target="#myModal"><i
													class="fa fa-search"></i></a>
											</div>
										</div>
									</div>
									<!-- single-product-end -->
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- exclusive-area-end -->
	
	
	
	<!-- footer-start -->
	<%@ include file="foot.jsp"%>
	<!-- footer-end -->
	

	<!-- all js here -->
	<!-- jquery latest version -->
	<script src="js/vendor/jquery-1.12.0.min.js"></script>
	<!-- bootstrap js -->
	<script src="js/bootstrap.min.js"></script>
	<!-- owl.carousel js -->
	<script src="js/owl.carousel.min.js"></script>
	<!-- meanmenu js -->
	<script src="js/jquery.meanmenu.js"></script>
	<!-- countdown js -->
	<script src="js/countdown.js"></script>
	<!-- jquery.nivo.slider.pack js -->
	<script src="js/jquery.nivo.slider.pack.js"></script>
	<!-- jquery-ui.min.js -->
	<script src="js/jquery-ui.min.js"></script>
	<!-- wow js -->
	<script src="js/wow.min.js"></script>
	<!-- plugins js -->
	<script src="js/plugins.js"></script>
	<!-- main js -->
	<script src="js/main.js"></script>
	<script type="text/javascript" src="layui/layui.js">
			
		</script>
	<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js">
</script>
 

	<script type="text/javascript" >	
	layui.use('layer', function(){ 
		  var layer = layui.layer;
		    
		    
		});   
	      //鲜花图片点击事件
		  	$(".product-show").click(function(){
		  		//获取该鲜花的ID
		  		var id=$(this).parents(".flower-show").attr("id");
		  	console.log(id);
		  		    
		  		 if(${sessionScope.ub eq null}){  
		  		 	     
		  			layer.open({ 
		  	  			title:'友情提醒',
		  	  			skin:"layui-layer-lan",
		  	  			content:'<p>检测到您目前还没有登录</p>',
		  	  			btn:['转到登录界面','不了，我只是浏览商品'],
		  	  			 
		  	  			yes:function () {
		  	  				location.href='login.jsp';
		  	  			},
		  	  			btn2:function () {
		  	  				
		  	  				location.href="/Rosemary/flower.do?op=Gotodetail&flowerId="+id;
		  	  			}
		  	  		}); 
		  		}
		  		 else{   
		  			 /*
		  			 待更改
		  			 */
		  			location.href="/Rosemary/flower.do?op=Gotodetail&flowerId="+id; 
		  			 
		  		 }
		  		 
		  		
		  		 
		  		
		  	
		  	});
	     
	    //当用户点击添加购物车事件时  
	$(".add-cart").click(function(){
		//获取鲜花的ID
		var id=$(this).parents(".flower-show").attr("id");
		//数量默认为1（点击一次，添加一次）
		var quantity=1;
		//获取用户名
		var userName="${sessionScope.ub.userName}";
		if(userName){
			$.get("/Rosemary/cart.do","op=addToCart&flowerId="+id+"&quantity="+quantity,function(data,status){
    			  layer.msg('<span style="color:black;">'+data+'</span>', {
  					icon:6,
  					time: 2000
  				});
    			window.location.reload();//刷新当前页面
    		  });
			
		}
		else{
			
			layer.open({
				title: "友情提醒？",
				skin: "layui-layer-molv",
				content: "<span style='color:black;'>还没登录可不能加入购物车哦！</span>",
				anim: 0,
				btn: ['那我还是去登录吧'],
				yes: function(index, layero) {
					location.href="login.jsp";
				}
				
			});
		}
		 
		
	});
	</script>
			  
				
			
				
         
		

</body>

</html>