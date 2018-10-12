<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>个人信息展示</title>
<!-- for-mobile-apps -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /> 
<meta name="keywords" content="Personal Profile Form Widget Responsive, Login form web template, Sign up Web Templates, Flat Web Templates, Login signup Responsive web template, Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<!-- //for-mobile-apps -->
<link href='//fonts.googleapis.com/css?family=Questrial' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/p-forms.css">
<link href="css/style2.css" rel="stylesheet" type="text/css" media="all" />
 <script src="https://cdn.bootcss.com/jquery/1.10.2/jquery.min.js">
</script>
  <script type="text/javascript">
  	$(function () {
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
    $("#selectProv").append("<option>"+prov[i]+"</option>");
  }
  var city = new Array();
  city[1] = new Array("北京市");
  city[2] = new Array("天津市");
  city[3] = new Array("上海市");
  city[4] = new Array("重庆市");
  city[5] = new Array("保定市", "沧州市", "承德市", "邯郸市", "衡水市", "廊坊市", "秦皇岛市", "石家庄市", "唐山市", "邢台市", "张家口市");
  city[6] = new Array("长治市", "大同市", "晋城市", "晋中市", "临汾市", "吕梁市", "朔州市", "太原市", "忻州市", "阳泉市", "运城市");
  city[7] = new Array("高雄市", "高雄县", "花莲县", "基隆市", "嘉义市", "嘉义县", "苗栗县", "南投县", "澎湖县", "屏东县", "台北市", "台北县", "台东县", "台南市", "台南县", "台中市", "台中县", "桃园县", "新竹市", "新竹县", "宜兰县", "云林县", "彰化县");
  city[8] = new Array("鞍山市", "本溪市", "朝阳市", "大连市", "丹东市", "抚顺市", "阜新市", "葫芦岛市", "锦州市", "辽阳市", "盘锦市", "沈阳市", "铁岭市", "营口市");
  city[9] = new Array("白城市", "白山市", "长春市", "吉林市", "辽源市", "四平市", "松原市", "通化市", "延边朝鲜族自治州");
  city[10] = new Array("大庆市", "大兴安岭地区", "哈尔滨市", "鹤岗市", "黑河市", "鸡西市", "佳木斯市", "牡丹江市", "七台河市", "齐齐哈尔市", "双鸭山市", "绥化市", "伊春市");
  city[11] = new Array("常州市", "淮安市", "连云港市", "南京市", "南通市", "苏州市", "宿迁市", "泰州市", "无锡市", "徐州市", "盐城市", "扬州市", "镇江市");
  city[12] = new Array("杭州市", "湖州市", "嘉兴市", "金华市", "丽水市", "宁波市", "衢州市", "绍兴市", "台州市", "温州市", "舟山市");
  city[13] = new Array("安庆市", "蚌埠市", "亳州市", "巢湖市", "池州市", "滁州市", "阜阳市", "合肥市", "淮北市", "淮南市", "黄山市", "六安市", "马鞍山市", "宿州市", "铜陵市", "芜湖市", "宣城市");
  city[14] = new Array("福州市", "龙岩市", "南平市", "宁德市", "莆田市", "泉州市", "三明市", "厦门市", "漳州市");
  city[15] = new Array("抚州市", "赣州市", "吉安市", "景德镇市", "九江市", "南昌市", "萍乡市", "上饶市", "新余市", "宜春市", "鹰潭市");
  city[16] = new Array("滨州市", "德州市", "东营市", "菏泽市", "济南市", "济宁市", "莱芜市", "聊城市", "临沂市", "青岛市", "日照市", "泰安市", "威海市", "潍坊市", "烟台市", "枣庄市", "淄博市");
  city[17] = new Array("安阳市", "鹤壁市", "济源市", "焦作市", "开封市", "洛阳市", "漯河市", "南阳市", "平顶山市", "濮阳市", "三门峡市", "商丘市", "新乡市", "信阳市", "许昌市", "郑州市", "周口市", "驻马店市");
  city[18] = new Array("鄂州市", "恩施土家族苗族自治州", "黄冈市", "黄石市", "荆门市", "荆州市", "潜江市", "神农架林区", "十堰市", "随州市", "天门市", "武汉市", "仙桃市", "咸宁市", "襄樊市", "孝感市", "宜昌市");
  city[19] = new Array("长沙市", "常德市", "郴州市", "衡阳市", "怀化市", "娄底市", "邵阳市", "湘潭市", "湘西土家族苗族自治州", "益阳市", "永州市", "岳阳市", "张家界市", "株洲市");
  city[20] = new Array("潮州市", "东莞市", "佛山市", "广州市", "河源市", "惠州市", "江门市", "揭阳市", "茂名市", "梅州市", "清远市", "汕头市", "汕尾市", "韶关市", "深圳市", "阳江市", "云浮市", "湛江市", "肇庆市", "中山市", "珠海市");
  city[21] = new Array("白银市", "定西市", "甘南藏族自治州", "嘉峪关市", "金昌市", "酒泉市", "兰州市", "临夏回族自治州", "陇南市", "平凉市", "庆阳市", "天水市", "武威市", "张掖市");
  city[22] = new Array("阿坝藏族羌族自治州", "巴中市", "成都市", "达州市", "德阳市", "甘孜藏族自治州", "广安市", "广元市", "乐山市", "凉山彝族自治州", "泸州市", "眉山市", "绵阳市", "内江市", "南充市", "攀枝花市", "遂宁市", "雅安市", "宜宾市", "资阳市", "自贡市");
  city[23] = new Array("安顺市", "毕节地区", "贵阳市", "六盘水市", "黔东南苗族侗族自治州", "黔南布依族苗族自治州", "黔西南布依族苗族自治州", "铜仁地区", "遵义市");
  city[24] = new Array("白沙黎族自治县", "保亭黎族苗族自治县", "昌江黎族自治县", "澄迈县", "儋州市", "定安县", "东方市", "海口市", "乐东黎族自治县", "临高县", "陵水黎族自治县", "琼海市", "琼中黎族苗族自治县", "三亚市", "屯昌县", "万宁市", "文昌市", "五指山市");
  city[25] = new Array("保山市", "楚雄彝族自治州", "大理白族自治州", "德宏傣族景颇族自治州", "迪庆藏族自治州", "红河哈尼族彝族自治州", "昆明市", "丽江市", "临沧市", "怒江傈傈族自治州", "曲靖市", "思茅市", "文山壮族苗族自治州", "西双版纳傣族自治州", "玉溪市", "昭通市");
  city[26] = new Array("果洛藏族自治州", "海北藏族自治州", "海东地区", "海南藏族自治州", "海西蒙古族藏族自治州", "黄南藏族自治州", "西宁市", "玉树藏族自治州");
  city[27] = new Array("安康市", "宝鸡市", "汉中市", "商洛市", "铜川市", "渭南市", "西安市", "咸阳市", "延安市", "榆林市");
  city[28] = new Array("百色市", "北海市", "崇左市", "防城港市", "贵港市", "桂林市", "河池市", "贺州市", "来宾市", "柳州市", "南宁市", "钦州市", "梧州市", "玉林市");
  city[29] = new Array("阿里地区", "昌都地区", "拉萨市", "林芝地区", "那曲地区", "日喀则地区", "山南地区");
  city[30] = new Array("固原市", "石嘴山市", "吴忠市", "银川市", "中卫市");
  city[31] = new Array("阿克苏市", "阿拉尔市", "阿勒泰市", "阿图什市", "博乐市", "昌吉市", "阜康市", "哈密市", "和田市", "喀什市", "克拉玛依市", "库尔勒市", "奎屯市", "米泉市", "石河子市", "塔城市", "图木舒克市", "吐鲁番市", "乌鲁木齐市", "乌苏市", "五家渠市", "伊宁市");
  city[32] = new Array("阿拉善盟", "巴彦淖尔市", "包头市", "赤峰市", "鄂尔多斯市", "呼和浩特市", "呼伦贝尔市", "通辽市", "乌海市", "乌兰察布市", "锡林郭勒盟", "兴安盟");
  city[33] = new Array("澳门特别行政区");
  city[34] = new Array("香港特别行政区");
  $("#selectProv").on("change",function(){
    $("#selectCity").children("option").detach();
    $("#selectCity").append("<option>请选择市区</option>");
    var indexProv = $("#selectProv>option:selected").index();//取得选中的想的数组下标0
    if (indexProv > 0) {
      for (var i = 0; i < city[indexProv].length; i++) {
        $("#selectCity").append("<option>" + city[indexProv][i] + "</option>");
      }
      console.log( $("#selectProv>option:selected").val() + $("#selectCity>option:first").val() );
    }else {
      console.log( "请选择省份" );
    }
  });
  $("#selectCity").on("change",function(){
    console.log( $("#selectProv>option:selected").val() + $("#selectCity>option:selected").val() );
  });
});
  </script>
  
