<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>生成订单</title>
<%@ include file="../../include/taglib.jsp"%>
<link type="text/css" rel="stylesheet" href="${res}/css/mainandreset.css">
<script type="text/javascript" src="${res}/js/jquery-1.11.3.min.js"></script>
</head>
<body>
<c:import url="../../include/top.jsp"/>
	<form action="submit.htm" id="orderForm" name="">
<div class="shoppingCart comWidth">
	<div class="shopping_item">
		<h3 class="shopping_tit">收货信息</h3>
	
		<div class="shopping_cont padding_shop">
			<ul class="shopping_list">
				<li><span class="shopping_list_text"><em>*</em>区服：</span>
						<h3><input  disabled="true" type="text" class="input" value="${order.area}" name="order"/></h3>
				</li>
				<li><span class="shopping_list_text"><em>*</em>帐号：</span><input type="text"  name="order.gameAccount" placeholder="请填写你的帐号" class="input "></li>
				<li><span class="shopping_list_text"><em>*</em>联系qq：</span><input type="text"  name="order.qq" placeholder="前填写联系qq" class="input "></li>
				<li><span class="shopping_list_text"><em>*</em>联系手机：</span><input type="text" name="order.telephone"  placeholder="请填写联系手机" class="input "><span class="cart_tel"></li>
			
			</ul>
		</div>
	</div>
	<div class="hr_25"></div>
	<div class="shopping_item">
		<h3 class="shopping_tit">支付方式</h3>
		<div class="shopping_cont padding_shop">
			<ul class="shopping_list">
				<li><input type="radio" class="radio" id="r1" name="payway" checked><label for="r1">钱包支付</label></li>
				<li><input type="radio" class="radio" id="r2" name="payway"><label for="r2">支付宝支付</label></li>
			</ul>
		</div>
	</div>
	<div class="hr_25"></div>
	<div class="shopping_item">
		<h3 class="shopping_tit">送货清单<a href="${base}/shoppingcar/show.htm" class="backCar">返回购物车修改</a></h3>
		<div class="shopping_cont pb_10">
			<div class="cart_inner">
				<div class="cart_head clearfix">
					<div class="cart_item t_name">商品名称</div>
					<div class="cart_item t_price">商家</div>
					<div class="cart_item t_price">单价</div>
					<div class="cart_item t_num">数量</div>
					<div class="cart_item t_return">返现</div>
					<div class="cart_item t_subtotal">小计</div>
				</div>
				
				
				<c:forEach var="orderDetail" items="${order.orderdetailList}" varStatus="status">
				
				<div class="cart_cont clearfix">
					<div class="cart_item t_name">
						<div class="cart_shopInfo clearfix">
							<img src="${base}${orderDetail.image}" alt="">
							<div class="cart_shopInfo_cont">
								<p class="cart_link"><a href="#">${orderDetail.title}</a></p>
								
							</div>
						</div>
					</div>
					<div class="cart_item t_price">
					${orderDetail.seller}
		
					</div>
					<div class="cart_item t_price">
				${orderDetail.price}
					</div>
					<div class="cart_item t_num">${orderDetail.goodsNums}</div>
					<div class="cart_item t_return">无</div>
					<div class="cart_item t_subtotal t_red">${orderDetail.subtotal}</div>
				</div>
				  <input type="hidden" name="order.orderdetailList[${status.index}].goodsId" value="${orderDetail.goodsId}">
				  <input type="hidden" name="order.orderdetailList[${status.index}].image" value="${orderDetail.image}">
				  <input type="hidden" name="order.orderdetailList[${status.index}].title" value="${orderDetail.title}">
				  <input type="hidden" name="order.orderdetailList[${status.index}].price" value="${orderDetail.price}">
				  <input type="hidden" name="order.orderdetailList[${status.index}].seller" value="${orderDetail.seller}">
				  <input type="hidden" name="order.orderdetailList[${status.index}].buyer" value="${orderDetail.buyer}">
				  <input type="hidden" name="order.orderdetailList[${status.index}].goodsNums" value="${orderDetail.goodsNums}">
				  <input type="hidden" name="order.orderdetailList[${status.index}].subtotal" value="${orderDetail.subtotal}">
				</c:forEach>
				
				<c:forEach var="shoppingcarId" items="${shoppingcarIdList}" varStatus="status">
				 <input type="hidden" name="shoppingcarIdlList[${status.index}]" value="${shoppingcarId}">
			   </c:forEach>
			</div>
		</div>
	</div>
	<div class="hr_25"></div>
	<div class="shopping_item">
		<h3 class="shopping_tit">订单结算</h3>
		<div class="shopping_cont padding_shop clearfix">
			<div class="cart_count fr">
				<div class="cart_rmb">
					<i>总计：</i><span>￥${order.totalPrice}</span>
				</div>
				<div class="cart_btnBox">
					<input type="button" class="cart_btn" onclick="submitOrder()" value="提交订单">
				</div>
			</div>
		</div>
	</div>

</div>

  <input type="hidden" name="order.state" value="${order.state}">
  <input type="hidden" name="order.area" value="${order.area}">
  <input type="hidden" name="order.buyer" value="${order.buyer}">
  <input type="hidden" name="order.totalPrice" value="${order.totalPrice}">
</form>
 <c:import url="../../include/footer.jsp"/>
</body>
  
<script type="text/javascript">
function submitOrder()
{	  var formObj = $("#orderForm");
	  var nums=0;
	  $(".shopping_list :text").each(function(){   
        if(this.value=="")
	    	{
	        	 nums=nums+1;
	    	}  
	    })
	    if(nums!=0)
	    	{
	      alert("请填写完整收货信息")
	    	}
	    else{
	    	formObj.submit();
	    }
	  
	  

}
</script>
</html>