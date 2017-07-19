<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册成功</title>
<%@ include file="../../include/taglib.jsp"%>
<link type="text/css" rel="stylesheet" href="${res}/css/mainandreset.css">
<script type="text/javascript" src="${res}/js/jquery-1.11.3.min.js"></script>
</head>
<body onload="window.setInterval('countdown()' , 1000);">
<c:import url="../../include/top.jsp"/>

<div class="shoppingCart comWidth">
	<div class="shopping_item">
		<h5 class="shopping_tit">注册成功！</h5> <div class="shopping_tit"id="showCounter"></div><h5 class="shopping_tit">秒后跳转到首页</h5>
	</div>
	<div class="hr_25"></div>
	
	<div class="hr_25"></div>
	
	<div class="hr_25"></div>
	
</div>





<script>
var counter = 5; // 计数器初始值
function countdown() {
    var obj = document.getElementById("showCounter"); // 获取用来显示倒计时信息的 div
    obj.innerHTML =+ counter; // 更新倒计时的提示信息
    if (--counter <= 0) window.location = "${base}/goods/index.htm"; // 倒计时结束进行跳转
}
</script>




 <c:import url="../../include/footer.jsp"/>
</body>
</html>