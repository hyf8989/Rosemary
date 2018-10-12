<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="utf-8">
		<title>店铺</title>
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

		
	</head>

	<body>


		<!-- header-start -->
		<%@ include file="headhav.jsp" %>
		<!-- header-end -->
		<!-- heading-banner-start -->
		<div class="heading-banner">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-xs-12">
						<div class="breadcrumb">
							<a title="Return to Home" href="index.html">
								<i class="icon-home"></i>
							</a>
							<span class="navigation-page">
                                <span class="navigation-pipe">></span> Shop
							</span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- heading-banner-end -->
		<!-- shop-area-start -->
		<div class="shop-area">
			<div class="container">
				<div class="ro w">
					<div class="col-md-3 col-sm-3 col-xs-12">
						<div class="shop-left-col wow fadeIn" data-wow-duration=".5s" data-wow-delay=".5s">
							<div class="content-box">
								<h2>鲜花类别</h2>
								<ul>
									<li>
										<label class="check-label">
                                            <a href="#">郁金香</a>
                                        </label>
									</li>
									<li>

										<label class="check-label">
                                            <a href="#">玫瑰</a>
                                        </label>
									</li>
									<li>

										<label class="check-label">
                                            <a href="#">康乃馨</a>
                                        </label>
									</li>
									<li>

										<label class="check-label">
                                            <a href="#">邹菊</a>
                                        </label>
									</li>
									<li>
										<label class="check-label">
                                            <a href="#">满天星</a>
                                        </label>
									</li>
									<li>
										<label class="check-label">
                                            <a href="#">百合</a>
                                        </label>
									</li>
									<li>
										<label class="check-label">
                                            <a href="#">迷迭香</a>
                                        </label>
									</li>
									<li>
										<label class="check-label">
                                            <a href="#">桔梗花</a>
                                        </label>
									</li>
									<li>
										<label class="check-label">
                                            <a href="#">扶郎</a>
                                        </label>
									</li>
								</ul>
							</div>
							<div class="content-box">
								<h2>价格</h2>
								<div class="info_widget">
									<div class="price_filter">
										<div id="slider-range"></div>
										<div class="price_slider_amount">
											<input type="text" id="amount" name="price" placeholder="Add Your Price" />
											<input type="submit" value="范围">
										</div>
									</div>
								</div>
							</div>

							<div class="content-box">
								<h2>鲜花颜色</h2>
								<ul>
									<li>
										<span class="checkit">
                                            <input class="checkbox" type="checkbox" />
                                        </span>
										<label class="check-label">
                                            <a href="#">红色</a>
                                        </label>
									</li>
									<li>
										<span class="checkit">
                                            <input class="checkbox" type="checkbox" />
                                        </span>
										<label class="check-label">
                                            <a href="#">粉色</a>
                                        </label>
									</li>
									<li>
										<span class="checkit">
                                            <input class="checkbox" type="checkbox" />
                                        </span>
										<label class="check-label">
                                            <a href="#">白色</a>
                                        </label>
									</li>
									<li>
										<span class="checkit">
                                            <input class="checkbox" type="checkbox" />
                                        </span>
										<label class="check-label">
                                            <a href="#">香槟</a>
                                        </label>
									</li>
									<li>
										<span class="checkit">
                                            <input class="checkbox" type="checkbox" />
                                        </span>
										<label class="check-label">
                                            <a href="#">紫色</a>
                                        </label>
									</li>
									<li>
										<span class="checkit">
                                            <input class="checkbox" type="checkbox" />
                                        </span>
										<label class="check-label">
                                            <a href="#">黄色</a>
                                        </label>
									</li>
									<li>
										<span class="checkit">
                                            <input class="checkbox" type="checkbox" />
                                        </span>
										<label class="check-label">
                                            <a href="#">蓝色</a>
                                        </label>
									</li>
								</ul>
							</div>
							<div class="content-box">
								<h2>鲜花用途</h2>
								<ul>
									<li>

										<label class="check-label">
                                            <a href="#">爱情鲜花</a>
                                        </label>
									</li>
									<li>

										<label class="check-label">
                                            <a href="#">生日鲜花</a>
                                        </label>
									</li>
									<li>

										<label class="check-label">
                                            <a href="#">友情鲜花</a>
                                        </label>
									</li>
									<li>
										<label class="check-label">
                                            <a href="#">孝敬长辈</a>
                                        </label>
									</li>
									<li>

										<label class="check-label">
                                            <a href="#">商务用花</a>
                                        </label>
									</li>
									<li>

										<label class="check-label">
                                            <a href="#">祝贺鲜花</a>
                                        </label>
									</li>
									<li>
										<label class="check-label">
                                            <a href="#">婚庆鲜花</a>
                                        </label>
									</li>
								</ul>
							</div>
							<div class="content-box">
								<h2>标签</h2>
								<ul class="tags">
									<li>
										<a href="#">香槟玫瑰</a>
									</li>
									<li>
										<a href="#">粉色洋桔梗</a>
									</li>
									<li>
										<a href="#">戴安娜粉玫瑰</a>
									</li>
									<li>
										<a href="#">粉百合</a>
									</li>
									<li>
										<a href="#">紫色小雏菊</a>
									</li>
									<li>
										<a href="#">红色康乃馨</a>
									</li>
									<li>
										<a href="#">白色郁金香</a>
									</li>
									<li>
										<a href="#">白色多头香水百合</a>
									</li>
									<li>
										<a href="#">粉色满天星</a>
									</li>
									<li>
										<a href="#">红色扶郎</a>
									</li>
									<li>
										<a href="#">浅香槟玫瑰</a>
									</li>
									<li>
										<a href="#">金枝玉叶玫瑰</a>
									</li>
									<li>
										<a href="#">明亮向日葵</a>
									</li>
								</ul>
							</div>
						</div>
					</div>
					<div class="col-md-9 col-sm-9 col-xs-12">
						<div class="shop-right-col wow fadeIn" data-wow-duration=".5s" data-wow-delay=".5s">
							<div class="category-products">
								<div class="topbar-category">
									<div class="pager-area">
										<div>
											<!-- Nav tabs -->
											<ul class="shop-tab">
												<li role="presentation" class="active">
													<a href="#gried_view" role="tab" data-toggle="tab">
														<i class="fa fa-th-large"></i></a>
												</li>
												<li role="presentation">
													<a href="#list_view" role="tab" data-toggle="tab">
														<i class="fa fa-th-list"></i></a>
												</li>
											</ul>
										</div>
									</div>
									<div class="sort-by hidden-xs">
										<label>排序方式</label>
										<select>
											<option value="#">最低价格</option>
											<option value="#">最高价格</option>
											<option value="#">鲜花名从A-Z</option>
											<option value="#">鲜花名从Z-A</option>
											<option selected="selected" value="#">--</option>
										</select>
									</div>
									<div class="show hidden-xs">
										<label>显示</label>
										<select>
											<option value="#">24</option>
											<option selected="selected" value="#">12</option>
										</select>
										<span>每页</span>
									</div>
									<div class="shop-breadcrumb">
										<ul>
											<li class="active">
												<a href="#">1</a>
											</li>
											<li>
												<a href="#">2</a>
											</li>
											<li>
												<a href="#">3</a>
											</li>
											<li>
												<a href="#">></a>
											</li>
										</ul>
									</div>
								</div>
								<div class="shop-category-product">
									<div class="row">
										<div class="category-product">
											<!-- Tab panes -->
											<div class="tab-content">
												<div role="tabpanel" class="tab-pane active fade in" id="gried_view">
													<div class="col-md-4 col-sm-6 col-xs-12 mar-bot">
														<!-- single-product-start -->
														<div class="single-product">
															<div class="single-product-img">
																<a href="#">
																	<img src="img/singlepro/a01.jpg" alt="" />
																</a>
																<span class="sale-box">
                                                                    <span class="sale">Sale</span>
																</span>
																<span class="new-box">
                                                                    <span class="new">New</span>
																</span>
															</div>
															<div class="single-product-content">
																<div class="product-title">
																	<h5>
                                                                        <a href="#">粉色洋桔梗</a>
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
																	<span class="price">£359.00</span>
																	<span class="old-price">£390.00</span>
																</div>
																<div class="product-action">
																	<button class="button btn btn-default add-cart" title="add to cart">加入购物车</button>
																	<a class="add-wishlist" href="#" title="add to wishlist">
																		<i class="fa fa-heart"></i>
																	</a>
																	<a class="quick-view" href="#" title="quick view" data-toggle="modal" data-target="#myModal">
																		<i class="fa fa-search"></i>
																	</a>
																</div>
															</div>
														</div>
														<!-- single-product-end -->
													</div>
													<div class="col-md-4 col-sm-6 col-xs-12 mar-bot">
														<!-- single-product-start -->
														<div class="single-product">
															<div class="single-product-img">
																<a href="#">
																	<img src="img/singlepro/a02.jpg" alt="" />
																</a>
																<span class="sale-box">
                                                                    <span class="sale">Sale</span>
																</span>
																<span class="new-box">
                                                                    <span class="new">New</span>
																</span>
															</div>
															<div class="single-product-content">
																<div class="product-title">
																	<h5>
                                                                        <a href="#">戴安娜粉玫瑰</a>
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
																	<span class="price">£128.00</span>
																	<span class="old-price">£270.00</span>
																</div>
																<div class="product-action">
																	<button class="button btn btn-default add-cart" title="add to cart">加入购物车</button>
																	<a class="add-wishlist" href="#" title="add to wishlist">
																		<i class="fa fa-heart"></i>
																	</a>
																	<a class="quick-view" href="#" title="quick view" data-toggle="modal" data-target="#myModal">
																		<i class="fa fa-search"></i>
																	</a>
																</div>
															</div>
														</div>
														<!-- single-product-end -->
													</div>
													<div class="col-md-4 col-sm-6 col-xs-12 no-mar-top top-mar">
														<!-- single-product-start -->
														<div class="single-product">
															<div class="single-product-img">
																<a href="#">
																	<img src="img/singlepro/a03.jpg" alt="" />
																</a>
																<span class="sale-box">
                                                                    <span class="sale">Sale</span>
																</span>
																<span class="new-box">
                                                                    <span class="new">New</span>
																</span>
															</div>
															<div class="single-product-content">
																<div class="product-title">
																	<h5>
                                                                        <a href="#">香槟玫瑰</a>
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
																	<span class="price">£302.00</span>
																	<span class="old-price">£390.00</span>
																</div>
																<div class="product-action">
																	<button class="button btn btn-default add-cart" title="add to cart">加入购物车</button>
																	<a class="add-wishlist" href="#" title="add to wishlist">
																		<i class="fa fa-heart"></i>
																	</a>
																	<a class="quick-view" href="#" title="quick view" data-toggle="modal" data-target="#myModal">
																		<i class="fa fa-search"></i>
																	</a>
																</div>
															</div>
														</div>
														<!-- single-product-end -->
													</div>
													<div class="col-md-4 col-sm-6 col-xs-12 top-mar">
														<!-- single-product-start -->
														<div class="single-product">
															<div class="single-product-img">
																<a href="#">
																	<img src="img/singlepro/a04.jpg" alt="" />
																</a>
																<span class="sale-box">
                                                                    <span class="sale">Sale</span>
																</span>
																<span class="new-box">
                                                                    <span class="new">New</span>
																</span>
															</div>
															<div class="single-product-content">
																<div class="product-title">
																	<h5>
                                                                        <a href="#">粉百合</a>
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
																	<span class="price">£286.00</span>
																	<span class="old-price">£350.00</span>
																</div>
																<div class="product-action">
																	<button class="button btn btn-default add-cart" title="add to cart">加入购物车</button>
																	<a class="add-wishlist" href="#" title="add to wishlist">
																		<i class="fa fa-heart"></i>
																	</a>
																	<a class="quick-view" href="#" title="quick view" data-toggle="modal" data-target="#myModal">
																		<i class="fa fa-search"></i>
																	</a>
																</div>
															</div>
														</div>
														<!-- single-product-end -->
													</div>
													<div class="col-md-4 col-sm-6 col-xs-12 top-mar">
														<!-- single-product-start -->
														<div class="single-product">
															<div class="single-product-img">
																<a href="#">
																	<img src="img/singlepro/a05.jpg" alt="" />
																</a>
																<span class="sale-box">
                                                                    <span class="sale">Sale</span>
																</span>
																<span class="new-box">
                                                                    <span class="new">New</span>
																</span>
															</div>
															<div class="single-product-content">
																<div class="product-title">
																	<h5>
                                                                        <a href="#">白玫瑰</a>
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
																	<span class="price">£308.00</span>
																	<span class="old-price">£399.00</span>
																</div>
																<div class="product-action">
																	<button class="button btn btn-default add-cart" title="add to cart">加入购物车</button>
																	<a class="add-wishlist" href="#" title="add to wishlist">
																		<i class="fa fa-heart"></i>
																	</a>
																	<a class="quick-view" href="#" title="quick view" data-toggle="modal" data-target="#myModal">
																		<i class="fa fa-search"></i>
																	</a>
																</div>
															</div>
														</div>
														<!-- single-product-end -->
													</div>
													<div class="col-md-4 col-sm-6 col-xs-12 top-mar">
														<!-- single-product-start -->
														<div class="single-product">
															<div class="single-product-img">
																<a href="#">
																	<img src="img/singlepro/a06.jpg" alt="" />
																</a>
																<span class="sale-box">
                                                                    <span class="sale">Sale</span>
																</span>
																<span class="new-box">
                                                                    <span class="new">New</span>
																</span>
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
																	<span class="price">£639.00</span>
																	<span class="old-price">£800.00</span>
																</div>
																<div class="product-action">
																	<button class="button btn btn-default add-cart" title="add to cart">加入购物车</button>
																	<a class="add-wishlist" href="#" title="add to wishlist">
																		<i class="fa fa-heart"></i>
																	</a>
																	<a class="quick-view" href="#" title="quick view" data-toggle="modal" data-target="#myModal">
																		<i class="fa fa-search"></i>
																	</a>
																</div>
															</div>
														</div>
														<!-- single-product-end -->
													</div>
													<div class="col-md-4 col-sm-6 col-xs-12 top-mar">
														<!-- single-product-start -->
														<div class="single-product">
															<div class="single-product-img">
																<a href="#">
																	<img src="img/singlepro/a07.jpg" alt="" />
																</a>
																<span class="sale-box">
                                                                    <span class="sale">Sale</span>
																</span>
																<span class="new-box">
                                                                    <span class="new">New</span>
																</span>
															</div>
															<div class="single-product-content">
																<div class="product-title">
																	<h5>
                                                                        <a href="#">粉色扶郎</a>
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
																	<span class="price">£229.00</span>
																	<span class="old-price">£325.00</span>
																</div>
																<div class="product-action">
																	<button class="button btn btn-default add-cart" title="add to cart">加入购物车</button>
																	<a class="add-wishlist" href="#" title="add to wishlist">
																		<i class="fa fa-heart"></i>
																	</a>
																	<a class="quick-view" href="#" title="quick view" data-toggle="modal" data-target="#myModal">
																		<i class="fa fa-search"></i>
																	</a>
																</div>
															</div>
														</div>
														<!-- single-product-end -->
													</div>
													<div class="col-md-4 col-sm-6 col-xs-12 top-mar">
														<!-- single-product-start -->
														<div class="single-product">
															<div class="single-product-img">
																<a href="#">
																	<img src="img/singlepro/a08.jpg" alt="" />
																</a>
																<span class="sale-box">
                                                                    <span class="sale">Sale</span>
																</span>
																<span class="new-box">
                                                                    <span class="new">New</span>
																</span>
															</div>
															<div class="single-product-content">
																<div class="product-title">
																	<h5>
                                                                        <a href="#">明亮向日葵</a>
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
																	<span class="price">£290.00</span>
																	<span class="old-price">£300.00</span>
																</div>
																<div class="product-action">
																	<button class="button btn btn-default add-cart" title="add to cart">加入购物车</button>
																	<a class="add-wishlist" href="#" title="add to wishlist">
																		<i class="fa fa-heart"></i>
																	</a>
																	<a class="quick-view" href="#" title="quick view" data-toggle="modal" data-target="#myModal">
																		<i class="fa fa-search"></i>
																	</a>
																</div>
															</div>
														</div>
														<!-- single-product-end -->
													</div>
													<div class="col-md-4 col-sm-6 col-xs-12 top-mar">
														<!-- single-product-start -->
														<div class="single-product">
															<div class="single-product-img">
																<a href="#">
																	<img src="img/singlepro/a09.jpg" alt="" />
																</a>
																<span class="sale-box">
                                                                    <span class="sale">Sale</span>
																</span>
																<span class="new-box">
                                                                    <span class="new">New</span>
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
																	<span class="price">£292.00</span>
																	<span class="old-price">£320.00</span>
																</div>
																<div class="product-action">
																	<button class="button btn btn-default add-cart" title="add to cart">加入购物车</button>
																	<a class="add-wishlist" href="#" title="add to wishlist">
																		<i class="fa fa-heart"></i>
																	</a>
																	<a class="quick-view" href="#" title="quick view" data-toggle="modal" data-target="#myModal">
																		<i class="fa fa-search"></i>
																	</a>
																</div>
															</div>
														</div>
														<!-- single-product-end -->
													</div>
													<div class="col-md-4 col-sm-6 col-xs-12 top-mar">
														<!-- single-product-start -->
														<div class="single-product">
															<div class="single-product-img">
																<a href="#">
																	<img src="img/singlepro/a10.jpg" alt="" />
																</a>
																<span class="sale-box">
                                                                    <span class="sale">Sale</span>
																</span>
																<span class="new-box">
                                                                    <span class="new">New</span>
																</span>
															</div>
															<div class="single-product-content">
																<div class="product-title">
																	<h5>
                                                                        <a href="#">浅香槟玫瑰</a>
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
																	<span class="price">£298.00</span>
																	<span class="old-price">£332.00</span>
																</div>
																<div class="product-action">
																	<button class="button btn btn-default add-cart" title="add to cart">加入购物车</button>
																	<a class="add-wishlist" href="#" title="add to wishlist">
																		<i class="fa fa-heart"></i>
																	</a>
																	<a class="quick-view" href="#" title="quick view" data-toggle="modal" data-target="#myModal">
																		<i class="fa fa-search"></i>
																	</a>
																</div>
															</div>
														</div>
														<!-- single-product-end -->
													</div>
													<div class="col-md-4 col-sm-6 col-xs-12 top-mar">
														<!-- single-product-start -->
														<div class="single-product">
															<div class="single-product-img">
																<a href="#">
																	<img src="img/singlepro/a11.jpg" alt="" />
																</a>
																<span class="sale-box">
                                                                    <span class="sale">Sale</span>
																</span>
																<span class="new-box">
                                                                    <span class="new">New</span>
																</span>
															</div>
															<div class="single-product-content">
																<div class="product-title">
																	<h5>
                                                                        <a href="#">粉色多头康乃馨</a>
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
																	<span class="price">£178.00</span>
																	<span class="old-price">£208.00</span>
																</div>
																<div class="product-action">
																	<button class="button btn btn-default add-cart" title="add to cart">加入购物车</button>
																	<a class="add-wishlist" href="#" title="add to wishlist">
																		<i class="fa fa-heart"></i>
																	</a>
																	<a class="quick-view" href="#" title="quick view" data-toggle="modal" data-target="#myModal">
																		<i class="fa fa-search"></i>
																	</a>
																</div>
															</div>
														</div>
														<!-- single-product-end -->
													</div>
													<div class="col-md-4 col-sm-6 col-xs-12 top-mar">
														<!-- single-product-start -->
														<div class="single-product">
															<div class="single-product-img">
																<a href="#">
																	<img src="img/singlepro/a12.jpg" alt="" />
																</a>
																<span class="sale-box">
                                                                    <span class="sale">Sale</span>
																</span>
																<span class="new-box">
                                                                    <span class="new">New</span>
																</span>
															</div>
															<div class="single-product-content">
																<div class="product-title">
																	<h5>
                                                                        <a href="#">红色扶郎</a>
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
																	<span class="price">£159.00</span>
																	<span class="old-price">£215.00</span>
																</div>
																<div class="product-action">
																	<button class="button btn btn-default add-cart" title="add to cart">加入购物车</button>
																	<a class="add-wishlist" href="#" title="add to wishlist">
																		<i class="fa fa-heart"></i>
																	</a>
																	<a class="quick-view" href="#" title="quick view" data-toggle="modal" data-target="#myModal">
																		<i class="fa fa-search"></i>
																	</a>
																</div>
															</div>
														</div>
														<!-- single-product-end -->
													</div>

													<div class="col-md-4 col-sm-6 col-xs-12 top-mar">
														<!-- single-product-start -->
														<div class="single-product">
															<div class="single-product-img">
																<a href="#">
																	<img src="img/singlepro/a21.jpg" alt="" />
																</a>
																<span class="sale-box">
                                                                    <span class="sale">Sale</span>
																</span>
																<span class="new-box">
                                                                    <span class="new">New</span>
																</span>
															</div>
															<div class="single-product-content">
																<div class="product-title">
																	<h5>
                                                                        <a href="#">粉色非洲菊</a>
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
																	<span class="price">£235.00</span>
																	<span class="old-price">£315.00</span>
																</div>
																<div class="product-action">
																	<button class="button btn btn-default add-cart" title="add to cart">加入购物车</button>
																	<a class="add-wishlist" href="#" title="add to wishlist">
																		<i class="fa fa-heart"></i>
																	</a>
																	<a class="quick-view" href="#" title="quick view" data-toggle="modal" data-target="#myModal">
																		<i class="fa fa-search"></i>
																	</a>
																</div>
															</div>
														</div>
														<!-- single-product-end -->
													</div>
													<div class="col-md-4 col-sm-6 col-xs-12 top-mar">
														<!-- single-product-start -->
														<div class="single-product">
															<div class="single-product-img">
																<a href="#">
																	<img src="img/singlepro/a23.jpg" alt="" />
																</a>
																<span class="sale-box">
                                                                    <span class="sale">Sale</span>
																</span>
																<span class="new-box">
                                                                    <span class="new">New</span>
																</span>
															</div>
															<div class="single-product-content">
																<div class="product-title">
																	<h5>
                                                                        <a href="#">多头黄百合</a>
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
																	<span class="price">£329.00</span>
																	<span class="old-price">£365.00</span>
																</div>
																<div class="product-action">
																	<button class="button btn btn-default add-cart" title="add to cart">加入购物车</button>
																	<a class="add-wishlist" href="#" title="add to wishlist">
																		<i class="fa fa-heart"></i>
																	</a>
																	<a class="quick-view" href="#" title="quick view" data-toggle="modal" data-target="#myModal">
																		<i class="fa fa-search"></i>
																	</a>
																</div>
															</div>
														</div>
														<!-- single-product-end -->
													</div>

													<div class="col-md-4 col-sm-6 col-xs-12 top-mar">
														<!-- single-product-start -->
														<div class="single-product">
															<div class="single-product-img">
																<a href="#">
																	<img src="img/singlepro/a24.jpg" alt="" />
																</a>
																<span class="sale-box">
                                                                    <span class="sale">Sale</span>
																</span>
																<span class="new-box">
                                                                    <span class="new">New</span>
																</span>
															</div>
															<div class="single-product-content">
																<div class="product-title">
																	<h5>
                                                                        <a href="#">粉色康乃馨</a>
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
																	<span class="price">£346.00</span>
																	<span class="old-price">£315.00</span>
																</div>
																<div class="product-action">
																	<button class="button btn btn-default add-cart" title="add to cart">加入购物车</button>
																	<a class="add-wishlist" href="#" title="add to wishlist">
																		<i class="fa fa-heart"></i>
																	</a>
																	<a class="quick-view" href="#" title="quick view" data-toggle="modal" data-target="#myModal">
																		<i class="fa fa-search"></i>
																	</a>
																</div>
															</div>
														</div>
														<!-- single-product-end -->
													</div>

												</div>
												<div role="tabpanel" class="tab-pane fade" id="list_view">
													<div class="list-view">
														<div class="row">
															<div class="col-md-12 col-sm-12 col-xs-12">
																<div class="col-md-4 col-sm-4 col-xs-12">
																	<!-- single-product-start -->
																	<div class="single-product">
																		<div class="single-product-img">
																			<a href="#">
																				<img src="img/singlepro/a13.jpg" alt="" />
																			</a>
																			<span class="sale-box">
                                                                                <span class="sale">Sale</span>
																			</span>
																			<span class="new-box">
                                                                                <span class="new">New</span>
																			</span>
																		</div>
																	</div>
																	<!-- single-product-end -->
																</div>
																<div class="col-md-8 col-sm-8 col-xs-12">
																	<!-- single-product-start -->
																	<div class="single-product">
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
																				<div class="star star-on"></div>
																			</div>
																			<div class="price-box">
																				<span class="price">£254.00</span>
																				<span class="old-price">£300.00</span>
																			</div>
																			<p class="product-desc">
																				花语：灿烂地笑吧~你的笑容是我今生最大的心愿！<br /> 材 料：向日葵2枝，金枝玉叶玫瑰13枝，香槟桔梗0.2扎，叶上黄金0.2扎. <br /> 包 装：手提花篮1个.
																			</p>
																			<div class="product-action">
																				<button class="button btn btn-default add-cart" title="add to cart">加入购物车</button>
																				<a class="add-wishlist" href="#" title="add to wishlist">
																					<i class="fa fa-heart"></i>
																				</a>
																				<a class="quick-view" href="#" title="quick view" data-toggle="modal" data-target="#myModal">
																					<i class="fa fa-search"></i>
																				</a>
																			</div>
																			<div class="availability">
																				<span>In stock</span>
																			</div>
																		</div>
																	</div>
																	<!-- single-product-end -->
																</div>
															</div>
															<div class="col-md-12 col-sm-12 col-xs-12 top-mar">
																<div class="col-md-4 col-sm-4 col-xs-12">
																	<!-- single-product-start -->
																	<div class="single-product">
																		<div class="single-product-img">
																			<a href="#">
																				<img src="img/singlepro/a14.jpg" alt="" />
																			</a>
																			<span class="sale-box">
                                                                                <span class="sale">Sale</span>
																			</span>
																			<span class="new-box">
                                                                                <span class="new">New</span>
																			</span>
																		</div>
																	</div>
																	<!-- single-product-end -->
																</div>
																<div class="col-md-8 col-sm-8 col-xs-12">
																	<!-- single-product-start -->
																	<div class="single-product">
																		<div class="single-product-content">
																			<div class="product-title">
																				<h5>
                                                                                    <a href="#">蓝色满天星</a>
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
																				<span class="price">£269.00</span>
																				<span class="old-price">£300.00</span>
																			</div>
																			<p class="product-desc">
																				花语：爱你如繁星闪耀，流转之间，即是永恒，为你甘愿做陪衬！<br /> 花材：蓝色满天星一大扎。搭配紫色满天星和白色满天星组合。
																				<br /> 包装：精美礼盒包装。
																			</p>
																			<div class="product-action">
																				<button class="button btn btn-default add-cart" title="add to cart">加入购物车</button>
																				<a class="add-wishlist" href="#" title="add to wishlist">
																					<i class="fa fa-heart"></i>
																				</a>
																				<a class="quick-view" href="#" title="quick view" data-toggle="modal" data-target="#myModal">
																					<i class="fa fa-search"></i>
																				</a>
																			</div>
																			<div class="availability">
																				<span>In stock</span>
																			</div>
																		</div>
																	</div>
																	<!-- single-product-end -->
																</div>
															</div>
															<div class="col-md-12 col-sm-12 col-xs-12 top-mar">
																<div class="col-md-4 col-sm-4 col-xs-12">
																	<!-- single-product-start -->
																	<div class="single-product">
																		<div class="single-product-img">
																			<a href="#">
																				<img src="img/singlepro/a15.jpg" alt="" />
																			</a>
																			<span class="sale-box">
                                                                                <span class="sale">Sale</span>
																			</span>
																			<span class="new-box">
                                                                                <span class="new">New</span>
																			</span>
																		</div>
																	</div>
																	<!-- single-product-end -->
																</div>
																<div class="col-md-8 col-sm-8 col-xs-12">
																	<!-- single-product-start -->
																	<div class="single-product">
																		<div class="single-product-content">
																			<div class="product-title">
																				<h5>
                                                                                    <a href="#">粉色满天星</a>
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
																				<span class="price">£329.00</span>
																				<span class="old-price">£388.00</span>
																			</div>
																			<p class="product-desc">
																				花语：粉色的梦不做不可，对你的话一定要说！<br /> 花材：一大扎粉色满天星饱满搭配. <br /> 包装：粉色雾面纸韩式包装，蝴蝶结系扎.
																			</p>
																			<div class="product-action">
																				<button class="button btn btn-default add-cart" title="add to cart">加入购物车</button>
																				<a class="add-wishlist" href="#" title="add to wishlist">
																					<i class="fa fa-heart"></i>
																				</a>
																				<a class="quick-view" href="#" title="quick view" data-toggle="modal" data-target="#myModal">
																					<i class="fa fa-search"></i>
																				</a>
																			</div>
																			<div class="availability">
																				<span>In stock</span>
																			</div>
																		</div>
																	</div>
																	<!-- single-product-end -->
																</div>
															</div>
															<div class="col-md-12 col-sm-12 col-xs-12 top-mar">
																<div class="col-md-4 col-sm-4 col-xs-12">
																	<!-- single-product-start -->
																	<div class="single-product">
																		<div class="single-product-img">
																			<a href="#">
																				<img src="img/singlepro/a16.jpg" alt="" />
																			</a>
																			<span class="sale-box">
                                                                                <span class="sale">Sale</span>
																			</span>
																			<span class="new-box">
                                                                                <span class="new">New</span>
																			</span>
																		</div>
																	</div>
																	<!-- single-product-end -->
																</div>
																<div class="col-md-8 col-sm-8 col-xs-12">
																	<!-- single-product-start -->
																	<div class="single-product">
																		<div class="single-product-content">
																			<div class="product-title">
																				<h5>
                                                                                    <a href="#">白色多头香水百合</a>
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
																				<span class="price">£280.00</span>
																				<span class="old-price">£350.00</span>
																			</div>
																			<p class="product-desc">Faded short sleeves t-shirt with high neckline. Soft and stretchy material for a comfortable fit. Accessorize with a straw hat and you're ready for summer!
																			</p>
																			<div class="product-action">
																				<button class="button btn btn-default add-cart" title="add to cart">加入购物车</button>
																				<a class="add-wishlist" href="#" title="add to wishlist">
																					<i class="fa fa-heart"></i>
																				</a>
																				<a class="quick-view" href="#" title="quick view" data-toggle="modal" data-target="#myModal">
																					<i class="fa fa-search"></i>
																				</a>
																			</div>
																			<div class="availability">
																				<span>In stock</span>
																			</div>
																		</div>
																	</div>
																	<!-- single-product-end -->
																</div>
															</div>
															<div class="col-md-12 col-sm-12 col-xs-12 top-mar">
																<div class="col-md-4 col-sm-4 col-xs-12">
																	<!-- single-product-start -->
																	<div class="single-product">
																		<div class="single-product-img">
																			<a href="#">
																				<img src="img/singlepro/a17.png" alt="" />
																			</a>
																			<span class="sale-box">
                                                                                <span class="sale">Sale</span>
																			</span>
																			<span class="new-box">
                                                                                <span class="new">New</span>
																			</span>
																		</div>
																	</div>
																	<!-- single-product-end -->
																</div>
																<div class="col-md-8 col-sm-8 col-xs-12">
																	<!-- single-product-start -->
																	<div class="single-product">
																		<div class="single-product-content">
																			<div class="product-title">
																				<h5>
                                                                                    <a href="#">粉紫色郁金香</a>
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
																				<span class="price">£599.00</span>
																				<span class="old-price">£612.00</span>
																			</div>
																			<p class="product-desc">Faded short sleeves t-shirt with high neckline. Soft and stretchy material for a comfortable fit. Accessorize with a straw hat and you're ready for summer!
																			</p>
																			<div class="product-action">
																				<button class="button btn btn-default add-cart" title="add to cart">加入购物车</button>
																				<a class="add-wishlist" href="#" title="add to wishlist">
																					<i class="fa fa-heart"></i>
																				</a>
																				<a class="quick-view" href="#" title="quick view" data-toggle="modal" data-target="#myModal">
																					<i class="fa fa-search"></i>
																				</a>
																			</div>
																			<div class="availability">
																				<span>In stock</span>
																			</div>
																		</div>
																	</div>
																	<!-- single-product-end -->
																</div>
															</div>
															<div class="col-md-12 col-sm-12 col-xs-12 top-mar">
																<div class="col-md-4 col-sm-4 col-xs-12">
																	<!-- single-product-start -->
																	<div class="single-product">
																		<div class="single-product-img">
																			<a href="#">
																				<img src="img/singlepro/a18.jpg" alt="" />
																			</a>
																			<span class="sale-box">
                                                                                <span class="sale">Sale</span>
																			</span>
																			<span class="new-box">
                                                                                <span class="new">New</span>
																			</span>
																		</div>
																	</div>
																	<!-- single-product-end -->
																</div>
																<div class="col-md-8 col-sm-8 col-xs-12">
																	<!-- single-product-start -->
																	<div class="single-product">
																		<div class="single-product-content">
																			<div class="product-title">
																				<h5>
                                                                                    <a href="#">白色郁金香</a>
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
																				<span class="price">£599.00</span>
																				<span class="old-price">£612.00</span>
																			</div>
																			<p class="product-desc">Faded short sleeves t-shirt with high neckline. Soft and stretchy material for a comfortable fit. Accessorize with a straw hat and you're ready for summer!
																			</p>
																			<div class="product-action">
																				<button class="button btn btn-default add-cart" title="add to cart">加入购物车</button>
																				<a class="add-wishlist" href="#" title="add to wishlist">
																					<i class="fa fa-heart"></i>
																				</a>
																				<a class="quick-view" href="#" title="quick view" data-toggle="modal" data-target="#myModal">
																					<i class="fa fa-search"></i>
																				</a>
																			</div>
																			<div class="availability">
																				<span>In stock</span>
																			</div>
																		</div>
																	</div>
																	<!-- single-product-end -->
																</div>
															</div>
															<div class="col-md-12 col-sm-12 col-xs-12 top-mar">
																<div class="col-md-4 col-sm-4 col-xs-12">
																	<!-- single-product-start -->
																	<div class="single-product">
																		<div class="single-product-img">
																			<a href="#">
																				<img src="img/singlepro/a19.jpg" alt="" />
																			</a>
																			<span class="sale-box">
                                                                                <span class="sale">Sale</span>
																			</span>
																			<span class="new-box">
                                                                                <span class="new">New</span>
																			</span>
																		</div>
																	</div>
																	<!-- single-product-end -->
																</div>
																<div class="col-md-8 col-sm-8 col-xs-12">
																	<!-- single-product-start -->
																	<div class="single-product">
																		<div class="single-product-content">
																			<div class="product-title">
																				<h5>
                                                                                    <a href="#">红色康乃馨</a>
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
																				<span class="price">£499.00</span>
																				<span class="old-price">£550.00</span>
																			</div>
																			<p class="product-desc">Faded short sleeves t-shirt with high neckline. Soft and stretchy material for a comfortable fit. Accessorize with a straw hat and you're ready for summer!
																			</p>
																			<div class="product-action">
																				<button class="button btn btn-default add-cart" title="add to cart">加入购物车</button>
																				<a class="add-wishlist" href="#" title="add to wishlist">
																					<i class="fa fa-heart"></i>
																				</a>
																				<a class="quick-view" href="#" title="quick view" data-toggle="modal" data-target="#myModal">
																					<i class="fa fa-search"></i>
																				</a>
																			</div>
																			<div class="availability">
																				<span>In stock</span>
																			</div>
																		</div>
																	</div>
																	<!-- single-product-end -->
																</div>
															</div>
															<div class="col-md-12 col-sm-12 col-xs-12 top-mar">
																<div class="col-md-4 col-sm-4 col-xs-12">
																	<!-- single-product-start -->
																	<div class="single-product">
																		<div class="single-product-img">
																			<a href="#">
																				<img src="img/singlepro/a20.jpg" alt="" />
																			</a>
																			<span class="sale-box">
                                                                                <span class="sale">Sale</span>
																			</span>
																			<span class="new-box">
                                                                                <span class="new">New</span>
																			</span>
																		</div>
																	</div>
																	<!-- single-product-end -->
																</div>
																<div class="col-md-8 col-sm-8 col-xs-12">
																	<!-- single-product-start -->
																	<div class="single-product">
																		<div class="single-product-content">
																			<div class="product-title">
																				<h5>
                                                                                    <a href="#">紫色桔梗</a>
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
																				<span class="price">£668.00</span>
																				<span class="old-price">£700.00</span>
																			</div>
																			<p class="product-desc">Faded short sleeves t-shirt with high neckline. Soft and stretchy material for a comfortable fit. Accessorize with a straw hat and you're ready for summer!
																			</p>
																			<div class="product-action">
																				<button class="button btn btn-default add-cart" title="add to cart">加入购物车</button>
																				<a class="add-wishlist" href="#" title="add to wishlist">
																					<i class="fa fa-heart"></i>
																				</a>
																				<a class="quick-view" href="#" title="quick view" data-toggle="modal" data-target="#myModal">
																					<i class="fa fa-search"></i>
																				</a>
																			</div>
																			<div class="availability">
																				<span>In stock</span>
																			</div>
																		</div>
																	</div>
																	<!-- single-product-end -->
																</div>
															</div>
															<div class="col-md-12 col-sm-12 col-xs-12 top-mar">
																<div class="col-md-4 col-sm-4 col-xs-12">
																	<!-- single-product-start -->
																	<div class="single-product">
																		<div class="single-product-img">
																			<a href="#">
																				<img src="img/singlepro/a21.jpg" alt="" />
																			</a>
																			<span class="sale-box">
                                                                                <span class="sale">Sale</span>
																			</span>
																			<span class="new-box">
                                                                                <span class="new">New</span>
																			</span>
																		</div>
																	</div>
																	<!-- single-product-end -->
																</div>
																<div class="col-md-8 col-sm-8 col-xs-12">
																	<!-- single-product-start -->
																	<div class="single-product">
																		<div class="single-product-content">
																			<div class="product-title">
																				<h5>
                                                                                    <a href="#">粉色非洲菊</a>
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
																				<span class="price">£235.00</span>
																				<span class="old-price">£300.00</span>
																			</div>
																			<p class="product-desc">Faded short sleeves t-shirt with high neckline. Soft and stretchy material for a comfortable fit. Accessorize with a straw hat and you're ready for summer!
																			</p>
																			<div class="product-action">
																				<button class="button btn btn-default add-cart" title="add to cart">加入购物车</button>
																				<a class="add-wishlist" href="#" title="add to wishlist">
																					<i class="fa fa-heart"></i>
																				</a>
																				<a class="quick-view" href="#" title="quick view" data-toggle="modal" data-target="#myModal">
																					<i class="fa fa-search"></i>
																				</a>
																			</div>
																			<div class="availability">
																				<span>In stock</span>
																			</div>
																		</div>
																	</div>
																	<!-- single-product-end -->
																</div>
															</div>
															<div class="col-md-12 col-sm-12 col-xs-12 top-mar">
																<div class="col-md-4 col-sm-4 col-xs-12">
																	<!-- single-product-start -->
																	<div class="single-product">
																		<div class="single-product-img">
																			<a href="#">
																				<img src="img/singlepro/a22.jpg" alt="" />
																			</a>
																			<span class="sale-box">
                                                                                <span class="sale">Sale</span>
																			</span>
																			<span class="new-box">
                                                                                <span class="new">New</span>
																			</span>
																		</div>
																	</div>
																	<!-- single-product-end -->
																</div>
																<div class="col-md-8 col-sm-8 col-xs-12">
																	<!-- single-product-start -->
																	<div class="single-product">
																		<div class="single-product-content">
																			<div class="product-title">
																				<h5>
                                                                                    <a href="#">绿小菊</a>
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
																				<span class="price">£269.00</span>
																				<span class="old-price">£320.00</span>
																			</div>
																			<p class="product-desc">Faded short sleeves t-shirt with high neckline. Soft and stretchy material for a comfortable fit. Accessorize with a straw hat and you're ready for summer!
																			</p>
																			<div class="product-action">
																				<button class="button btn btn-default add-cart" title="add to cart">加入购物车</button>
																				<a class="add-wishlist" href="#" title="add to wishlist">
																					<i class="fa fa-heart"></i>
																				</a>
																				<a class="quick-view" href="#" title="quick view" data-toggle="modal" data-target="#myModal">
																					<i class="fa fa-search"></i>
																				</a>
																			</div>
																			<div class="availability">
																				<span>In stock</span>
																			</div>
																		</div>
																	</div>
																	<!-- single-product-end -->
																</div>
															</div>
															<div class="col-md-12 col-sm-12 col-xs-12 top-mar">
																<div class="col-md-4 col-sm-4 col-xs-12">
																	<!-- single-product-start -->
																	<div class="single-product">
																		<div class="single-product-img">
																			<a href="#">
																				<img src="img/singlepro/a23.jpg" alt="" />
																			</a>
																			<span class="sale-box">
                                                                                <span class="sale">Sale</span>
																			</span>
																			<span class="new-box">
                                                                                <span class="new">New</span>
																			</span>
																		</div>
																	</div>
																	<!-- single-product-end -->
																</div>
																<div class="col-md-8 col-sm-8 col-xs-12">
																	<!-- single-product-start -->
																	<div class="single-product">
																		<div class="single-product-content">
																			<div class="product-title">
																				<h5>
                                                                                    <a href="#">多头黄百合</a>
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
																				<span class="price">£329.00</span>
																				<span class="old-price">£410.00</span>
																			</div>
																			<p class="product-desc">Faded short sleeves t-shirt with high neckline. Soft and stretchy material for a comfortable fit. Accessorize with a straw hat and you're ready for summer!
																			</p>
																			<div class="product-action">
																				<button class="button btn btn-default add-cart" title="add to cart">加入购物车</button>
																				<a class="add-wishlist" href="#" title="add to wishlist">
																					<i class="fa fa-heart"></i>
																				</a>
																				<a class="quick-view" href="#" title="quick view" data-toggle="modal" data-target="#myModal">
																					<i class="fa fa-search"></i>
																				</a>
																			</div>
																			<div class="availability">
																				<span>In stock</span>
																			</div>
																		</div>
																	</div>
																	<!-- single-product-end -->
																</div>
															</div>
															<div class="col-md-12 col-sm-12 col-xs-12 top-mar">
																<div class="col-md-4 col-sm-4 col-xs-12">
																	<!-- single-product-start -->
																	<div class="single-product">
																		<div class="single-product-img">
																			<a href="#">
																				<img src="img/singlepro/a24.jpg" alt="" />
																			</a>
																			<span class="sale-box">
                                                                                <span class="sale">Sale</span>
																			</span>
																			<span class="new-box">
                                                                                <span class="new">New</span>
																			</span>
																		</div>
																	</div>
																	<!-- single-product-end -->
																</div>
																<div class="col-md-8 col-sm-8 col-xs-12">
																	<!-- single-product-start -->
																	<div class="single-product">
																		<div class="single-product-content">
																			<div class="product-title">
																				<h5>
                                                                                    <a href="#">粉色康乃馨</a>
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
																				<span class="price">£246.00</span>
																				<span class="old-price">£300.00</span>
																			</div>
																			<p class="product-desc">Faded short sleeves t-shirt with high neckline. Soft and stretchy material for a comfortable fit. Accessorize with a straw hat and you're ready for summer!
																			</p>
																			<div class="product-action">
																				<button class="button btn btn-default add-cart" title="add to cart">加入购物车</button>
																				<a class="add-wishlist" href="#" title="add to wishlist">
																					<i class="fa fa-heart"></i>
																				</a>
																				<a class="quick-view" href="#" title="quick view" data-toggle="modal" data-target="#myModal">
																					<i class="fa fa-search"></i>
																				</a>
																			</div>
																			<div class="availability">
																				<span>In stock</span>
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
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- shop-area-end -->
		
		<!-- footer-start -->
		<%@ include file="foot.jsp" %>
		<!-- footer-end -->
		<!-- Modal -->
		<div id="myModal" class="modal fade" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
					</div>
					<div class="modal-body">
						<div class="product-details">
							<div class="container">
								<div class="row">
									<div class="col-md-5 col-xs-12 col-sm-5">
										<div class="picture-tab">
											<ul class="pic-tabs">
												<li class="active">
													<a data-toggle="tab" href="#pic11"><img src="img/pro-tab/a01.jpg" alt="" /></a>
												</li>

											</ul>
											<div class="tab-content">
												<div id="pic11" class="tab-pane fade in active">
													<!-- single-product-start -->
													<div class="single-product">
														<div class="single-product-img">
															<a href="#">
																<img src="img/singlepro/a01.jpg" " />
                                                            </a>
                                                            <span class="sale-box ">
                                                                <span class="sale ">Sale</span>
                                                            </span>
                                                            <span class="new-box ">
                                                                <span class="new ">New</span>
                                                            </span>
                                                        </div>
                                                    </div>
                                                    <!-- single-product-end -->
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    
                                    <div class="col-md-7 col-xs-12 col-sm-7 ">
                                        <div class="product-details-info ">
                                            <h5 class="product-title ">粉色洋桔梗</h5>
                                            <div class="price-box ">
                                                <span class="price ">£359.00</span>
                                                <span class="old-price ">£390.00</span>
                                            </div>
                                            <div class="rating ">
                                                <div class="star star-on "></div>
                                                <div class="star star-on "></div>
                                                <div class="star star-on "></div>
                                                <div class="star star-on "></div>
                                                <div class="star "></div>
                                            </div>
                                            <div class="short-description ">
                                            	<p>花语：洋桔梗是真诚不变的爱，纯洁、无邪、漂亮、感动，富于感情。</p>
                                                <p> 材 料：白色紫罗兰2扎（紫罗兰花期为3-6月，其他月份用白色金鱼花或者白色桔梗替代）、粉色洋桔梗1扎，斑春兰0.5扎（斑春兰如缺货可用尤加利替代）. </p>
                                                <p> 包 装：矮身圆肚玻璃花瓶系丝带.</p>
                                            </div>
                                            <div class="add-cart ">
                                                <p class="quantity cart-plus-minus ">
                                                    <label>数量</label>
                                                    <input type="text " value="1 " />
                                                </p>
                                                <div class="shop-add-cart ">
                                                    <button>加入购物车</button>
                                                </div>
                                            </div>
                                            <div class="widget-icon ">
                                                <a href="# ">
                                                    <i class="fa fa-facebook "></i>
                                                </a>
                                                <a href="# ">
                                                    <i class="fa fa-twitter "></i>
                                                </a>
                                                <a href="# ">
                                                    <i class="fa fa-linkedin "></i>
                                                </a>
                                                <a href="# ">
                                                    <i class="fa fa-google-plus "></i>
                                                </a>
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
        <!-- modal-end -->
        <!-- all js here -->
        <!-- jquery latest version -->
        <script src="js/vendor/jquery-1.12.0.min.js "></script>
        <!-- bootstrap js -->
        <script src="js/bootstrap.min.js "></script>
        <!-- owl.carousel js -->
        <script src="js/owl.carousel.min.js "></script>
        <!-- meanmenu js -->
        <script src="js/jquery.meanmenu.js "></script>
        <!-- countdown js -->
        <script src="js/countdown.js "></script>
        <!-- jquery.nivo.slider.pack js -->
        <script src="js/jquery.nivo.slider.pack.js "></script>
        <!-- jquery-ui.min.js -->
        <script src="js/jquery-ui.min.js "></script>
        <!-- wow js -->
        <script src="js/wow.min.js "></script>
        <!-- plugins js -->
        <script src="js/plugins.js "></script>
        <!-- main js -->
        <script src="js/main.js "></script>
    </body>
</html>