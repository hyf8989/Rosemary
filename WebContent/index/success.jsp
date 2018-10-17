<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
 var orderId=${sessionScope.orderId};
location.href="/Rosemary/order.do?op=success&orderId="+orderId;
</script>
</body>
</html>