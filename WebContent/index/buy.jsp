<%@page import="java.util.logging.SimpleFormatter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
      <%@ page import="java.util.*"%>
      <%@ page import="java.text.*" %>
<%@ page import="com.ros.service_impl.*"%>
<%@ page import="com.ros.entity.*"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>


	<head>
		<meta charset="UTF-8">
		<title>确认订单</title>
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
		<link href="layui/css/layui.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="layui/css/layui.css" />
		<script type="text/javascript" src="layui/layui.js"></script>
		<script src="http://api.map.baidu.com/api?v=1.4" type="text/javascript"></script><!-- 百度地图API，用于判断用户收货地址 -->
		<style type="text/css">
			.row1 {
				
				margin-bottom: 10px;
			}
			
		
                .advice{
                    height: 12px;
                    width: 12px;
                    display: inline-block;
                    background-image: url('https://caiyunupload.b0.upaiyun.com/newweb/imgs/icon-unchecked.png');
                    background-repeat: no-repeat;
                    background-position: center;
                    vertical-align: middle;
                    margin-top: -4px;
                }
                input[type="radio"]:checked + .advice{
                    background-image: url('https://caiyunupload.b0.upaiyun.com/newweb/imgs/icon-checked.png');
                }
                #container{
                display:none;
                }
                #postage{
                display:none;
                }
         
			
		</style>
	</head>

	<body>

		<!-- header-start -->
		<%@ include file="headhav.jsp" %>
		<!-- header-end --> 

		<div class="container"> 
		<div style="margin-top:10px;"><h3 style="float:left;s">确认收货信息</h3>
		<button class="layui-btn layui-btn-radius addressAdd" style="margin-left:10px;" type="button" >新增收货地址</button>
		<h4 style="color:red;clear:both;">商铺定位（福建厦门）</h4>
		
		
		</div>
	
		<hr/> 
		
		<div style="boder:solid #ccffff;clear:both;">
		
		 <label>
		<!-- 根据当前用户编号查询出用户所有收货地址 -->
		 
		  
		  <select id="addressConfirm">
		   <option selected="selected">请选择收货地址</option>
		  <c:forEach items="${sessionScope.addressList }" var="address">
		 
		  <option id="${address.receiverPhone}" class="${ address.receiverName}">${address.receiverProvince}${address.receiverCity }${address.receiverDistrict }${address.addressInfo }</option> 
		  </c:forEach>
		  
		  
		  </select>
		  <span style="color:black;font-size:15px;" id="receiverName"></span>
		  <span style="color:black;font-size:15px;" id="receiverPhone"></span>
		  
               
               
                
            
               
            </label>
            

 <input type="button" id="addressConfirmFinal" value="确定" class="layui-btn layui-btn-radius layui-btn-danger" style="margin-left:40%;"/>
  <input type="button" id="addressConfirmFinal2" value="计算运费" class="layui-btn layui-btn-radius layui-btn-danger" style="margin-left:20px;"/>
<span>运费：</span><span id="postage" style="color:black;font-size:15px;margin-left:20px;"></span>
<div id="container" ></div>
            </div>
            
		<div>
		  
		</div>
		
		<div style="margin-top:20px;">
		<div><h3>确认订单信息</h3>
		
		<hr/>
		</div>
		<div style="margin-top:20px;margin-top:30px;" >
		<h3 style="color:black;">选择支付方式</h3><br/>
		 <input type="radio" value="支付宝" name="pay"/>支付宝&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		 <input type="radio" value="微信" name="pay"/>微信
		 <br/></br>
		</div>
		<%
		//生成随机订单号
		Date date =new Date();
		 SimpleDateFormat aDate=new SimpleDateFormat("yyyy");
		 
		String str="0123456789";
		
		
		StringBuilder sb1=new StringBuilder(aDate.format(date));
		StringBuilder sb=new StringBuilder(4);
		for(int i=0;i<4;i++)
		{
		char ch=str.charAt(new Random().nextInt(str.length()));
		
		sb.append(ch);}
		sb1.append(sb);
		session.setAttribute("orderId", sb1);
		
		%>
		<!-- 获取购物车中所有商品的数量总和 -->
		<%
		  int quantity=0;
		 Cart cart=(Cart)session.getAttribute("cart");
		 Collection<CartItem> item=cart.getCartItems();
		 for (CartItem cartItem : item) {
				quantity+=cartItem.getQuantity();
			}
		%>
		<table class="layui-table" lay-skin="row">
    <thead>
    <tr>
      
      <th>订单编号</th>
      <th>商品总数</th>
      <th>送货人</th>
      
      <th>总额</th>
      
    </tr> 
  </thead>
  <tbody>
    <tr>
      
      <td rowspan=5>${sessionScope.orderId}</td>
         
      <td><%=quantity %></td>  
      <td rowspan=5>小黄</td>
      
      <td rowspan=5>￥：${sessionScope.cart.totalPrice }</td>
    </tr>
    <tr>
      
  
    </tr>
  </tbody>
