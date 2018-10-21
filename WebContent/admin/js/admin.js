
 layui.use([ 'laypage', 'layer' ], function() {
			var laypage = layui.laypage, layer = layui.layer;
			});

$(".layui-btn-normal").click(function() {
			var adminName =$(this).parents("tr").find("h6").text();
			layer.open({
				title : "友情提醒？",
				skin : "layui-layer-lan",
				content : "<span>确定要解锁吗？</span>",
				anim : 0,
				btn : [ '确定', '取消' ],
				yes : function(index, layero) {
					$.get("/Rosemary/manager.action","op=clearManagerStatus&adminName=" + adminName, function(data, status) {
						layer.msg(data, {
							icon : 4,
							time : 3000
						});
						location.reload(true);
					}); 
					/* layer.msg('成功释放用户权限', {
						icon : 6,
						time : 3000
					}); */
				}
			});
		});
		$(".pwd-reset").click(function() {
			var adminName =$(this).parents("tr").find("h6").text();
			layer.open({
				title : "友情提醒？",
				skin : "layui-layer-lan",
				content : "<span>确定重置该管理员密码？（密码默认为admin）</span>",
				anim : 0,
				btn : [ '确定', '取消' ],
				yes : function(index, layero) {
					//...ajax请求
					//location.href = "/Rosemary/manager.action?op=updateManagerPwd"; 
					$.get("/Rosemary/manager.action","op=updateManagerPwd&adminName=" + adminName, function(data, status) {
						layer.msg(data, {
						icon : 6,
						time : 3000
					});
						location.reload(true);
					}); 
					//var adminName =$(this).parents("tr").find("h6").text();
					//location.href = "/Rosemary/manager.action?op=updateManagerPwd&adminName=" + adminName;
					
				}
			});
		});
		$(".layui-btn-danger").click(function() {
			//console.log($(this).parents("tr").find("span").text());
			var adminName =$(this).parents("tr").find("h6").text();
			layer.confirm("请问是否确定锁定？", {
				btn : [ "确定", "取消" ],
				icon : 4
			//按钮
			}, function(index) {
				$.get("/Rosemary/manager.action","op=lockManagerStatus&adminName=" + adminName, function(data, status) {
					layer.msg(data, {
						icon : 4,
						time : 3000
					});
					location.reload(true);
				}); 
				
				layer.close(index);
			}, function() {

			});
		});