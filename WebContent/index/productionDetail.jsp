<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
		<link href="layui/css/layui.css" rel="stylesheet">
		
            <style type="text/css">
             #messageContent{
             	
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
				 		<div class="col-md-3" style="height:350px;" >
				 	<img src="${sessionScope.flower.bPicture }"/>
				 </div>	
				 <div class="col-md-9">
				 	<h3> ${sessionScope.flower.flowerName }</h3>
				 
				 
				   	<div style="background-color:rgb(240,239,239);width:300px;height: 50px;margin-top:10px;">
				   	 <span>价格：</span><strong style="color:red;font-size:20px;line-height:50px;">￥	${sessionScope.flower.price}</strong>
				 	<br/><br/>  
				 	<span>数量：</span><input id="quantity" value="1" type="number" name="points" min="1" max="${sessionScope.flower.stock }" />
				   		<br/><br/><br/><br/>
				   	<div style="margin-top:50px;"><button type="button" id="addToCart" class="layui-btn layui-btn-lg">加入购物车</button>
				   	   <button type="button" id="" class="layui-btn layui-btn-lg ">购买</button>
				   	</div>
				   
				  
				 	
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
    <script type="text/javascript" src="layui/layui.js">
			
		</script>
    <script type="text/javascript">
    
    
      $(function(){
    	//弹出层的使用
  		 layui.use('layer', function() {
  				var layer = layui.layer;

  			});
    	  //点击加入购物车时传递鲜花编号参数,进入服务端
    	  $("#addToCart").click(function(){
    		  var quantity=$("#quantity").val();//获取购买商品数量
    		  
    		  var flowerId=${sessionScope.flower.flowerId};//获取鲜花编号
    		   //发送ajax请求到购物车服务层
    		  $.get("/Rosemary/cart.do","op=addToCart&flowerId="+flowerId+"&quantity="+quantity,function(data,status){
    			  layer.msg('<span style="color:black;">'+data+'</span>', {
  					icon:6,
  					time: 2000
  				});
    			 
    		  });
    		 
    		  
    	  }); 
    	
    	  
      	//点击查看留言事件
    	  $("#getMessage").click(function(){
      		$("#messageContent").slideToggle("slow");
      		
      	});
      	$("#quantity").change(function(){
      		var numberTest=/^[0-9]*$/;//限制数量只能是数字输入
      		
      		if(numberTest.test($(this).val())==false){//如果输入不是数字，则消息提示，并且将文本框默认值设置为1
      			layer.msg('<span style="color:black;">数量只能输入数字哦！</span>', {
					icon:4,
					time: 1000
				});
      			$(this).val("1");
      			
      		}
      		else{//如果输入的数字大于库存，则消息提示，并且将文本框默认值设为1
      			if($(this).val()>100){
      				layer.msg('<span style="color:black;">您这个数量有点多哈，本店暂时库存不足</span>', {
    					icon:5,
    					time: 3000
    				}); 
          			$(this).val("1");
      			}
      			
      		}
      		
      	}); 
      	
      	
      });
    </script>
	</body>

</html>