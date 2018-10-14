<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<title>修改密码</title>
		<link rel="stylesheet" href="/Rosemary/index/css/bootstrap.min.css" />
	</head>

	<body background="img/bg/bg01.jpg">
		<div class="container" align="center">
		<div class="row clearfix">
		<div class="col-md-12 column">
			<form class="form-horizontal" role="form" action="/Rosemary/user.action" method="post">
				<h3> 修改密码</h3>
				<div class="form-group">					
					 <label for="tinputPwd" class="col-sm-2 control-label">旧密码：</label>
					<div class="col-sm-10">
					<input type="hidden" name="op" value="updatePwd">
						<input type="password" class="form-control" id="oldPwd" />
					</div>
				</div>
				<div class="form-group">
					 <label for="tinputPwd1" class="col-sm-2 control-label">新密码：</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="newPwd1" />
					</div>
				</div>
				<div class="form-group">
					 <label for="tinputPwd2" class="col-sm-2 control-label">确认密码：</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="newPwd2" />
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10">
						 <button type="button" class="btn btn-default" id="updateBtn">修改</button>
						 <button type="reset" name="btn1" id="cancleBtn" class="btn btn-default">取消</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	</div>
	<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js">
</script>

<script type="text/javascript" src="layui/layui.js"></script>

<script type="text/javascript">
    $(function(){
    	
    	//弹出层的使用
    	 layui.use('layer', function() {
				var layer = layui.layer;

			});
    	 
    	 var flag=false;//默认flag值为false
    	 var msg="";//验证提示信息
    	 var passwordTest=/^\w{5}$/;//新密码校验，必须为5位任意字符
    	
         //用户的用户名
    	 var userName="${sessionScope.ub.userName}";
    	//用户的初始密码
    	var userPwd="${sessionScope.ub.userPwd}";
    	
    	 
    	 $("#oldPwd").change(function(){
    		    var oldPwd=$(this).val();
    			console.log(userName);
    			console.log(userPwd);
 				 $.get("/Rosemary/user.action","op=verifyPwd&userPwdInput="+oldPwd+"&userPwd="+userPwd,function(data,status){
 					   layer.msg('<span style="color:black;">'+data+'</span>', {
 							icon:6,
 							time: 1000
 						}); 
 					   if(data=="与原密码一致"){
 						   flag=true;
 					   }
 					   else{
 						   $(this).val("");
 					   }
 					   
 				   });
 			});
 	
    	 
    	 
    	 
    	 //新密码输入完成事件（注释记得写清楚 哦）
    	$("#newPwd1").change(function(){
			if(passwordTest.test($(this).val())==false){
				msg="密码必须是五位字符";
				 layer.msg('<span style="color:black;">'+msg+'</span>', {
						icon:6,
						time: 1000
					}); 
				 $(this).val("");
				
			}
			else{
				flag=true;
			}
		});
		//重复输入密码失去焦点事件
		$("#newPwd2").blur(function(){
			if($("#newPwd2").val()=="" || $(this).val()!=$("#newPwd1").val()){
				msg="两次密码输入不一致或者密码为空";
				layer.msg('<span style="color:black;">'+msg+'</span>', {
					icon:5,
					time: 2000
				}); 
				$(this).val("");
				
			}
			else{
				flag=true;
			}
		});
		 
		//点击修改密码按钮事件 .........(要不要打你)
		$("#updateBtn").click(function(){
			//获取用户输入的新密码
			var pwd=$("#newPwd1").val();
		
			if(flag==true){
				  $.get("/Rosemary/user.action","op=updatePwd&userName="+userName+"&userPwd="+pwd,function(data,status){
				    	msg=data;
				    });
				  if(msg="密码修改成功"){
					  layer.open({
							title: "友情提醒",
							skin: "layui-layer-molv",
							content: "<span style='color:black;'>"+msg+"</span>",
							anim: 0,
							btn: ['OK'],
							yes: function(index, layero) {
								location.href="login.jsp";
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
								location.href="pwd.jsp";
							}
							
						});
				  }
			}
		});
	
    
		});

</script>
<script src="js/jquery.min.js"></script>
<script src="js/common.js"></script>

<!--表单验证-->
<script src="js/jquery.validate.min.js?var1.14.0"></script>
	</body>

</html>