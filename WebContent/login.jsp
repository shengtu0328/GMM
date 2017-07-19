<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<style type="text/css">
body
{ 
background-image: 
url(picture/account1.png);
background-repeat: repeat-x
}


table{
    border:1px solid;
    margin:0 auto;
}
</style>
</head>
<body>
<!-- <img src="picture/account5.jpg" width="400px"; height="200px"; style="position:absolute; left:20px; top:10px; "> -->

<%=request.getAttribute("tips")==null?"":request.getAttribute("tips") %>

<%
String username="";
String password=""; 
Cookie cookies[] =request.getCookies();       //得到cookies
if(cookies!=null&& cookies.length>0)   
{  	/* out.print("进入cookies判断"); */
	for(Cookie c:cookies)
	{ /*   out.print("进入cookies循环"); */
		if("username".equals(c.getName())&&c.getValue()!=null)
		{   /* out.print("进入username判断"); */
			username = c.getValue();
			
		
		}
		if("password".equals(c.getName())&&c.getValue()!=null)
		{   /* out.print("进入username判断"); */
			password=c.getValue();
		
		}
		
	}
}

%>
<%=request.getAttribute("qingxiandenglu")==null?"":request.getAttribute("qingxiandenglu") %>
<%String path=request.getContextPath(); %>
<form action="<%=path %>/user/userlogin.htm" method="post">
<table>
<tr><td>用户名</td><td><input type="text" name="username" value="<%=username%>"></td></tr>
<tr><td>密码</td><td><input type="password" name="password"value="<%=password%>"></td></tr>
<tr><td><input type="submit" value="登录"></td></tr>
<tr><td>十天内免登录</td><td><input type="checkbox" name="rememberPass" checked ></td></tr>
</table>
<a href="<%=request.getContextPath() %>/userregister.jsp">用户注册</a>
<a href="<%=request.getContextPath() %>/userregister.jsp">密码找回</a>
</form>
</body>
</html>