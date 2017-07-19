<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<frameset rows="20%,80%">

<frame name="frame1" src="<%=request.getContextPath() %>/title1.jsp">

<frameset cols="17%,83%">
<frame name="frame2" src="<%=request.getContextPath() %>/menu.jsp">
<frame name="frame3" src="<%=request.getContextPath() %>/welcome.jsp">
</frameset>

</frameset>
<body>


</body>
</html>