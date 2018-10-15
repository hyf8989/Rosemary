<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>我的收货地址</title>
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
<link href="style.css" rel="stylesheet">
<link href="layui/css/layui.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="layui/css/layui.css" />
<style type="text/css">
.addressCard {
	border: solid mistyrose;
	margin-bottom: 5px;
}

.container {
	margin-right: auto;
	margin-left: auto;
	margin-top: 20px;
}

.icon1 {
	width: 400px;
	height: 40px;
	margin-bottom:3px;
}



.modal-content {
	width: 500px;
	height: 400px;}
	
	span{
	text-align: center;
	
	}
}
</style>
</head>

<body>
	<%@ include file="headhav.jsp"%>

	<div class="container ">

		<div class="row ">
			<c:if test="${sessionScope.addressList==null }">
				<jsp:forward page="/address.do&op=myAddress"></jsp:forward>
			</c:if>

			<c:forEach var="address" items="${sessionScope.addressList }">
				<div class="col-md-4 addressCard">

					<div class="layui-card ">
						<div class="layui-card-header">我的收货地址</div>
						<div class="layui-card-body">
							<ul>
							 <input type="hidden" name="addressId" id="addressId" value="${address.addressId }" />
								<li><label>收货人姓名：</label><label id="Name">${address.receiverName}</label></li>

								<li><label>联系方式：</label><label id="Phone">${address.receiverPhone}</label></li>
								<li><label id="Province">${address.receiverProvince}</label><label id="City">${address.receiverCity}</label></li>
								<li><label id="District">${address.receiverDistrict}</label><label id="Info">${address.addressInfo}</label></li>
								<li><label>邮编：</label><label id="Zip">${address.receiverZip}</label></li>
								<li><label>创建时间：</label><label id="create">${address.createTime}</label></li>
								<li><label>更新时间：</label><label id="update">${address.updateTime}</label></li>
								<li style="text-align: right;">
								
										<a class="update" ><i class="layui-icon layui-icon-edit" id="modal-674804" href="#modal-container-133227" data-toggle="modal"></i></a> 
										
										<a href="javascript:void(0);"  class="del"><i
										class="layui-icon layui-icon-delete "></i> </a> 
										
									<a id="modal-674807" data-toggle="modal" href="#modal-container-133228">
									<i class="layui-icon layui-icon-add-1" ></i></a>
								</li>

							</ul>
						</div>
					</div>
				</div>
			</c:forEach>

		</div>

		<!-- 遮罩层开始 -->
		<div class="row clearfix">
			<div class="col-md-12 column">

       <!-- 模态窗口的开始 -->
				<div class="modal fade" id="modal-container-133228" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">×</button>
								<h3 class="modal-title" id="myModalLabel">添加我的收货地址</h3>
							</div>
							<!-- 表单开始 -->
							<div class="addAddressform">
								<form action="#" method="post">
									<div class="icon1">
										<i class="layui-icon layui-icon-user" aria-hidden="true"></i>
										<input style="width: 350px;height:30px" type="text" placeholder="收货人姓名" id="receiverName" name="receiverName"
											required="" value=""/>
									</div>

									<div class="icon1">
										<i class="layui-icon layui-icon-cellphone-fine "
											aria-hidden="true"></i> 
											<input style="width: 350px;height:30px" type="text" placeholder="收货人联系电话" name="phone"  id="phone" required="" />
									</div>
									<div class="icon1">
										
									<span ><i class="layui-icon layui-icon-location" aria-hidden="true"></i>
										
									
											<select name="Prov" lay-verify="required" class="selectProv">
												<option >请选择省份</option>
											</select> 
											<select name="city" lay-verify="required" class="selectCity">
												<option>请选择城市</option>
											</select>
										<input style="width: 80px;" type="text"  name="receiverDistrict" id="receiverDistrict" required="" />区
										</span>
									
									</div>
									
									<div class="icon1">
										<i class="layui-icon layui-icon-location" aria-hidden="true"></i>
										<input style="width: 350px;height:30px" type="text" placeholder="详细地址" name="detailAddress" id="detailAddress" required="" />
									</div>
									
									
									
									<div class="icon1">
										<i class="layui-icon layui-icon-tabs" aria-hidden="true"></i>
										<input style="width: 350px;height:30px" type="text" placeholder="邮编" name="zip" id="zip" required="" />
									</div>


									<div class="layui-row">
										<div class="bottom layui-col-md4">
											<button class="layui-btn layui-btn-lg" type="button"
												value="添加" name="addBtn" id="addBtn">添加</button>

										</div>
										<div class="bottom layui-col-md4">
											<button class="layui-btn layui-btn-lg" type="reset"
												value="取消">取消</button>

										</div>
									</div>

								</form>
							</div>



							<!-- 表单结束 -->
						</div>

					</div>

				</div>
				<!-- 模态窗口的结束 -->

			</div>
		</div>
		<!-- 遮罩层结束-->
		
		
		
		
		<!-- 遮罩层开始 -->
		<div class="row clearfix">
			<div class="col-md-12 column">

       <!-- 模态窗口的开始 -->
				<div class="modal fade" id="modal-container-133227" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">×</button>
								<h3 class="modal-title" id="myModalLabel">修改我的收货地址</h3>
							</div>
							<!-- 表单开始 -->
							<div class="addAddressform">
								<form action="#" method="post">
									<div class="icon1">
										<i class="layui-icon layui-icon-user" aria-hidden="true"></i>
										<input style="width: 350px;height:30px" type="text" placeholder="收货人姓名" id="rName" name="rName"
											required="" value=""/>
									</div>

									<div class="icon1">
										<i class="layui-icon layui-icon-cellphone-fine "
											aria-hidden="true"></i> 
											<input style="width: 350px;height:30px" type="text" placeholder="收货人联系电话" name="rphone"  id="rphone" required="" />
									</div>
									<div class="icon1">
										
									<span ><i class="layui-icon layui-icon-location" aria-hidden="true"></i>
										
									
											<select name="Prov" lay-verify="required" class="selectProv">
												<option >请选择省份</option>
											</select> 
											<select name="city" lay-verify="required" class="selectCity">
												<option>请选择城市</option>
											</select>
										<input style="width: 80px;" type="text"  name="rDistrict" id="rDistrict" required="" />区
										</span>
									
									</div>
									
									<div class="icon1">
										<i class="layui-icon layui-icon-location" aria-hidden="true"></i>
										<input style="width: 350px;height:30px" type="text" placeholder="详细地址" name="rdetailAddress" id="rdetailAddress" required="" />
									</div>
									
									
									
									<div class="icon1">
										<i class="layui-icon layui-icon-tabs" aria-hidden="true"></i>
										<input style="width: 350px;height:30px" type="text" placeholder="邮编" name="rzip" id="rzip" required="" />
									</div>


									<div class="layui-row">
										<div class="bottom layui-col-md4">
											<button class="layui-btn layui-btn-lg" type="button"
												value="修改" name="updateBtn" id="updateBtn">修改</button>

										</div>
										<div class="bottom layui-col-md4">
											<button class="layui-btn layui-btn-lg" type="button"
												value="取消">取消</button>

										</div>
									</div>

								</form>
							</div>



							<!-- 表单结束 -->
						</div>

					</div>

				</div>
				<!-- 模态窗口的结束 -->

			</div>
		</div>
		<!-- 遮罩层结束-->
		
		
	</div>
	<!-- footer-start -->
	<%@ include file="foot.jsp"%>
	<!-- footer-end -->
	<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="layui/layui.js">
			
		</script>

	<script type="text/javascript">
		$(function() {
			//初始化省份菜单
			var prov = new Array();
			prov[1] = "北京市";
			prov[2] = "天津市";
			prov[3] = "上海市";
			prov[4] = "重庆市";
			prov[5] = "河北省";
			prov[6] = "山西省";
			prov[7] = "台湾省";
			prov[8] = "辽宁省";
			prov[9] = "吉林省";
			prov[10] = "黑龙江省";
			prov[11] = "江苏省";
			prov[12] = "浙江省";
			prov[13] = "安徽省";
			prov[14] = "福建省";
			prov[15] = "江西省";
			prov[16] = "山东省";
			prov[17] = "河南省";
			prov[18] = "湖北省";
			prov[19] = "湖南省";
			prov[20] = "广东省";
			prov[21] = "甘肃省";
			prov[22] = "四川省";
			prov[23] = "贵州省";
			prov[24] = "海南省";
			prov[25] = "云南省";
			prov[26] = "青海省";
			prov[27] = "陕西省";
			prov[28] = "广西壮族自治区";
			prov[29] = "西藏自治区";
			prov[30] = "宁夏回族自治区";
			prov[31] = "新疆维吾尔自治区";
			prov[32] = "内蒙古自治区";
			prov[33] = "澳门特别行政区";
			prov[34] = "香港特别行政区";
			for (var i = 1; i < prov.length; i++) {
				$(".selectProv").append("<option value="+prov[i]+">" + prov[i] + "</option>");
			}
			var city = new Array();
			city[1] = new Array("北京市");
			city[2] = new Array("天津市");
			city[3] = new Array("上海市");
			city[4] = new Array("重庆市");
			city[5] = new Array("保定市", "沧州市", "承德市", "邯郸市", "衡水市", "廊坊市",
					"秦皇岛市", "石家庄市", "唐山市", "邢台市", "张家口市");
			city[6] = new Array("长治市", "大同市", "晋城市", "晋中市", "临汾市", "吕梁市",
					"朔州市", "太原市", "忻州市", "阳泉市", "运城市");
			city[7] = new Array("高雄市", "高雄县", "花莲县", "基隆市", "嘉义市", "嘉义县",
					"苗栗县", "南投县", "澎湖县", "屏东县", "台北市", "台北县", "台东县", "台南市",
					"台南县", "台中市", "台中县", "桃园县", "新竹市", "新竹县", "宜兰县", "云林县",
					"彰化县");
			city[8] = new Array("鞍山市", "本溪市", "朝阳市", "大连市", "丹东市", "抚顺市",
					"阜新市", "葫芦岛市", "锦州市", "辽阳市", "盘锦市", "沈阳市", "铁岭市", "营口市");
			city[9] = new Array("白城市", "白山市", "长春市", "吉林市", "辽源市", "四平市",
					"松原市", "通化市", "延边朝鲜族自治州");
			city[10] = new Array("大庆市", "大兴安岭地区", "哈尔滨市", "鹤岗市", "黑河市", "鸡西市",
					"佳木斯市", "牡丹江市", "七台河市", "齐齐哈尔市", "双鸭山市", "绥化市", "伊春市");
			city[11] = new Array("常州市", "淮安市", "连云港市", "南京市", "南通市", "苏州市",
					"宿迁市", "泰州市", "无锡市", "徐州市", "盐城市", "扬州市", "镇江市");
			city[12] = new Array("杭州市", "湖州市", "嘉兴市", "金华市", "丽水市", "宁波市",
					"衢州市", "绍兴市", "台州市", "温州市", "舟山市");
			city[13] = new Array("安庆市", "蚌埠市", "亳州市", "巢湖市", "池州市", "滁州市",
					"阜阳市", "合肥市", "淮北市", "淮南市", "黄山市", "六安市", "马鞍山市", "宿州市",
					"铜陵市", "芜湖市", "宣城市");
			city[14] = new Array("福州市", "龙岩市", "南平市", "宁德市", "莆田市", "泉州市",
					"三明市", "厦门市", "漳州市");
			city[15] = new Array("抚州市", "赣州市", "吉安市", "景德镇市", "九江市", "南昌市",
					"萍乡市", "上饶市", "新余市", "宜春市", "鹰潭市");
			city[16] = new Array("滨州市", "德州市", "东营市", "菏泽市", "济南市", "济宁市",
					"莱芜市", "聊城市", "临沂市", "青岛市", "日照市", "泰安市", "威海市", "潍坊市",
					"烟台市", "枣庄市", "淄博市");
			city[17] = new Array("安阳市", "鹤壁市", "济源市", "焦作市", "开封市", "洛阳市",
					"漯河市", "南阳市", "平顶山市", "濮阳市", "三门峡市", "商丘市", "新乡市", "信阳市",
					"许昌市", "郑州市", "周口市", "驻马店市");
			city[18] = new Array("鄂州市", "恩施土家族苗族自治州", "黄冈市", "黄石市", "荆门市",
					"荆州市", "潜江市", "神农架林区", "十堰市", "随州市", "天门市", "武汉市", "仙桃市",
					"咸宁市", "襄樊市", "孝感市", "宜昌市");
			city[19] = new Array("长沙市", "常德市", "郴州市", "衡阳市", "怀化市", "娄底市",
					"邵阳市", "湘潭市", "湘西土家族苗族自治州", "益阳市", "永州市", "岳阳市", "张家界市",
					"株洲市");
			city[20] = new Array("潮州市", "东莞市", "佛山市", "广州市", "河源市", "惠州市",
					"江门市", "揭阳市", "茂名市", "梅州市", "清远市", "汕头市", "汕尾市", "韶关市",
					"深圳市", "阳江市", "云浮市", "湛江市", "肇庆市", "中山市", "珠海市");
			city[21] = new Array("白银市", "定西市", "甘南藏族自治州", "嘉峪关市", "金昌市", "酒泉市",
					"兰州市", "临夏回族自治州", "陇南市", "平凉市", "庆阳市", "天水市", "武威市", "张掖市");
			city[22] = new Array("阿坝藏族羌族自治州", "巴中市", "成都市", "达州市", "德阳市",
					"甘孜藏族自治州", "广安市", "广元市", "乐山市", "凉山彝族自治州", "泸州市", "眉山市",
					"绵阳市", "内江市", "南充市", "攀枝花市", "遂宁市", "雅安市", "宜宾市", "资阳市",
					"自贡市");
			city[23] = new Array("安顺市", "毕节地区", "贵阳市", "六盘水市", "黔东南苗族侗族自治州",
					"黔南布依族苗族自治州", "黔西南布依族苗族自治州", "铜仁地区", "遵义市");
			city[24] = new Array("白沙黎族自治县", "保亭黎族苗族自治县", "昌江黎族自治县", "澄迈县",
					"儋州市", "定安县", "东方市", "海口市", "乐东黎族自治县", "临高县", "陵水黎族自治县",
					"琼海市", "琼中黎族苗族自治县", "三亚市", "屯昌县", "万宁市", "文昌市", "五指山市");
			city[25] = new Array("保山市", "楚雄彝族自治州", "大理白族自治州", "德宏傣族景颇族自治州",
					"迪庆藏族自治州", "红河哈尼族彝族自治州", "昆明市", "丽江市", "临沧市", "怒江傈傈族自治州",
					"曲靖市", "思茅市", "文山壮族苗族自治州", "西双版纳傣族自治州", "玉溪市", "昭通市");
			city[26] = new Array("果洛藏族自治州", "海北藏族自治州", "海东地区", "海南藏族自治州",
					"海西蒙古族藏族自治州", "黄南藏族自治州", "西宁市", "玉树藏族自治州");
			city[27] = new Array("安康市", "宝鸡市", "汉中市", "商洛市", "铜川市", "渭南市",
					"西安市", "咸阳市", "延安市", "榆林市");
			city[28] = new Array("百色市", "北海市", "崇左市", "防城港市", "贵港市", "桂林市",
					"河池市", "贺州市", "来宾市", "柳州市", "南宁市", "钦州市", "梧州市", "玉林市");
			city[29] = new Array("阿里地区", "昌都地区", "拉萨市", "林芝地区", "那曲地区",
					"日喀则地区", "山南地区");
			city[30] = new Array("固原市", "石嘴山市", "吴忠市", "银川市", "中卫市");
			city[31] = new Array("阿克苏市", "阿拉尔市", "阿勒泰市", "阿图什市", "博乐市", "昌吉市",
					"阜康市", "哈密市", "和田市", "喀什市", "克拉玛依市", "库尔勒市", "奎屯市", "米泉市",
					"石河子市", "塔城市", "图木舒克市", "吐鲁番市", "乌鲁木齐市", "乌苏市", "五家渠市",
					"伊宁市");
			city[32] = new Array("阿拉善盟", "巴彦淖尔市", "包头市", "赤峰市", "鄂尔多斯市",
					"呼和浩特市", "呼伦贝尔市", "通辽市", "乌海市", "乌兰察布市", "锡林郭勒盟", "兴安盟");
			city[33] = new Array("澳门特别行政区");
			city[34] = new Array("香港特别行政区");
			$(".selectProv").on(
					"change",
					function() {
						$(".selectCity").children("option").detach();
						$(".selectCity").append("<option>请选择市区</option>");
						var indexProv = $(".selectProv>option:selected")
								.index();//取得选中的想的数组下标0
						if (indexProv > 0) {
							for (var i = 0; i < city[indexProv].length; i++) {
								$(".selectCity").append(
										"<option value="+city[indexProv][i]+">" + city[indexProv][i]
												+ "</option>");
							}
							console.log($(".selectProv>option:selected").val()
									+ $(".selectCity>option:first").val());
						} else {
							console.log("请选择省份");
						}
					});
			$(".selectCity").on(
					"change",
					function() {
						console.log($(".selectProv>option:selected").val()
								+ $(".selectCity>option:selected").val());
					});
			
			
			//弹出层的使用
	    	 layui.use('layer', function() {
					var layer = layui.layer;

				});
			
			//在模态窗口中点击添加按钮触发的事件
			$("#addBtn").click(function(){
				 //获取到登录用户的用户编号
				var userId="${sessionScope.ub.userId}";
				//获取用户在模态窗口中输入的收货人姓名
				var receiverName=$("#receiverName").val();
				//获取用户输入的收货人联系方式
				var receiverPhone=$("#phone").val();
				//获取用户输入的省、市、区、详细地址 
				var receiverProv=$(".selectProv").val();
				var receiverCity=$(".selectCity").val();
				var receiverDistrict=$("#receiverDistrict").val();
			    var addressInfo=$("#detailAddress").val();
			    //获取用户输入的邮编
			    var receiverZip=$("#zip").val();
				console.log(userId);
				$.get("/Rosemary/address.do","op=addAddress&userId="+userId+"&receiverName="
						+receiverName+"&receiverPhone="+receiverPhone+"&receiverProv="+receiverProv+"&receiverCity="
						+receiverCity+"&receiverDistrict="+receiverDistrict+"&addressInfo="
						+addressInfo+"&receiverZip="+receiverZip,function(data,status){
			    	msg=data;
			    });
			  if(msg="收货地址添加成功"){
				  layer.open({
						title: "友情提醒",
						skin: "layui-layer-molv",
						content: "<span style='color:black;'>"+msg+"</span>",
						anim: 0,
						btn: ['OK'],
						yes: function(index, layero) {
							//记得清除session中存储的用户对象
							
							location.href="/Rosemary/address.do?op=myAddress&userName=${sessionScope.ub.userName}";
							
						}
						
					});
			  }
			  
			  else{
				  layer.open({
						title: "友情提醒",
						skin: "layui-layer-molv",
						content: "<span style='color:black;'>"+msg+"</span>",
						anim: 0,
						btn: ['OK'],
						yes: function(index, layero) {
							location.href="myAddress.jsp";
						}
						
					});
			  }
			     
			});
		
			//删除图标的单击事件
			$(".del").click(function(){
				
				 var aId=$("#addressId").val();
				
				 layer.open({
						title: "友情提醒",
						skin: "layui-layer-molv",
						content: "<span style='color:black;'>删除后数据将无法恢复，您确定要删除么？</span>",
						anim: 0,
						btn: ['OK','NOT'],
						yes: function(index, layero) {
							$.get("/Rosemary/address.do","op=deleteAddress&addressId="+aId,function(data,status){
								if(data="收货地址删除成功"){
								layer.open({
										title: "友情提醒",
										skin: "layui-layer-molv",
										content: "<span style='color:black;'>"+data+"</span>",
										anim: 0,
										btn: ['OK'],
										yes: function(index, layero) {
											location.href="/Rosemary/address.do?op=myAddress&userName=${sessionScope.ub.userName}";
										}
										
									});
								}
							});
						},
						btn2:function(index,layero){
							location.href="myAddress.jsp";
						}
					}); 
					
			});
			
			//编辑图标的单击事件
			$(".update").click(function(){
				
				
				  //获取地址信息编号
				 var addressId=$("#addressId").val();
				 
				
			
			  
			  
				//将原本的地址信息展示在模态窗口中
				$("#rName").val($("#Name").text());
				
				var province=$("#Province").text()+"省";
				
				$("#rphone").val($("#Phone").text());
				$(".selectProv").val($("#Province").val());
			
				$(".selectCity").val($("#City").val());
				$("#rDistrict").val($("#District").text());
				$("#rdetailAddress").val($("#Info").text());
				$("#rzip").val($("#Zip").text()); 
				
				
				$(".selectProv option").each(function(){
					if($(this).text()==province){
						$(this).attr("selected","selected");
						
					}
				  	
				});
			
				
				
			});
			
			
		});
	</script>

</body>

</html>