<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>商品详细信息页面</title>
<%@ include file="../../include/taglib.jsp"%>
<link type="text/css" rel="stylesheet" href="${res}/css/mainandreset.css">
<link type="text/css" rel="stylesheet" href="${base}/res/css/button.css">

<!-- JQUERY-->
<script type="text/javascript" src="${res}/js/jquery-1.11.3.min.js"></script>
<!-- 飞入购物车动画-->
<link rel="stylesheet" href="../../res/css/fly.css">
<script type="text/javascript" src="../../res/js/fly.js"></script>
<!-- 商品详细js-->
<script type="text/javascript" src="../../res/js/goodsdetail.js"></script>

</head>
<body class="grey">
<%@include file="../../include/top.jsp" %>
<div class="userPosition comWidth">
	<strong><a href="${base}/goods/index.htm">首页</a></strong>
	<span>&nbsp;&gt;&nbsp;</span>
	<a href="${base}/goods/search.htm?categoryId=2&pm.pageSize=12">金币</a>
	<span>&nbsp;&gt;&nbsp;</span>
	<em>${goods.title}</em>
</div>
<div class="description_info comWidth">
	<div class="description clearfix">
		<div class="leftArea">
			<div class="description_imgs">
				<div class="big">
					<img src="../..${goods.image}" class="imgsize" alt="">
				</div>
			<!-- 	<ul class="des_smimg clearfix">
					<li><a href="#"><img src="images/des_sm.jpg" class="active" alt=""></a></li>
					<li><a href="#"><img src="images/des_sm2.jpg" alt=""></a></li>
					<li><a href="#"><img src="images/des_sm.jpg" alt=""></a></li>
					<li><a href="#"><img src="images/des_sm2.jpg" alt=""></a></li>
					<li><a href="#"><img src="images/des_sm.jpg" alt=""></a></li>
				</ul> -->
			</div>
		</div>
		<div class="rightArea">
			<div class="des_content">
				<h3 class="des_content_tit" id="title">${goods.title}</h3>
				<div class="dl clearfix1">
					<div class="dt">商品类型</div>
					<div class="dd clearfix1"><span class="des_money">金币</span></div>
				</div>
				<div class="dl clearfix1">
					<div class="dt">区服</div>
					<div class="dd clearfix1"><span class="des_money">${goods.area}</span></div>
				</div>
					<div class="dl clearfix1">
					<div class="dt">价格</div>
					<div class="dd clearfix1"><span class="des_money"><em>￥</em>${goods.price}</span></div>
				</div>

					<input type="hidden" id="price" value="${goods.price}">	
					<div class="dl clearfix1">
					<div class="dt">比列</div>
					<div class="dd clearfix1"><span class="des_money">1：${goods.rate}</span></div>
				</div>
				<div class="des_position">
					
					
					<div class="dl">
						<div class="dt des_num">数量</div>
						
						<div class="dd clearfix" style="padding-left:1px">
						<form action="${base}/order/goodsGenerate.htm" id="goods">
							<div class="des_number">
								<div class="reduction">-</div>
								<div class="des_input">
									<input type="text" name="orderdetailList[0].goodsNums" value="1" onkeyup="goodsNumsChange()" id="selected"/>
								</div>
								<div class="plus">+</div>
							</div>
							<input type="hidden" name="goodsId" value="${goods.goodsId}">
				                    <input type="hidden" name="orderdetailList[0].goodsId" value="${goods.goodsId}">
				                  <input type="hidden" name="area" value="${goods.area}">
				                  <input type="hidden" name="orderdetailList[0].seller" value="${goods.seller}">
				                  <input type="hidden" name="orderdetailList[0].price" value="${goods.price}">
				                  <input type="hidden" name="orderdetailList[0].title" value="${goods.title}">
				                  <input type="hidden" name="orderdetailList[0].image" value="${goods.image}">
			                    <!--   <input type="hidden" name="orderdetailList[0].subtotal" id="subtotal" value="">
				                  <input type="hidden" name="totalPrice" id="totalPrice" value=""> -->

				           </form>
				          
							<span class="xg">库存<em>${goods.goodsNums}</em>件</span>
						</div>
					</div>
				</div>
				<input type="hidden" value="${goods.goodsNums}" id="goodsNums">
				
				 <script type="text/javascript">
				           
				           function goodsNumsChange()
				           {   var flag = true;
				        	   var selected=parseInt($("#selected").val());
				        	 /*   alert(selected) */
				        	   var goodsNums=parseInt($("#goodsNums").val());
				        	   var price=$("#price").val();
				        	   var subtotal=$("#subtotal");
				        	   var totalPrice=$("#totalPrice");
				        /* 	   alert(price) */
				        	   if(selected>goodsNums)
				        		   {
				        		   $("#selected").val(goodsNums);
				        		   }
				        	   if(selected<1)
				        	    {
				        		   
				        		   $("#selected").val(1);
				        		   }
				        	   subtotal.val(selected*price);
				        	   totalPrice.val(selected*price);
				          /*    alert(subtotal.val()) */
				           }
				           
				           </script>
				
				<div class="shop_buy">
					<a href="javascript:;" onclick="buy()"  class="button button-raised button-caution ">立即购买</a>
					<span class="line"></span>
					<a href="javascript:;" class="button button-raised button-caution btnCart">加入购物车</a>
				</div>
				
			</div>
		</div>
	</div>
