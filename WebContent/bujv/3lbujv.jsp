<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>三列布局</title>
<style>
body{ margin:0; padding:0; font-size:30px; font-weight:bold}
div{ text-align:center; line-height:50px; border-width:2px;
    border-style:solid;
    border-color:red;}
.left{ width:240px; height:600px; background:#ccc; position:absolute; left:0; top:0 ;}
.main{ height:600px; margin:0 240px; background:#9CF}
.right{ height:600px; width:240px; position:absolute; top:0; right:0; background:#FCC;}
</style>
</head>

<body>
	
    <div class="left">left</div>
    <div class="main">main</div>
    <div class="right">right</div>
</body>

</html>