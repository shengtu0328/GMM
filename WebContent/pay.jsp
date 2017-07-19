<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
支付界面 
<br>
需要支付${price} 元！！！！！


<br>
支付方式
<br>
<a href="<%=request.getContextPath()%>/pay/zhifubaologin.htm?price=${price}"><img src="<%=request.getContextPath()%>/picture/zhifubao.png"></a>


</body>
</html>