</table>
<table class="layui-table" lay-skin="row">
<tbody>
    <tr>
      <td  rowspan=4>备注信息：<input type="text" style="width:100px;"/></td>
      <td >配送方式：(默认圆通快递)</td>
     
    </tr>
    <tr>
     <td >发货时间：（商家接到下单会尽快处理）</td>
    </tr>
    <tr>
     <td id="payment">总费用（包含运费）：<span></span></td>
    </tr>
    <tr>
     <td ><button class="layui-btn layui-btn-radius order-submit">提交订单</button>
     
     <button class="layui-btn layui-btn-radius order-cancel">取消订单</button>
     </td>
    </tr>
  </tbody>
</table>

		
		
		</div>
		
</div>
	</body>
	 <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
	 <script type="text/javascript" src="layui/layui.js">
			
		</script> 
	 <script>
	 var  postage=0;//初始化运费等于0
	 var distance=0;//默认距离为0
	 var msg="";
	 $(function(){
		 //弹出层的使用
		 layui.use('layer', function() {
				var layer = layui.layer;

			});
		 
		
		 
		 var map = new BMap.Map("container");        //在container容器中创建一个地图,参数container为div的id属性;

		    var point = new BMap.Point(118.183297,24.489036
		);    //创建点坐标(默认在厦门软件园)

		    map.centerAndZoom(point, 14);                //初始化地图，设置中心点坐标和地图级别

		    map.enableScrollWheelZoom();                //激活滚轮调整大小功能

		    map.addControl(new BMap.NavigationControl());    //添加控件：缩放地图的控件，默认在左上角；

		    map.addControl(new BMap.MapTypeControl());        //添加控件：地图类型控件，默认在右上方；

		    map.addControl(new BMap.ScaleControl());        //添加控件：地图显示比例的控件，默认在左下方；

		    map.addControl(new BMap.OverviewMapControl());  //添加控件：地图的缩略图的控件，默认在右下方； TrafficControl    
		   
		    var search = new BMap.LocalSearch("中国", {

		      onSearchComplete: function(result){

		        if (search.getStatus() == BMAP_STATUS_SUCCESS){

		          var res = result.getPoi(0);

		          var end = res.point;
		          distance=parseInt(map.getDistance(point,end).toFixed(2));
		          map.centerAndZoom(end, 11);
		        //如果距离大于200公里，则运费20
		          if(distance>200000){
		        	  postage=20;
		        	  msg="距离此地大约"+(distance/1000)+"公里，会产生运费";
		        	  layer.msg('<span style="color:black;">'+msg+'</span>', {
							icon:6,
							time: 2000
						}); 
		     	}
		          //如果距离小于20大于10公里，则运费10
		     	else if(distance>100000 && distance<200000){
		     		  postage=10;
		     		  msg="距离此地大约"+(distance/1000)+"公里，会产生运费";
		     		 layer.msg('<span style="color:black;">'+msg+'</span>', {
							icon:6,
							time: 2000
						}); 
		     		  
		     	}
		        //如果距离小于10公里，则运费不收
		     else{
		    	 postage=0;
		    	 msg="距离此地大约"+(distance/1000)+"公里，不会产生运费";
		    	 layer.msg('<span style="color:black;">'+msg+'</span>', {
						icon:6,
						time: 2000
					}); 
		     }
		          
		          
		          
		         

		        }

		      },renderOptions: {  //结果呈现设置，

		        map: map,  

		        autoViewport: true,  

		        selectFirstResult: true 

		      } ,onInfoHtmlSet:function(poi,html){//标注气泡内容创建后的回调函数，有了这个，可以简单的改一下返回的html内容了。

		        

		      }

		    });

		    //点击确定收货地址按钮事件
		    $("#addressConfirmFinal").click(function(){
		    	 
		    	 search.search($("#addressConfirm option:selected").text());
		    	
		    	 //淡出运费显示标签
		    	 $("#postage").fadeOut();
		    	  
		    	
		    	 
		    }) ;
		    //点击计算运费的按钮事件
		    $("#addressConfirmFinal2").click(function(){
		    	
		    	 
		    	 
		    	 
		    	 $("#postage").fadeIn();//淡入运费计算
		    	 $("#postage").text(postage);//设置运费显示标签的文本为所计算出来的运费值
		    	$("#payment span").text(postage+${sessionScope.cart.totalPrice});
		    	
		    	 
		    }) ;  
		   //地址下拉框选中事件
      $("#addressConfirm").change(function(){
    	var tel=  $(this).find("option:selected").attr("id");//地址下拉框选中之后，返回收货手机号码
    	var name=$(this).find("option:selected").attr("class");//地址下拉框选中后，返回收货人姓名
    	$("#receiverName").text("收货人："+name+"先生");//当地址选中后，就返回收货人姓名，设置在文本框内
    	$("#receiverPhone").text(tel);//当地址选中后，就返回收货人联系方式，设置在文本框内
    	
    	  
    	  
      });
		   
		   //点击新增地址按钮的事件
		   $(".addressAdd").click(function(){
			  location.href="/Rosemary/address.do?op=myAddress&userName=${sessionScope.ub.userName}"; 
			   
		   });
		   
		   //当点击提交订单按钮时的按钮事件
		     $(".order-submit").click(function(){
		    	//第一步，先获取我们所选择的支付类型（单选框：支付宝or微信）
		    	 var val=$('input:radio[name="pay"]:checked').val();
		    	//获取运费 
		    	var postage=$("#postage").text();
		    	//获取订单编号
		    	var orderId="${sessionScope.orderId}";
		    	//初始化订单状态为0，即未付款
		    	var orderStatus=0;
		    	//获得操作此订单的用户ID
		    	var userId="${sessionScope.ub.userId}";
		    	//初始化orderType，订单类型为售货订单
		    	var orderType=1;
		    	//获得收货人地址
		    	var address=$("#addressConfirm option:selected").text();
		    	//获得需要付款的总费用
		    	var payment=$("#payment span").text();
		    	console.log("支付类型是："+val+",运费是"+postage+",订单编号是："+orderId+",订单状态是:"+orderStatus+",用户编号是："+userId+",订单类型是："+orderType+",收货人地址是"+address+",总费用是："+payment);
		    	//判断用户当前操作是否有误，订单数据不能缺失
		    	if(val==null || postage==null|| orderId==null || address==null || userId ==null || payment==null ){
		    		layer.msg('<span style="color:black;">当前操作异常</span>', {
						icon:5,
						time: 2000
					}); 
		    		
		    	}
		    	//如果操作正常，则向服务端发起请求
		    	else{
		    		$.get("/Rosemary/order.do","op=createOrder&postage="+postage+
			    			"&orderId="+orderId+
			    			"&orderStatus="+orderStatus+
			    			"&userId="+userId+"&orderType="+orderType+"&address="+address+"&payment="+payment,
			    	         function(data,status){
		    			//如果服务端生成订单操作正常，则向客户端返回正确的信息，提示用户进入支付界面
		    			if(data=="成功生成订单！点击确定去支付这笔订单吧"){
		    				layer.open({
								title: "友情提醒",
								skin: "layui-layer-lan",
								content: "<span style='color:black;'>"+data+"</span>",
								anim: 0,
								btn: ['剁手去~~'],
								yes: function(index, layero) {
									location.href="/Rosemary/index.jsp";
								}
								
								
							});
		    				
		    			}
		    			//如果操作失败，则返回操作失败的信息
		    			else{
		    				layer.open({
								title: "友情提醒",
								skin: "layui-layer-lan",
								content: "<span style='color:black;'>订单异常，请重新刷新页面试试</span>",
								anim: 0,
								btn: ['我再试试'],
								yes: function(index, layero) {
									location.reload();
								}
								
								
							});
		    				
		    				
		    			}
			    		    
			    	});
		    		
		    	}
		    	
		    	
		    	
		    	
		     });
		      
		    

		   
		 
	 });
	 </script>

</html>