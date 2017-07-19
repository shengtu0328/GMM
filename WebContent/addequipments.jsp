<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> --%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="goods/addgoods.htm" method="post">
标题<input type="text" name="title"><br>
价格<input type="text" name="price"><br>
区服<input type="text" name="area"><br>
装备名<input type="text" name="equipmentname"><br>
装备等级<input type="text" name="equipmentlevel"><br>
商品数量<input type="text" name="goodsnums"><br>
类型<input type="text" name="category_id"><br>
其他<input type="text" name="else1"><br>
<input type="submit" value="提交">
</form>
</body>
</html>