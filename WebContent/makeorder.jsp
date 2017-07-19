<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="/zhifubao/"><img src="<%=request.getContextPath() %>/picture/确认订单信息付款到支付宝.png"></a>

<table>
<tr><td>订单号</td><td>商品id</td><td>商品信息</td><td>单价</td><td>数量</td><td>小计</td><td>状态</td></tr>
<c:forEach var="e" items="${orderdetaillist}">
<tr>

<td>${e.order1id}</td>
<td>${e.goodsid}</td>
<td>${e.goodstitle}</td>
<td>${e.price}</td>
<td>${e.goodsnums}</td>
<td>${e.totalprice}</td>
<td>${e.orderdetailstate}</td>
</tr>
</c:forEach>
<tr><td>订单号</td><td>用户名 </td><td>状态 </td><td>总共付款 </td><td>时间</td></tr>
<tr>
<td>${order.orderid}</td>
<td>${order.username}</td>
<td>${order.state}</td>
<td>${order.totalprice}</td>
<td>${order.time}</td>
</tr>
</table>
<a href="<%=request.getContextPath() %>/order/writeorderandorderdetail.htm"><img src="<%=request.getContextPath() %>/picture/提交订单.png"></a>
</body>
</html>