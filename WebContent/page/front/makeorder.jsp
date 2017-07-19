<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>生成订单</title>
<%@ include file="../../include/taglib.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link type="text/css" rel="stylesheet" href="${base}/res/css/mainandreset.css">
</head>
<body>
<c:import url="../../include/top.jsp"/>
<div class="shoppingCart comWidth">
	<div class="shopping_item">
		<h3 class="shopping_tit">收货地址</h3>
		<div class="shopping_cont padding_shop">
			<ul class="shopping_list">
				<li><span class="shopping_list_text"><em>*</em>选择地区：</span>
					<div class="select">
						<h3>海淀区五环内</h3><span></span>
						<ul class="show_select">
							<li>上帝</li>
							<li>五道口</li>
							<li>上帝</li>
						</ul>
					</div>
				</li>
				<li><span class="shopping_list_text"><em>*</em>详细地址：</span><input type="text" value="最多输入20个汉字" class="input input_b"></li>
				<li><span class="shopping_list_text"><em>*</em>收 货 人：</span><input type="text" value="最多10个" class="input"></li>
				<li><span class="shopping_list_text"><em>*</em>手	机：</span><input type="text" value="如：12312312" class="input"><span class="cart_tel">&nbsp;或固定电话：</span><input type="text" class="input input_s"><span class="jian">-</span><input type="text" class="input input_s2"><span class="jian">-</span><input type="text" class="input input_s2"></li>
				<li><input type="button" class="affirm"></li>
			</ul>
		</div>
	</div>
	<div class="hr_25"></div>
	<div class="shopping_item">
		<h3 class="shopping_tit">支付方式</h3>
		<div class="shopping_cont padding_shop">
			<ul class="shopping_list">
				<li><input type="radio" class="radio" id="r1" name="payway"><label for="r1">微信支付</label></li>
				<li><input type="radio" class="radio" id="r2" name="payway" checked><label for="r2">支付宝支付</label></li>
			</ul>
		</div>
	</div>
	<div class="hr_25"></div>
	<div class="shopping_item">
		<h3 class="shopping_tit">送货清单<a href="#" class="backCar">返回购物车修改</a></h3>
		<div class="shopping_cont pb_10">
			<div class="cart_inner">
				<div class="cart_head clearfix">
					<div class="cart_item t_name">商品名称</div>
					<div class="cart_item t_price">单价</div>
					<div class="cart_item t_num">数量</div>
					<div class="cart_item t_return">返现</div>
					<div class="cart_item t_subtotal">小计</div>
				</div>
				<div class="cart_cont clearfix">
					<div class="cart_item t_name">
						<div class="cart_shopInfo clearfix">
							<img src="images/des_sm.jpg" alt="">
							<div class="cart_shopInfo_cont">
								<p class="cart_link"><a href="#">微信支付微信支付微信支付微</a></p>
								<p class="cart_info">微信支付微信支付微信支付微</p>
							</div>
						</div>
					</div>
					<div class="cart_item t_price">
						asdfa
					</div>
					<div class="cart_item t_num">数量</div>
					<div class="cart_item t_return">返现</div>
					<div class="cart_item t_subtotal t_red">小计</div>
				</div>
			
			</div>
		</div>
	</div>
	<div class="hr_25"></div>
	<div class="shopping_item">
		<h3 class="shopping_tit">订单结算</h3>
		<div class="shopping_cont padding_shop clearfix">
			<div class="cart_count fr">
				<div class="cart_rmb">
					<i>总计：</i><span>￥145000009.00</span>
				</div>
				<div class="cart_btnBox">
					<input type="button" class="cart_btn" value="提交订单">
				</div>
			</div>
		</div>
	</div>
</div>
 <c:import url="../../include/footer.jsp"/>
</body>
</html>