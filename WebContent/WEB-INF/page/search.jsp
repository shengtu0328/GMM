<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>筛选</title>
<%@ include file="../../include/taglib.jsp"%>
<link type="text/css" rel="stylesheet" href="${base}/res/css/main.css">
<link type="text/css" rel="stylesheet" href="${base}/res/css/searchreset.css">
<link type="text/css" rel="stylesheet" href="${base}/res/css/searchreset.css">
<!-- jquery -->
<script type="text/javascript" src="${res}/js/jquery-1.8.0.min.js"></script>
<!-- 飞入购物车动画-->
<link rel="stylesheet" href="${res}/css/fly.css">
<script type="text/javascript" src="${res}/js/fly.js"></script>
<!-- 分页-->
<script type="text/javascript" src="${res}/js/pagination.js"></script> 

<link type="text/css" rel="stylesheet" href="${res}/js/jquery.autocomplete.css">

<script type="text/javascript" src="${res}/js/jquery.autocomplete.js"></script>


</head>
<body>

<c:import url="../../include/top.jsp"/>
<form:form modelAttribute="goods" method="post" action="search.htm" id="form" name="form">
<c:import url="../../include/pageParams.jsp"/>
</form:form>
<div class="hr_15"></div>
<div class="comWidth clearfix products">
	<div class="leftArea">
		<div class="leftNav vertical">
			<h3 class="nav_title">游戏</h3>
			<div class="nav_cont">
				<h3>帐号</h3>
				<ul class="navCont_list clearfix">
					<li><a href="#">xxxx</a></li>
					<li><a href="#">xxxx</a></li>
				</ul>
			</div>
			<div class="nav_cont">
				<h3>金币</h3>
				<ul class="navCont_list clearfix">
					<li><a href="#">xxxx</a></li>
					<li><a href="#">xxxx</a></li>
					<li><a href="#">xxxx</a></li>
					<li><a href="#">xxxx</a></li>
				</ul>
			</div>
			<div class="nav_cont">
				<h3>装备</h3>
				<ul class="navCont_list clearfix">
					<li><a href="#">xxxx</a></li>
					<li><a href="#">xxxx</a></li>
					<li><a href="#">xxxx</a></li>
					<li><a href="#">xxxx</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="rightArea">
		<div class="screening_box">
			<dl class="screening clearfix">
				<dt>xx</dt>
				<dd class="limit"><a href="#" class="active">xx</a></dd>
				<dd class="screening_list">
					<ul class="clearfix">
						<li><a href="#">Sxxxxxx</a></li>
						<li><a href="#">xxxxxxx</a></li>
						<li><a href="#">Hxxxxxxx</a></li>
						<li><a href="#">xxxxxxx</a></li>
						<li><a href="#">Hxxxxxx</a></li>
					</ul>
				</dd>
			</dl>
			<dl class="screening clearfix">
				<dt>xx</dt>
				<dd class="limit"><a href="#" class="active">xx</a></dd>
				<dd class="screening_list">
					<ul class="clearfix">
						<li><a href="#">Sxxxxxx</a></li>
						<li><a href="#">xxxxxxx</a></li>
						<li><a href="#">Hxxxxxxx</a></li>
						<li><a href="#">xxxxxxx</a></li>
						<li><a href="#">Hxxxxxx</a></li>
					</ul>
				</dd>
			</dl>
			<dl class="screening clearfix">
				<dt>xx</dt>
				<dd class="limit"><a href="#" class="active">xx</a></dd>
				<dd class="screening_list">
					<ul class="clearfix">
						<li><a href="#">Sxxxxxx</a></li>
						<li><a href="#">xxxxxxx</a></li>
						<li><a href="#">Hxxxxxxx</a></li>
						<li><a href="#">xxxxxxx</a></li>
						<li><a href="#">Hxxxxxx</a></li>
					</ul>
				</dd>
			</dl>
			</dl>
			<dl class="screening clearfix">
				<dt>更多选项</dt>
				<dd class="screening_list">
					<div class="screen_more">
						<a href="#">xxx</a>
					</div>
					<div class="screen_more">
						<a href="#">xx</a>
					</div>
				</dd>
			</dl>
		</div>
		<div class="hr_15"></div>
		<div class="addInfo">
			<div class="address">
				<span class="add_text">送至</span>
				<div class="select">
					<h3>xxxxx</h3><span></span>
					<ul class="show_select">
						<li>上帝</li>
						<li>五道口</li>
						<li>上帝</li>
					</ul>
				</div>
			</div>

			<div class="fr screen_text">
				<span class="check">
					<input type="checkbox" id="check"><label for="check">仅显示有货</label>
				</span>
				<span class="shop_number">
					共<em>${goods.pm.totalRows}</em>件
				</span>
			</div>
		</div>
		<div class="products_list screening_list_more clearfix">
		<c:forEach var="goods" items="${goodsList}">
			<div class="item">
				<div class="item_cont">
					<div class="img_item">
						<a href="detail/${goods.goodsId}.htm"><img src="${base}${goods.image}" alt=""></a>
					</div>
					<p><a href="#">${goods.title}</a></p>
					<p class="money">￥${goods.price}</p>
					<p><a href="javascript:;" name="${goods.goodsId}" class="addCar btnCart" onclick="add(this)">加入购物车</a></p>
				</div>
			</div>
		</c:forEach>
		</div>
		<div class="hr_25"></div>
		<div class="page">
		<a href="javascript:void(0)" onclick="doPage('first')">首页</a>
		<a href="javascript:void(0)" onclick="doPage('prev')">上一页</a>
		<a href="javascript:void(0)" onclick="doPage('next')">下一页</a>
		<a href="javascript:void(0)" onclick="doPage('last')">末页</a> 到第
		<input type="text" class="pageNum" onchange="doPage('current')" value="${goods.pm.page}"><span class="ye">页</span>
		<span class="morePage">共${goods.pm.totalPage}页</span>
		</div>
	</div>
</div>
<div class="hr_25"></div>
<script>
   function add(obj)
   {   
	  
	   var goodsId=obj.name;
	   $.ajax({
			 url:base+"/shoppingcar/querrryAndAdd.htm",
			 type:"post",
			 data:{
				   "goodsId":goodsId,
				  },
		     });
   }
</script>
<div id="flyItem" class="fly_item"><img src="../../res/images/gmmlogo.png" ></div>
<%@include file="../../include/footer.jsp" %>
<%@include file="../../include/fly.jsp" %>
</body>
</html>