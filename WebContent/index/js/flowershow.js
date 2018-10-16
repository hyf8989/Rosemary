/*
		 定义一个拼接字符串方法（用户页面输出）
		*/
		function displayFlower(arr){
			//每次输出之前先清空子节点。
			$("#gried_view").empty();
			 $.each(arr.data, function(index, obj) {
				 
					$("#gried_view").append('<div class="col-md-4 col-sm-6 col-xs-12 mar-bot">'+
							<!-- single-product-start -->
							'<div class="single-product">'+
								'<div class="single-product-img">'+
									'<a href="/Rosemary/flower.do?op=Gotodetail&flowerId='+obj.flowerId+'" class="flowershow"  > <img  src="'+obj.sPicture+'" alt="'+obj.flowerId+'" />'+
									'</a> <span class="sale-box"> <span class="sale">Sale</span>'+
									'</span> <span class="new-box"> <span class="new">New</span>'+
									'</span>'+
								'</div>'+
								'<div class="single-product-content">'+
									'<div class="product-title">'+
										'<h5>'+
											'<a href="#">'+obj.flowerName+'</a>'+
										'</h5>'+
									'</div>'+
									'<div class="rating">'+
										'<div class="star star-on"></div>'+
										'<div class="star star-on"></div>'+
										'<div class="star star-on"></div>'+
										'<div class="star star-on"></div>'+
										'<div class="star"></div>'+
									'</div>'+
									'<div class="price-box">'+
										'<span class="price">'+obj.price+'</span> <span'+
											' class="old-price">'+(obj.price+100)+'</span>'+
									'</div>'+
									'<div class="product-action">'+
										'<button class="button btn btn-default add-cart"'+
											'title="add to cart">加入购物车</button>'+
										'<a class="add-wishlist" href="#" title="add to wishlist">'+
											'<i class="fa fa-heart"></i>'+
										'</a> '+
									'</div>'+
								'</div>'+
							'</div>'+
							<!-- single-product-end -->
						'</div>');
                        
					
				}); 
		}
		
		 $(function() {
			 var typeId;//初始化花的类别编号。
			 var keyword;//初始化关键词（搜索框内容）
			 var total;//初始化总搜索条数
			 var page;//初始化当前页
			 var pageSize;//初始化每页条数
			
			 
			 
			 
			 /*
				进入页面即调用ajax方法后台查询所有鲜花
				*/ 
			$.get("/Rosemary/flower.do", "op=queryFlowerInfoByPage", function(
					data, status) {
          
				var array = JSON.parse(data);
				total=array.total;
				page=array.page;
				pageSize=array.pageSize;
				displayFlower(array);
				pageshow();
				

			});
			
			//点击图片时，获取图片ID（进入购物界面使用）
			function goDetail(){
				$(document).on("click",".flowershow",function(){
					
					console.log("我是你点击鲜花的id"+$(this).find('img').attr('alt'));//测试输出鲜花ID
					location.href="https://www.baidu.com";
					
					
				});
			}
			
			//输入框按下时的监听事件（进行模糊查询）
		     $("#keyword").keyup(function(){
		    	keyword=$(this).val(); 
		    	$.get("/Rosemary/flower.do", "op=queryFlowerInfoByPage&keyword="+keyword, function(
						data, status) {
	          
					var array = JSON.parse(data);
					total=array.total;
					page=array.page;
					pageSize=array.pageSize;
					
					displayFlower(array);
					pageshow();

				});
		    	 
		     });
			//左侧花的类别标签点击事件（用于模糊查询）
			$(".flowerType").click(function(){
				 typeId=$(this).attr("id");
				 
		    console.log("我是花类别的ID："+typeId);//测试输出类别ID	
		    $.get("/Rosemary/flower.do", "op=queryFlowerInfoByPage&typeId="+typeId, function(
					data, status) {
          
				var array = JSON.parse(data);
				total=array.total;
				page=array.page;
				pageSize=array.pageSize;
				console.log('我是你点中花类别ID所查询出来对应的鲜花数据：'+array);
				//调用拼接方法
				 displayFlower(array); 
				pageshow();
				

			});
		   
			});
			//下拉框选中事件（模糊查询）
			 $("#sort").change(function(){
				 var sort="";//初始化排序方式关键词
				 var sortType="desc";//初始化排序方式（降序还是升序）
				 var sortRoot=$("#sort option:selected").text();//获取选中的下拉框的值
				 var selectedIndex=$("#sort ").get(0).selectedIndex;//获取选中的下拉框的索引
				 
				 //如果索引大于1，则为按花名排序
				 if(selectedIndex>1){
					 sort="flowerName";
					 if(selectedIndex==2){
						 //大于1且等于2，则按花名升序排序
						 sortType="asc";
					 }
					 
				 }
				 else{
					 sort="price"; 
					 if(selectedIndex==0){
						 sortType="asc";
					 }
				 }
				 console.log("下拉框选中的值是："+sortRoot+",索引是："+selectedIndex+",排序是根据："+sort+",排序方式是："+sortType+",选中的类别编号是："+typeId);//测试输出
				//调用ajax传参数，实现模糊查询（排序）
				 if(typeof(typeId)==true){//如果左侧类别标签被点击的情况下，我们就传排序方式和类别编号过去服务端
					 
					 $.get("/Rosemary/flower.do", "op=queryFlowerInfoByPage&sort="+sort+"&sortType="+sortType+"&typeId="+typeId, function(
								data, status) {
			          
							var array = JSON.parse(data);
							total=array.total;
							page=array.page;
							pageSize=array.pageSize;
							console.log('我是根据你选中下拉框的值排序chulai'+array);
							//调用拼接方法
							 displayFlower(array); 
							 pageshow();
							

						});
				 }
				 else{//如果左侧类别标签未被点击的情况下，我们就判断输入框是不是有值。
					 if(typeof(keyword)==true){//有值就传值进行模糊搜索
						 $.get("/Rosemary/flower.do", "op=queryFlowerInfoByPage&sort="+sort+"&sortType="+sortType+"&keyword="+keyword, function(
									data, status) {
				          
								var array = JSON.parse(data);
								total=array.total;
								page=array.page;
								pageSize=array.pageSize;
								console.log('我是根据你选中下拉框的值排序chulai'+array);
								//调用拼接方法
								 displayFlower(array); 
								pageshow();

							});
					 }
					 else{//没有就认为用户未输入关键字，也未选中类别标签。 则默认是对所有鲜花进行我们的排序操作
						 $.get("/Rosemary/flower.do", "op=queryFlowerInfoByPage&sort="+sort+"&sortType="+sortType, function(
									data, status) {
				          
								var array = JSON.parse(data);
								total=array.total;
								page=array.page;
								pageSize=array.pageSize;
								console.log('我是根据你选中下拉框的值排序chulai'+array);
								//调用拼接方法
								 displayFlower(array); 
								 pageshow();

							});
						 
					 }
					 
					 
				 }
				 
					 
					 
				
				 
				
				 
			 });
			//分页开始
			function pageshow(){
				
				 layui.use(['laypage', 'layer'], function(){
					  var laypage = layui.laypage
					  ,layer = layui.layer;
					  
					//完整功能 
					  laypage.render({
					    elem: 'pageDiv'
					    ,count: total,
					    curr:page
					   ,limit:pageSize
					    ,layout: ['count', 'prev', 'page','limit','next', 'skip']
					    ,jump: function(obj,first){
					      console.log(obj);
					      console.log(first);
					    //首次不执行
					      if(!first){
					        //do something
					        if(typeof(keyword)==true){
					        	$.get("/Rosemary/flower.do", "op=queryFlowerInfoByPage&page="+obj.curr+"&pageSize="+obj.limit+"&keyword="+keyword, function(
										data, status) {
					          
									var array = JSON.parse(data);
									
									displayFlower(array);
									
									

								});
					        }
					        else{
					        	$.get("/Rosemary/flower.do", "op=queryFlowerInfoByPage&page="+obj.curr+"&pageSize="+obj.limit, function(
										data, status) {
					          
									var array = JSON.parse(data);
									
									displayFlower(array);
									
									

								});
					        	
					        }
					    	  
					      }
					    }
					  });
					 
					});
			}
		
			//分页结束
		
			
		}); 