</div>
<div class="hr_15"></div>
<div class="des_info comWidth clearfix">
	<div class="leftArea">
		<div class="recommend">
			<h3 class="tit">同价位</h3>
			<div class="item">
				<div class="item_cont">
					<div class="img_item">
						<a href="#"><img src="images/shopImg.jpg" id="img" alt=""></a>
					</div>
					<p><a href="#">文字介绍文字介绍文字介绍文字介绍文字介绍文字介绍</a></p>
					<p class="money">￥888</p>
				</div>
			</div>
			<div class="item">
				<div class="item_cont">
					<div class="img_item">
						<a href="#"><img src="images/shopImg.jpg" alt=""></a>
					</div>
					<p><a href="#">文字介绍文字介绍文字介绍文字介绍文字介绍文字介绍</a></p>
					<p class="money">￥888</p>
				</div>
			</div>
			<div class="item">
				<div class="item_cont">
					<div class="img_item">
						<a href="#"><img src="images/shopImg.jpg" alt=""></a>
					</div>
					<p><a href="#">文字介绍文字介绍文字介绍文字介绍文字介绍文字介绍</a></p>
					<p class="money">￥888</p>
				</div>
			</div>
		</div>
		<div class="hr_15"></div>
		<div class="recommend">
			<h3 class="tit">同价位</h3>
			<div class="item">
				<div class="item_cont">
					<div class="img_item">
						<a href="#"><img src="images/shopImg.jpg" alt=""></a>
					</div>
					<p><a href="#">文字介绍文字介绍文字介绍文字介绍文字介绍文字介绍</a></p>
					<p class="money">￥888</p>
				</div>
			</div>
			<div class="item">
				<div class="item_cont">
					<div class="img_item">
						<a href="#"><img src="../../res/images/shopImg.jpg" alt=""></a>
					</div>
					<p><a href="#">文字介绍文字介绍文字介绍文字介绍文字介绍文字介绍</a></p>
					<p class="money">￥888</p>
				</div>
			</div>
			<div class="item">
				<div class="item_cont">
					<div class="img_item">
						<a href="#"><img src="images/shopImg.jpg" alt=""></a>
					</div>
					<p><a href="#">文字介绍文字介绍文字介绍文字介绍文字介绍文字介绍</a></p>
					<p class="money">￥888</p>
				</div>
			</div>
		</div>
	</div>
	<div class="rightArea">
		<div class="des_infoContent">
			<ul class="des_tit">
				<li class="active"><span>产品介绍</span></li>
				<li><span>产品评价(12312)</span></li>
			</ul>
			<div class="ad">
			
			</div>
			<div class="info_text">
				<div class="info_tit">
					<h3>[卖家]</h3><h4 id="seller">${goods.seller}</h4>
				</div>
				<div class="info_tit">
					<h3>[商品编号]</h3><h4 id="goodsId">${goods.goodsId}</h4>
				</div>
				<div class="info_tit">
					<h3>[区服]</h3><h4 id="area">${goods.area}</h4>
				</div>
				<div class="info_tit">
					<h3>[其他]</h3><h4>${goods.goodsElse}</h4>
				</div>
				
				
			</div>
		</div>
		
		<div class="des_infoContent">
			<h3 class="shopDes_tit">商品评价</h3>
			<div class="score_box clearfix">
				<div class="score">
					<span>4.7</span><em>分</em>
				</div>
				<div class="score_speed">
					<ul class="score_speed_text">
						<li class="speed_01">非常不满意</li>
						<li class="speed_02">不满意</li>
						<li class="speed_03">一般</li>
						<li class="speed_04">满意</li>
						<li>非常满意</li>
					</ul>
					<div class="score_num">
						4.7<i></i>
					</div>
					<p>共18939位慕课网友参与评分</p>
				</div>
			</div>
			<div class="review_tab">
				<ul class="review fl">
					<li><a href="#" class="active">全部</a></li>
					<li><a href="#">满意（3121）</a></li>
					<li><a href="#">一般（321）</a></li>
					<li><a href="#">不满意（1121）</a></li>
				</ul>
				<div class="review_sort fr">
					<a href="#" class="review_time">时间排序</a><a href="#" class="review_reco">推荐排序</a>
				</div>
			</div>
			<div class="review_listBox">
				<div class="review_list clearfix">
					<div class="review_userHead fl">
						<div class="review_user">
							<img src="images/userhead.jpg" alt="">
							<p>61***42</p>
							<p>金色会员</p>
						</div>
					</div>
					<div class="review_cont">
						<div class="review_t clearfix">
							<div class="starsBox fl"><span class="stars"></span><span class="stars"></span><span class="stars"></span><span class="stars"></span><span class="stars"></span></div>
							<span class="stars_text fl">5分 满意</span>
						</div>
						<p>赖慕课挺不错的信赖慕课挺不错的，信赖慕课</p>
						<p><a href="#" class="ding">顶(0)</a><a href="#" class="cai">踩(0)</a></p>
					</div>
				</div>
				<div class="review_list clearfix">
					<div class="review_userHead fl">
						<div class="review_user">
							<img src="images/userhead.jpg" alt="">
							<p>61***42</p>
							<p>金色会员</p>
						</div>
					</div>
					<div class="review_cont">
						<div class="review_t clearfix">
							<div class="starsBox fl"><span class="stars"></span><span class="stars"></span><span class="stars"></span><span class="stars"></span><span class="stars"></span></div>
							<span class="stars_text fl">5分 满意</span>
						</div>
						<p>赖慕课挺不错的信赖慕课挺不错的，信赖慕课</p>
						<p><a href="#" class="ding">顶(0)</a><a href="#" class="cai">踩(0)</a></p>
					</div>
				</div>
				<div class="hr_25"></div>
			</div>
		</div>
	</div>
</div>
<div id="flyItem" class="fly_item"><img src="../../res/images/gmmlogo.png" ></div>



<%@include file="../../include/footer.jsp" %>
<%@include file="../../include/fly.jsp" %>
</body>
<script type="text/javascript">
	
</script>
</html>