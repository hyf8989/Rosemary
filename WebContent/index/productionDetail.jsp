<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="utf-8">
		<title>productionDetail</title>
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
		<link rel="stylesheet" type="text/css" href=""/>
		<!-- Custom CSS -->
		<link href="style.css" rel="stylesheet">
		
            <style type="text/css">
             #messageContent{
             	display: none;
             }	
            </style>
	</head>

	<body>
		<!-- header-start -->
		<%@ include file="headhav.jsp" %>
		<!-- header-end -->
		<div class="container">

			<div class="row">

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
				 <div class="container">
				 <div class="row">
				 	<div style="margin-top: 50px;">
				 		<div class="col-md-3" >
				 	<img src="img/banner/粉百合.jpg"/>
				 </div>	
				 <div class="col-md-9">
				 	<h3> 我是粉百合，点我购买吧</h3>
				 
				 
				   	<div style="background-color:pink;width:300px;height: 50px;">
				   	 <span>价格：</span><strong>￥	200.00</strong>
				 	
				   		
				   	
				  
				 	
				 </div>
				 		
				 	</div>
				 
				 	
				 </div>	
				 	
				 </div>
				 <!-- 评论产品参数面板开始 -->
				 <div class="row ">
				  <div class="col-md-12" style="margin-top: 20px;">
				  	<ul>
				  	<li>
				  	<button class="layui-btn layui-btn-primary" id="getMessage">
				  		查看留言
				  	</button>
				  		
				  	</li>	
				  		
				  	</ul>
				  </div>	
				 	
				 </div>
				 
				 <!-- 评论产品参数面板结束 -->
				 <!-- 面板的显示开始-->
				 <div id="messageContent">
				 	 <div class="row">
				 	
				 	
					<div style="clear: both;" class="col-md-12">
						<ul>
						
						<div style="padding-top: 10px;padding-left:10px;float: left;">
							
							<li><img src="img/blog/3.jpg" / style="width: 100px;height: 100px;"></li>&nbsp;&nbsp;
						</div>
						<div style="padding-top: 10px;padding-left:10px;float: left;">
							
							
							
							<li>首先要表扬的是客服，超级耐心，服务态度很好，对我提的小要求都给予满足。<br />不能及时送达，会耽误事。最后要表扬的是花的质量、品相出乎意料的好。 </li>
							
							<li><img src="img/banner/粉百合.jpg" alt="" width="50px;" height="10px" />
							<img src="img/banner/粉百合.jpg" alt="" width="50px;" height="10px" />
							<div style="margin-left: 80%;">
							
							<a href="">查看回复</a>&nbsp;
							<a href="">评论</a>	
							</div>
							</li>
							<br />
							<li>下单时间：2018.10.09 12:36:22</li>

						</div>
						</ul>
					</div>
				
				 </div>
				  	 <div class="row">
				 	
				 	
					<div style="clear: both;" class="col-md-12">
						<ul>
						
						<div style="padding-top: 10px;padding-left:10px;float: left;">
							
							<li><img src="img/blog/3.jpg" / style="width: 100px;height: 100px;"></li>&nbsp;&nbsp;
						</div>
						<div style="padding-top: 10px;padding-left:10px;float: left;">
							
							
							
							<li>首先要表扬的是客服，超级耐心，服务态度很好，对我提的小要求都给予满足。<br />不能及时送达，会耽误事。最后要表扬的是花的质量、品相出乎意料的好。 </li>
							
							<li><img src="img/banner/粉百合.jpg" alt="" width="50px;" height="10px" />
							<img src="img/banner/粉百合.jpg" alt="" width="50px;" height="10px" />
							<div style="margin-left: 80%;">
							
							<a href="">查看回复</a>&nbsp;
							<a href="">评论</a>	
							</div>
							</li>
							<br />
							<li>下单时间：2018.10.09 12:36:22</li>

						</div>
						</ul>
					</div>
				
				 </div>
				  	 	 <div class="row">
				 	
				 	
					<div style="clear: both;" class="col-md-12">
						<ul>
						
						<div style="padding-top: 10px;padding-left:10px;float: left;">
							
							<li><img src="img/blog/3.jpg" / style="width: 100px;height: 100px;"></li>&nbsp;&nbsp;
						</div>
						<div style="padding-top: 10px;padding-left:10px;float: left;">
							
							
							
							<li>首先要表扬的是客服，超级耐心，服务态度很好，对我提的小要求都给予满足。<br />不能及时送达，会耽误事。最后要表扬的是花的质量、品相出乎意料的好。 </li>
							
							<li><img src="img/banner/粉百合.jpg" alt="" width="50px;" height="10px" />
							<img src="img/banner/粉百合.jpg" alt="" width="50px;" height="10px" />
							<div style="margin-left: 80%;">
							
							<a href="">查看回复</a>&nbsp;
							<a href="">评论</a>	
							</div>
							</li>
							<br />
							<li>下单时间：2018.10.09 12:36:22</li>

						</div>
						</ul>
					</div>
				
				 </div>
				 </div>
				
				 <!-- 面板的显示结束-->
					</div>
				</div>
           
			</div>
			 <!-- footer-start -->
		<%@ include file="foot.jsp" %>
		<!-- footer-end -->
		</div>
    <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
    <script type="text/javascript">
      $(function(){
      	$("#getMessage").click(function(){
      		$("#messageContent").slideToggle("slow");
      		
      	});
      	
      	
      });
    </script>
	</body>

</html>