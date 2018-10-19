<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>注册</title>
<link rel="stylesheet" href="css/style3.css" />

<body>

<div class="register-container">
	<h1>用户注册</h1>
	
	
		<div>
			<input type="text" name="username" id="userName"  placeholder="您的用户名" />
		</div>
		<div>
			<input type="password" name="password" id="password" class="password" placeholder="输入密码"  />
		</div>
		<div>
			<input type="password" name="confirm_password" id="confirmPwd"  placeholder="再次输入密码"  />
		</div>
		<div>  
		<input type="text" name="phone_number"  placeholder="输入手机号码"  id="phoneNumber"/>
		
		</div>
		
        <button id="send" type="button">点击发送验证码</button><br/>
        <input type="text" name="code"  placeholder="输入验证码"  id="code"/><br/>
         <input type="hidden" name="code2"  id="code2"/><br/>
        
		<button id="register" type="button">注 册</button><br/>
	
	<a href="login.jsp">
		<button type="button" class="register-tis">已经有账号？</button>
	</a>

</div>
<script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js">
</script>
<script type="text/javascript" src="layui/layui.js">
			
		</script>

<script type="text/javascript">

	 $(function(){
		 //弹出层的使用
		 layui.use('layer', function() {
				var layer = layui.layer;

			});
		 var userName="";//初始化用户名
		 var password="";//初始化密码
		 var confirmPwd="";//初始化确认密码
		 var phoneNumber="";//初始化电话号码
		 var code="";//初始化验证码
		 var msg="";//验证提示信息
		 var flag=false;
		
		var userNameTest=/^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{4,16}$/;//用户名校验，必须为字母数字组合，且位数控制在4至16位
		var passwordTest=/^\w{6,16}$/;//密码校验，必须为6至16位任意字符
		var phoneTest=/^1\d{10}$/;//手机号正则表达式，规定由全为数字，1开头
  //用户名的输入校验
		$("#userName").change(function(){
			userName=$("#userName").val();
			//如果用户名校验格式不对，则弹窗提醒
			if(userNameTest.test(userName)==false){
				
				msg='必须为字母数字组合，且位数控制在4至16位';
				layer.msg('<span style="color:black;">'+msg+'</span>', {
					icon:4,
					time: 1000
				});
				 $(this).val("");
				
			}
			//如果格式正确，则通过AJAX传值到Userservlet进行后台判断是或否存在这个用户名
			else{
				//
			   $.get("/Rosemary/user.action","op=register&userName="+userName,function(data,status){
				   layer.msg('<span style="color:black;">'+data+'</span>', {
						icon:6,
						time: 1000
					}); 
				   if(data=="此用户名可用"){
					   flag=true;
				   }
				   else{
					   $("#userName").val("");
				   }
				   
			   })	;
				
				
			}
			
			
		});
		$("#password").change(function(){
			if(passwordTest.test($(this).val())==false){
				msg="密码必须是6-16位字符";
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
		$("#confirmPwd").change(function(){
			if($("#password").val()=="" || $(this).val()!=$("#password").val()){
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
	
		
		//点击发送验证码事件触发	，获得验证码，储存在文本隐藏域
	 $("#send").click(function(){
		 var phoneNumber=$("#phoneNumber").val();
		 if(phoneTest.test(phoneNumber)){
			 $(this).attr("disabled","disabled");//将按钮设为不可点击 
			 msg="验证码已发送至手机，30s后可重新发送";
			 layer.msg('<span style="color:black;">'+msg+'</span>', {
					icon:6,
					time: 2000
				}); 
			 
			 
			  //ajax传到服务层，发送手机验证码
		    $.get("/Rosemary/user.action","op=sendCode&phoneNumber="+phoneNumber,function(data,status){
				
				$("#code2").val(data);//把发送的验证码储存在隐藏域里，方便之后进行注册验证
				
				
				
			}); 
		    
			 
		 }
		 else{
			 msg="手机号必须是11位有效数字";
			 layer.msg('<span style="color:black;">'+msg+'</span>', {
					icon:5,
					time: 2000
				}); 
			 $(this).val("");
			 
		 }
		
		 
		 
		
		
		
	 })	 ;
		$("#code").change(function(){
			if($(this).val()!=$("#code2").val()){
				msg="验证码输入错误";
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
		
		//注册按钮点击事件
		$("#register").click(function(){
			
			  userName=$("#userName").val();
			 password=$("#password").val();
			 confirmPwd=$("#confirmPwd").val();
			 phoneNumber=$("#phoneNumber").val();
			 code=$("#code").val();
			 
			 //如果输入框存在空值，则弹窗提醒
			if(flag==false || (userName!="" && password !="" && confirmPwd!="" && phoneNumber !="" && code !="")==false){
				msg="信息必须全部正确填入";
				layer.msg('<span style="color:black;">'+msg+'</span>', {
					icon:4,
					time: 2000
				});
			} 
			else{
				//获取系统当前时间 格式是：yyyy-MM-dd HH:MM:SS
				var date = new Date();
			    var seperator1 = "-";
			    var seperator2 = ":";
			    var month = date.getMonth() + 1;
			    var strDate = date.getDate();
			    if (month >= 1 && month <= 9) {
			        month = "0" + month;
			    }
			    if (strDate >= 0 && strDate <= 9) {
			        strDate = "0" + strDate;
			    }
			    //currentdate为当前系统时间
			    var currentdate = date.getFullYear() + seperator1 + month + seperator1 + strDate
			            + " " + date.getHours() + seperator2 + date.getMinutes()
			            + seperator2 + date.getSeconds();
			    //获取系统当前时间 格式是：yyyy-MM-dd HH:MM:SS
			    /*在这边进行数据库用户基本表的信息插入
			       
			    */
			    $.get("/Rosemary/user.action","op=insert&userName="+userName+"&userPwd="+password+"&createTime="+currentdate+"&updateTime="+currentdate+"&phoneNumber="+phoneNumber,function(data,status){
			    	msg=data;
			    });
			    
			    if(msg="注册成功"){
			    	layer.open({
						title: "友情提醒？",
						skin: "layui-layer-molv",
						content: "<span style='color:black;'>"+msg+"</span>",
						anim: 0,
						btn: ['OK，返回登录'],
						yes: function(index, layero) {
							location.href="login.jsp";
						}
						
					});
			    }
			    else{
			    	layer.open({
						title: "友情提醒？",
						skin: "layui-layer-lan",
						content: "<span style='color:black;'>"+msg+"</span>",
						anim: 0,
						btn: ['我再试试'],
						yes: function(index, layero) {
							location.href="login.jsp";
						}
						
					});
			    	
			    }
				
				
				
			}
			
			
		});
	 
	 
	
	 });
	

 
 
 
</script>

<script src="js/jquery.min.js"></script>
<script src="js/common.js"></script>
<!--背景图片自动更换-->
<script src="js/supersized.3.2.7.min.js"></script>
<script src="js/supersized-init.js"></script>
<!--表单验证-->
<script src="js/jquery.validate.min.js?var1.14.0"></script>

</body>
</html>