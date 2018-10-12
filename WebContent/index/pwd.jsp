<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<title>修改密码</title>
		<link rel="stylesheet" href="css/bootstrap.min.css" />
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
						 <button type="submit" class="btn btn-default">修改</button>
						 <button type="reset" name="btn1" id="btn1" class="btn btn-default">取消</button>
					</div>
				</div>
			</form>
		</div>
	</div>
	</div>

	</body>

</html>