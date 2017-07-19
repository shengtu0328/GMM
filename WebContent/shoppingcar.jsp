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

<h2>我的购物车</h2>
<a href="<%=request.getContextPath() %>/goods/querryallgoods.htm">《《《--返回首页</a>
<table>

	<tr>
		<td>商品标题</td>
		<td>商品id</td>
		<td>单价</td>
		<td>数量</td>
	    <td>小计</td>
	</tr>  
	<c:forEach var="e" items="${shoppingcarlist}">
		<tr>
	    <td>${e.goodstitle}</td>
	    <td>${e.goodsid}</td>
	    <td>${e.price}</td>
	    <td>${e.goodsnums}</td>
	    <td>${e.price}*${e.goodsnums}</td>
	    
	 </tr>     
</c:forEach>
<tr><td>总价</td><td>${shoppingcartotalprice}</td><td>元</td></tr>


  
</table>
<a href="<%=request.getContextPath() %>/order/shoppingcarmakeorderandorderdetail.htm">结算</a>
</body>
</html>