</head>
<body>



<div class="content">
		<h1>我的基本信息</h1>
		<div class="main w3l">
			<div class="im-g">
				<img src="images/img1.jpg" alt="">
			</div>
			<form class="contact-forms wthree">
				<!-- end /.header-->

					<!-- start name -->
					<div class="first-line agileits">
						<div class="span6 main-row">
							<div class="input">
								
								用户名：<input type="text" id="userName" name="userName" placeholder="user name" required="">
							</div>
						</div>
						<div class="span6 main-row">
							<div class="input">
								
								真实姓名：<input type="text" id="reaName" name="reaName" placeholder="really Name" required="">
								
							</div>
						</div>
					</div>
					<!-- end name -->

					<!-- start email phone -->
					<div class="first-line agileits">
						<div class="span6 main-row">
							<div class="input">
								
								邮箱：<input type="email" placeholder="Email" id="email" name="email" required="">
							</div>
						</div>
						<div class="span6 main-row">
							<div class="input">
								
								电话：<input type="text" placeholder="Phone" id="phone" name="phone" required="">
							</div>
						</div>
					</div>
				<div class="main-row">
						<label class="input select">
							<select name="position">
								<option value="none" selected disabled="">性别</option>
								<option value="male">女</option>
								<option value="female"> 男</option>
							</select>
							<i></i>
						</label>
					</div>

					<!-- start country -->
					<div class="main-row">
						<label class="input select">
                 选择所在地址：<select id="selectProv" >
                   <option>请选择省份</option>
                 </select>
                <select id="selectCity" >
                   <option>请选择市区</option>
                </select>
					</label>
					</div>
					<!-- end country -->
					<!-- start position -->
					<div class="main-row">
						<label class="input select">
							<select name="position">
								<option value="none" selected disabled="">常用配送地址</option>
								<option value="厦门"> 厦门</option>
								<option value="莆田"> 莆田</option>
								<option value="福州"> 福州</option>
							</select>
							<i></i>
						</label>
					</div>
					<!-- end position -->
					<!-- start createTime post code -->
					<div class="first-line agileits">
						<div class="span8 main-row">
							<div class="input">
								
								<input type="text" id="createTime" placeholder="注册时间" name="createTime" required="">
							</div>
						</div>
						
					</div>
					<!-- end createTime post code -->	
					
					<!-- start updateTime post code -->
					<div class="first-line agileits">
						<div class="span8 main-row">
							<div class="input">
								
								<input type="text" id="updateTime" placeholder="更新时间" name="updateTime" required="">
							</div>
						</div>
						
					</div>
					<!-- end updateTime post code -->	
					
				<!-- end /.content -->

				<div class="footer">
					<button type="button" class="secondary-btn">取消</button>					
					<button type="submit" class="primary-btn">提交</button>
					<button type="button" class="secondary-btn">修改</button>
				</div>
				<!-- end /.footer -->

			</form>
		</div>
</div>
		<!-- Scripts -->
		<script src="js/jquery.1.11.1.min.js"></script>
		<script>
			$(document).ready(function(){
				// Phone masking
				$('#phone').mask('(999) 999-9999', {placeholder:'x'});

			});
		</script>
</body>
</html>
