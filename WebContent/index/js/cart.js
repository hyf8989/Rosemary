 $(function(){
			  //弹出层的使用
			  layui.use('layer', function() {
					var layer = layui.layer;

				});
			  $(".check-out").click(function(){
				 location.href="buy.jsp"; 
			  });
			  $(".removeCartItem").click(function(){
				  //获取点击所在行的索引
				  var trIndex=$(this).parents("tr").index();
				
				  var flowerId=$(this).parents("tr").find("td").eq(0).attr("id");//获取所点击的购物项的鲜花编号
				  //发送ajax请求，移除购物项
			 	  $.get("/Rosemary/cart.do","op=removeCartItem&flowerId="+flowerId,function(data,status){
					  if(data=="好东西还很多，客官好好逛逛"){
						  layer.msg('<span style="color:black;">'+data+'</span>', {
								icon:6,
								time: 2000
							}); 
						  
				//在页面移除选中的一行(淡出)
			    $("table").find("tr").eq(trIndex+1).fadeTo("slow", 0.01, function(){//fade
			        $(this).slideUp("slow", function() {//slide up
			            $(this).remove();//then remove from the DOM
			            window.location.reload();//刷新当前页面
			          });
			        });;
					//删除元素，淡出过程
					
					  }
					  else{
						  layer.msg('<span style="color:black;">系统繁忙，请您稍后再试</span>', {
								icon:5,
								time: 2000
							});  
						  
						  
					  }
					  
					  
				  }); 
				  
				  
			  });
			  //点击增加数量图标时的事件
			  $(".plus").click(function(){
				  //获取点击按钮时，对应商品的原有数量
				 var oldQuantity= $(this).parents("td").find("input").val();
				  var newQuantity=parseInt(oldQuantity)+1;
				//获取所在行的鲜花编号
				   var flowerId=$(this).parents("tr").find("td").eq(0).attr("id");
			//向购物车服务端发送ajax请求
				  $.get("/Rosemary/cart.do","op=updateQuantity&newQuantity="+newQuantity+"&flowerId="+flowerId,function(data,status){
					  if(data=="操作成功"){
						  window.location.reload();//刷新当前页面
						  
					  }
					  
					  
				  }) ;
				
				 
				  
			  });
			  
			  
			  //点击减号图标时的事件操作
			  $(".sub").click(function(){
				  //获取点击按钮时，对应商品的原有数量
					 var oldQuantity= $(this).parents("td").find("input").val();
					//设置新的数量 
				  var newQuantity=oldQuantity-1;
				//获取所在行的鲜花编号
				   var flowerId=$(this).parents("tr").find("td").eq(0).attr("id");
				   $.get("/Rosemary/cart.do","op=updateQuantity&newQuantity="+newQuantity+"&flowerId="+flowerId,function(data,status){
						  if(data=="操作成功"){
							  window.location.reload();//刷新当前页面
							  
						  }
						  
						  
					  }) ; 
				  
			  });
			  
			  
		  });