
		$(function() {
			layui.use('layer', function() {
				var layer = layui.layer;
			});
			var msg = "";//验证提示信息
			var flag = false;
			var adminNameTest = /^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z]{4,16}$/;//用户名校验，必须为字母数字组合，且位数控制在4至16位
			var adminPwdTest = /^\w{6,16}$/;//密码校验，必须为6-16位任意字符
			//var phoneTest=/^1\d{10}$/;//手机号正则表达式，规定由全为数字，1开头
			//验证用户名是否合法
			$("#adminName").change(
					function() {
						//获取输入的账户名
						var adminName = $("#adminName").val();
						if (adminNameTest.test(adminName) == false) {
							msg = '必须为字母数字组合，且位数控制在4至16位';
							layer.msg('<span style="color:black;">' + msg
									+ '</span>', {
								icon : 4,
								time : 1000
							});
							$("#adminName").val("");
						}
						//如果合法，就用ajax传值到Userservlet进行后台判断是否存在这个用户名
						else {
							//
							$.get("/Rosemary/manager.action",
									"op=checkAdminName&adminName=" + adminName,
									function(data, status) {
										layer.msg('<span style="color:black;">'
												+ data + '</span>', {
											icon : 6,
											time : 1000
										});
										if (data == "管理员账号合法") {
											flag = true;
										} else {
											$("#adminName").val("");
										}

									});
						}
					});
			//判断密码是否合法
			$("#adminPwd").change(
					function() {
						var adminPwd = $("#adminPwd").val();
						if (adminPwdTest.test(adminPwd) == false) {
							msg = "密码必须是6-16位字符";
							layer.msg('<span style="color:black;">' + msg
									+ '</span>', {
								icon : 6,
								time : 1000
							});
							$(this).val("");
						} else {
							flag = true;
						}
					});

			//添加用户
			$("#adminAdd")
					.click(
							function() {
								var adminName = $("#adminName").val();
								var adminPwd = $("#adminPwd").val();
								var adminStatus = $("#adminStatus").val();
								var adminLevel = $("#adminLevel").val();
								/* console.log(adminStatus); */
								if (flag == false
										|| (adminName != "" && adminPwd != "") == false) {
									msg = "请输入正确信息";
									layer.msg('<span style="color:black;">'
											+ msg + '</span>', {
										icon : 4,
										time : 2000
									});
								} else {

									if (msg = "添加成功") {
										layer
												.open({
													title : "友情提醒？",
													skin : "layui-layer-molv",
													content : "<span>确定添加吗？</span>",
													anim : 0,
													btn : [ '确定', '取消' ],
													yes : function() {
														$
																.get(
																		"/Rosemary/manager.action",
																		"op=adminAdd&adminName="
																				+ adminName
																				+ "&adminPwd="
																				+ adminPwd
																				+ "&adminStatus="
																				+ adminStatus
																				+ "&adminLevel="
																				+ adminLevel,
																		function(
																				data,
																				status) {
																			msg = data;
																			layer
																					.msg(
																							'添加成功',
																							{
																								icon : 1,
																								time : 2000
																							});
																		});

														layer.closeAll();
														setTimeout(function(){
															window.location.reload();
														},2000);
														
													},
													btn2 : function() {
														layer.close();
													}
												});
									}
								}
							});
		});
		/* layui.use('layer', function() {
			var layer = layui.layer;

		});
		$("#adminAdd").click(function() {
			layer.open({
				title : "友情提醒？",
				skin : "layui-layer-molv",
				content : "<span>确定添加吗？</span>",
				anim : 0,
				btn : [ '确定', '取消' ],
				yes : function(index, layero) {
					layer.msg('添加成功', {
						icon : 1,
						time : 2000
					});
				},
				btn2 : function(index, layero) {
					layer.close();
				}
			});

		}); */
