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
<table>
<tr><td>订单号</td><td>用户名 </td><td>状态 </td><td>总共付款 </td><td>时间</td></tr>
<c:forEach var="e" items="${myorder}">
<tr>
<td>${e.orderid}</td>
<td>${e.username}</td>
<td>${e.state}</td>
<td>${e.totalprice}</td>
<td>${e.time}</td>
</tr>
</c:forEach>
</table>
</body>
</html>