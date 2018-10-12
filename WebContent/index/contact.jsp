<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="utf-8">
		<title>Contact</title>
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

	<body class="contact">

		<!-- header-start -->
		<%@ include file="headhav.jsp" %>
		<!-- header-end -->
		<!-- heading-banner-start -->
		<div class="heading-banner contact-banner">
			<div class="container">
				<div class="row">
					<div class="col-md-12 col-xs-12">
						<div class="breadcrumb">
							<a title="Return to Home" href="index.html">
								<i class="icon-home"></i>
							</a>
							<span class="navigation-pipe">></span>
							<span class="navigation-page">
                                Contact
                            </span>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- heading-banner-end -->
		<!-- contact-area-start -->
		<div class="contact-area">
			<div class="container">
				<div class="row">
					<div class="col-md-8 col-sm-8 col-xs-12">
						<div class="contact-form wow fadeIn" data-wow-duration=".5s" data-wow-delay=".5s">
							<h3>
                                <i class="fa fa-comment-o"></i>
                                Leave a Message
                            </h3>
							<div class="row">
								<form action="mail.php" method="post">
									<div class="col-md-6 col-sm-6 col-xs-12">
										<input type="text" placeholder="Name (required)" />
									</div>
									<div class="col-md-6 col-sm-6 col-xs-12">
										<input type="email" placeholder="Email (required)" />
									</div>
									<div class="col-md-12 col-sm-12 col-xs-12">
										<input type="text" placeholder="Subject" />
									</div>
									<div class="col-md-12 col-sm-12 col-xs-12">
										<textarea placeholder="Message" id="message" cols="30" rows="10"></textarea>
										<input type="submit" value="Submit Form" />
									</div>
								</form>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-4 col-xs-12">
						<div class="contact-info wow fadeIn" data-wow-duration=".5s" data-wow-delay=".5s">
							<h3>
                                <i class="fa fa-newspaper-o"></i>
                                leave a message
                            </h3>
							<ul>
								<li>
									<i class="fa fa-location-arrow"></i>
									<span>28 Green Tower, Street Name,</span>
									<span>New York City, USA</span>
								</li>
								<li>
									<i class="fa fa-mobile"></i>
									<span>+880 1234 123456</span>
									<span>+880 1234 123456</span>
								</li>
								<li>
									<i class="fa fa-envelope-o"></i>
									<span>admin@admin.com</span>
									<span>admin@admin.com</span>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
		<!-- contact-area-end -->
		<!-- map-aera-start -->
		<div class="map-area">
			<div class="gmap wow fadeIn" data-wow-duration=".5s" data-wow-delay=".5s">
				<div id="googleMap"></div>
			</div>
		</div>
		<!-- map-aera-end -->
		
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
													<a data-toggle="tab" href="#pic11"><img src="img/pro-tab/1.jpg" alt="" /></a>
												</li>
												<li>
													<a data-toggle="tab" href="#pic12"><img src="img/pro-tab/2.jpg" alt="" /></a>
												</li>
												<li>
													<a data-toggle="tab" href="#pic13"><img src="img/pro-tab/3.jpg" alt="" /></a>
												</li>
												<li>
													<a data-toggle="tab" href="#pic14"><img src="img/pro-tab/4.jpg" alt="" /></a>
												</li>
											</ul>
											<div class="tab-content">
												<div id="pic11" class="tab-pane fade in active">
													<!-- single-product-start -->
													<div class="single-product">
														<div class="single-product-img">
															<a href="#">
																<img src="img/singlepro/21.jpg" alt="" />
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
												<div id="pic12" class="tab-pane fade">
													<!-- single-product-start -->
													<div class="single-product">
														<div class="single-product-img">
															<a href="#">
																<img src="img/singlepro/22.jpg" alt="" />
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
												<div id="pic13" class="tab-pane fade">
													<!-- single-product-start -->
													<div class="single-product">
														<div class="single-product-img">
															<a href="#">
																<img src="img/singlepro/23.jpg" alt="" />
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
												<div id="pic14" class="tab-pane fade">
													<!-- single-product-start -->
													<div class="single-product">
														<div class="single-product-img">
															<a href="#">
																<img src="img/singlepro/24.jpg" alt="" />
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
											</div>
										</div>
									</div>
									<div class="col-md-7 col-xs-12 col-sm-7">
										<div class="product-details-info">
											<h5 class="product-title">粉色洋桔梗</h5>
											<div class="price-box">
												<span class="price">£359.00</span>
												<span class="old-price">£390.00</span>
											</div>
											<div class="rating">
												<div class="star star-on"></div>
												<div class="star star-on"></div>
												<div class="star star-on"></div>
												<div class="star star-on"></div>
												<div class="star"></div>
											</div>
											<div class="short-description">
												<p>花语：洋桔梗最主要的花语就是真诚不变的爱，纯洁、无邪、漂亮、感动，富于感情。</p>
												<p>材 料：白色紫罗兰2扎（紫罗兰花期为3-6月，其他月份用白色金鱼花或者白色桔梗替代）、粉色洋桔梗1扎，斑春兰0.5扎（斑春兰如缺货可用尤加利替代）。 包 装：矮身圆肚玻璃花瓶系丝带.
												</p>
											</div>
											<div class="add-cart">
												<p class="quantity cart-plus-minus">
													<label>Quantity</label>
													<input type="text" value="1" />
												</p>
												<div class="shop-add-cart">
													<button>add to cart</button>
												</div>
											</div>
											<div class="widget-icon">
												<a href="#">
													<i class="fa fa-facebook"></i>
												</a>
												<a href="#">
													<i class="fa fa-twitter"></i>
												</a>
												<a href="#">
													<i class="fa fa-linkedin"></i>
												</a>
												<a href="#">
													<i class="fa fa-google-plus"></i>
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
		<!-- Google Map js -->
		<script src="https://maps.googleapis.com/maps/api/js"></script>
		<script>
			function initialize() {
				var mapOptions = {
					zoom: 15,
					scrollwheel: false,
					center: new google.maps.LatLng(23.719876, 90.421717)
				};

				var map = new google.maps.Map(document.getElementById('googleMap'),
					mapOptions);

				var marker = new google.maps.Marker({
					position: map.getCenter(),
					animation: google.maps.Animation.BOUNCE,
					icon: 'img/bg/maplock.png',
					map: map
				});

			}

			google.maps.event.addDomListener(window, 'load', initialize);
		</script>
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
	</body>

</html>