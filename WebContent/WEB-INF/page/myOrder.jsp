<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的订单</title>
<%@ include file="../../include/taglib.jsp"%>
<link type="text/css" rel="stylesheet" href="${res}/css/mainandreset.css">
<script type="text/javascript" src="${res}/js/jquery-1.11.3.min.js"></script>
</head>
<body>
<c:import url="../../include/top.jsp"/>
	<form action="submit.htm" id="orderForm" name="">
<div class="shoppingCart comWidth">
	
	<div class="hr_25"></div>
	<div class="shopping_item">
		<h6 class="shopping_tit">我的订单<a href="#" class="backCar">我的钱包余额：${user.wallet} 元</a></h6>
		<div class="shopping_cont pb_10">
			<div class="cart_inner">
				<div class="cart_head clearfix">
					<div class="cart_item t_name">订单id</div>
					<div class="cart_item t_price">买家</div>
					<div class="cart_item t_price">状态</div>
					<div class="cart_item t_num">区服</div>
					<div class="cart_item t_return">总价</div>
					<div class="cart_item t_subtotal">创建时间</div>
				</div>
		   <c:forEach var="order" items="${user.orderList}" varStatus="status">
				 
				<div class="cart_cont clearfix">
					<div class="cart_item t_name">
						<div class="cart_shopInfo clearfix">
							<%-- <img src="${base}${orderDetail.image}" alt=""> --%>
						
								<p class="cart_link"><a href="#">${order.orderId}</a></p>
								
						
						</div>
					</div>
					<div class="cart_item t_price">
					${user.username}
		
					</div>
					<div class="cart_item t_price">
				${order.state}
					</div>
					<div class="cart_item t_num">${order.area}</div>
					<div class="cart_item t_return">${order.totalPrice} 元</div>
					<div class="cart_item t_subtotal t_red">${order.createTime}</div>
				</div>
				
				
				
			</c:forEach>
			</div>
		</div>
	</div>
	<div class="hr_25"></div>


</div>

  <input type="hidden" name="order.state" value="${order.state}">
  <input type="hidden" name="order.area" value="${order.area}">
  <input type="hidden" name="order.buyer" value="${order.buyer}">
  <input type="hidden" name="order.totalPrice" value="${order.totalPrice}">
</form>
 <c:import url="../../include/footer.jsp"/>
</body>

</html>