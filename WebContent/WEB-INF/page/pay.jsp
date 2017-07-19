<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>支付</title>
<%@ include file="../../include/taglib.jsp"%>
<link type="text/css" rel="stylesheet" href="${res}/css/mainandreset.css">
<script type="text/javascript" src="${res}/js/jquery-1.11.3.min.js"></script>
</head>
<body>
<c:import url="../../include/top.jsp"/>
	<form action="pay.htm" id="orderForm" >
<div class="shoppingCart comWidth">
	<div class="shopping_item">
		<h3 class="shopping_tit">支付</h3>
	
		<div class="shopping_cont padding_shop " >
			<ul class="shopping_list" style="margin:0 auto">
				<li><span class="shopping_list_text"><em>*</em>需要支付</span>
						<h3><input readonly="true"  type="text" class="input" value="${totalPrice}" name="totalPrice"/>元</h3>
				</li>
				<!-- <li><span class="shopping_list_text"><em>*</em>帐号：</span><input type="text"  name="gameAccount" placeholder="请填写你的帐号" class="input "></li>
				<li><span class="shopping_list_text"><em>*</em>联系qq：</span><input type="text"  name="qq" placeholder="前填写联系qq" class="input "></li>
				<li><span class="shopping_list_text"><em>*</em>联系手机：</span><input type="text" name="telephone"  placeholder="请填写联系手机" class="input "><span class="cart_tel"></li>
			 -->
			</ul>
			<input type="submit" value="确认" onclick="msg()"/>
			<input type="hidden" name="orderId" value="${orderId}">
		</div>
	</div>
	<div class="hr_25"></div>
	
	<div class="hr_25"></div>
	
	<div class="hr_25"></div>
	
</div>
</form>
<script type="text/javascript">

</script>
 <c:import url="../../include/footer.jsp"/>
</body>
</html>