<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="u" class="com.sw.entity.User" scope="session"/>
<form action="javabean2.jsp" method="post" >
<jsp:setProperty name="u" property="username"  />
<jsp:setProperty name="u" property="password" param="password111" />
<table>
<tr><td>用户名<input type="text" name="username"  id="uid"  value="asdaaa" onblur="fun2()"></td><td><span id="a1" style="color:red"></span></td><tr>
<tr><td>密码<input type="password" name="password111"   value="111" onblur="fun3()"></td><td><span id="a2" style="color:red" ></span></td><tr>

<tr><td>姓名<input type="text" name="name"  onblur="fun5()"></td><td><span id="a4"  style="color:red" ></span></td><tr>
<tr><td>电话<input type="text" name="telephone"  onblur="fun6()" ></td><td><span id="a5" style="color:red"  ></span></td><tr>
<tr><td>邮箱<input type="text" name="email" onblur="fun7()"></td><td><span id="a6" style="color:red" ></span></td><tr>
<tr><td>who<input type="text" name="who" onblur="fun7()"></td><td><span id="a6" style="color:red" ></span></td><tr>
<jsp:setProperty name="u" property="*" />

<jsp:setProperty name="u" property="username"/>
<tr><td><input type="submit" value="注册"></td><tr>
<jsp:getProperty name="u" property="username" />
<jsp:getProperty name="u" property="password" />
</table>
</form>
</body>
</html>