<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<title>flowerAdd</title>
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
<link rel="stylesheet"
	href="https://cdn.bootcss.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<!-- Custom CSS -->
<link rel="stylesheet" type="text/css" href="layui/css/layui.css" />
<link href="css/style.css" rel='stylesheet' type='text/css' />

<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- jQuery -->
<script src="js/jquery-2.1.4.min.js"></script>

<!-- //jQuery -->
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
						class="fa fa-angle-right"></i>商品管理<i class="fa fa-angle-right"></i>商品发布</li>
				</ol>
				<div class="agile3-grids">

					<div class="grid_3 grid_4 w3_agileits_icons_page">
						<div class="icons">
							<h2 class="agileits-icons-title">商品发布界面</h2>
							<br />
							<br />
							<form action="" style="margin-bottom: 40%;">
								<div class="form-group">
									<label for="exampleInputFlowerName">商品名称：</label> <input
										type="text" class="form-control" id="flowerName" name="flowerName"
										aria-describedby="emailHelp" placeholder="请输入花名">
								</div>
								<div class="form-group">
									<label for="exampleInputPrice">商品价格:</label> <input type="text"
										class="form-control" id="price" name="price"
										placeholder="请输入价格">
								</div>
								<div class="form-group">
									<label for="exampleInputWords">商品寓意:</label> <input type="text"
										class="form-control" id="words" name="words"
										placeholder="请输花的寓意">
								</div>
								<div class="form-group">
									<label for="exampleInputDescription">商品描述:</label> <input
										type="text" class="form-control" id="description" name="description"
										placeholder="请输花的描述">
								</div>
								<div class="form-group">
									<label for="exampleInputWords">商品小图:</label>
									<!-- <input type="text" class="form-control" id="exampleInputWords" placeholder="请输花的寓意"> -->
									<img src="" width="150px" height="150px" id="img1" /> <br /> 
									<input type="file" name="sPicture" id="sPicture" accept="image/jpeg" />
									<p id="demoText"></p>
								</div>
								<div class="form-group">
									<label for="exampleInputWords">商品大图:</label>
									<!-- <input type="text" class="form-control" id="exampleInputWords" placeholder="请输花的寓意"> -->
									<img src="" width="150px" height="150px" id="img2" /> <br />
									 <input type="file" name="bPicture" id="bPicture" accept="image/jpeg" />
								</div>
								<div class="form-group">
									<label for="exampleInputDescription">所属类型:</label>
									<!-- 需要选择类型 -->
									<select class="form-control" id="typeId" name="typeId"
										style="height: 35px">
									</select>
								</div>

								<script type="text/javascript">
									//当file发生改变的时候onchange
									/*将用户选择的图片 赋值给img对象*/
									document.getElementById("sPicture").onchange = function fun() {
										document.getElementById("img1").src = URL
												.createObjectURL(this.files[0]);
									}
								</script>

								<script type="text/javascript">
									//当file发生改变的时候onchange
									/*将用户选择的图片 赋值给img对象*/
									document.getElementById("bPicture").onchange = function fun() {
										document.getElementById("img2").src = URL
												.createObjectURL(this.files[0]);
									}
								</script>
								<center>
									<!-- <div class="form-check">
										<input type="checkbox" class="form-check-input"
											id="exampleCheck1"> <label class="form-check-label"
											for="exampleCheck1" style="margin-top: 40px;">确定添加</label>
									</div> -->
									<button type="button" class="btn btn-primary" id="publishGoods" name="publishGoods">商品发布</button>
								</center>
							</form>

						</div>

					</div>

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
	<script type="text/javascript" src="layui/layui.js" charset="utf-8"></script>

	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.min.js"></script>
		<!-- 所属类型 -->
	<script type="text/javascript">
		$(function() {
			$.get("/Rosemary/type.do?op=load", function(data) {
				//得到的data是一个string类型满足 json格式
				var arr = JSON.parse(data);
				console.log(arr);
				$.each(arr, function(i, t) {
					$("#typeId").append(
							"<option value="+t.typeId+">" + t.typeName + "</option>");
				});
			});
		});
	</script>
	
	<script type="text/javascript">
	 //图片上传
    var uploadInst = upload.render({
    elem: '#sPicture'
    ,url: '${pageContext.request.contextPath }/UpLoadPhotoServlet'
    ,before: function(obj){
      //预读本地文件示例，不支持ie8
      obj.preview(function(index, file, result){
        $('#img1').attr('src', result); //图片链接（base64）
      });
    }
    ,done: function(res){
      //如果上传失败
      if(res.code <1){
        return layer.msg('上传失败');
      }else{
    	  layer.msg('上传成功');
    	var licencePath=eval(res).data.path;
    	$("#logo-value").attr("value",licencePath);
    //	console.log(licencePath);
      }
      //上传成功
    }
    ,error: function(){
      //演示失败状态，并实现重传
      var demoText = $('#demoText');
      demoText.html('<span style="color: #FF5722;">上传失败</span> <a class="layui-btn layui-btn-xs demo-reload">重试</a>');
      demoText.find('.demo-reload').on('click', function(){
        uploadInst.upload();
      });
    }
  });
  </script>
	<!-- 新品发布按钮事件 -->
	<script type="text/javascript">
		layui.use('layer', function() {
			var layer = layui.layer;
		});
		$("#publishGoods").click(function() {
			alert(123);
			//获取输入的信息
			var flowerName = $("#flowerName").val();
			var price = $("#price").val();
			var words = $("#words").val();
			var description = $("#description").val();
			var sPicture = $("#sPicture").val();
			var bPicture = $("#bPicture").val();
			var typeId = $("#typeId").val();

			if(msg="新品发布成功"){			
			layer.open({
				title : "友情提醒？",
				skin : "layui-layer-molv",
				content : "<span>确定上传新商品吗？</span>",
				anim : 0,
				btn : [ '确定', '取消' ],
				yes : function() {
					$.get(
							"/Rosemary/flower.do","op=insertFlower&flowerName="+ flowerName
									+ "&price="+ price
									+ "&words="+ words
									+ "&description="+ description
									+ "&sPicture="+ sPicture
									+ "&wordbPictures="+ bPicture
									+ "&typeId="+ typeId,
							function(data,status) {
								msg = data;
								layer.msg('发布成功',{
													icon : 1,
													time : 2000
									});
							});

			layer.closeAll();
			setTimeout(function(){
				window.location.reload();
			},2000);
			
		},
				btn2 : function(index, layero) {
					layer.close();
				}
			});
			}
		});
		
	</script>
	

	<!-- /Bootstrap Core JavaScript -->

</body>

</html>