<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>头部</title>
</head>
<body>
<div class="headBar">
	<div class="topBar">
	   <div class="comWidth">
	      <div class="leftArea">
	        <a href="#" class="collection" onclick="AddFavorite(window.location,document.title)">收藏G买卖</a>
	      </div>
	      <div class="rightArea">
	                      欢迎来到G买卖<a href="${base}/user/login.htm" onclick="pop();"  class="collection"><%=request.getSession().getAttribute("username")==null?"[登录]":request.getSession().getAttribute("username")%></a>
	                        <a class="collection" href="${base}/user/register.htm">[注册]</a>
                          <a   href="javascript:;"   onclick="logoff()" class="collection">[注销]</a>
	                      <a href=""class="collection">[我的订单]</a>
	      </div>
	   </div>
	</div>
	<div class="logoBar">
	    <div class="comWidth">
	       <div class="logo fl">
	          <a href="${base}/goods/index.htm"><img src="${base}/picture/icon/logo.png" alt="G买卖" ></a>
	       </div>
	       <div class="logoword fl">
	        <a href="${base}/goods/index.htm"><img src="${base}/picture/icon/G买卖.png" alt="G买卖" ></a>
	       </div>
	       <div class="search_box fl">
	       
	       <form action="${base}/goods/searchByCondition.htm">
                <input type="text" class="search_text"   name="condition" id="condition">
                <input type="submit" value="搜 索" class="search_btn">
               </form> 
 	       
	       </div>
	       
  <script type="text/javascript">
	    $(document).ready(function() {
	/*     	alert($("#condition").val()) */
		$("#condition").autocomplete("auto.htm",{
			max: 5,
			width: 309,
			scrollHeight: 300,
			matchContains: true,
			autoFill: false,
			extraParams:{
				featureClass : "P",
				style : "full",
				maxRows : 10,
				labelField : "title",
				valueField : "title",
				searchField : "title",
				entityName : "Goods",
				trem: getTremValuecommunityName
			}, parse:function(data){
				return parse.call(this,data);
			},formatItem:function(row, i, max){
				return formatItem.call(this,row, i, max);
			} 
		}).result(function (event, row, formatted) {
			callBack1.call(this,row);
		});
	});
	    
	    
	    function getTremValuecommunityName(){
			return $("#condition").val();
		}
	    
	    
	    
		function formatItem(data) {
			return data.title;
		}
	    
	    function parse(data) {
			var parsed = [];
			$.each(data.rows, function (index, row) {
				parsed.push({data: row, result: row, value: row.id});
			});
			return parsed;
		}
	    
		function callBack1(data) {
			$("#condition").val(data.title);
		
		}
	    
	    </script>
	       <div class="shopCar fr">
	        <div class="shopText fl">购物车</div>
	        <div class="shopNum fr">23</div> 
	       </div>
	    </div>
	</div>
	</div>
	<div class="navBox">
	    <div class="comWidth clearfix" >
	<!--     	<div class="topmenu fl"> -->
			<div class="homepage fl"><a href="#">全部商品分类</a></div>
	   		<div class="homepage fl"><a href="#">首页</a></div><!-- topmenu有float：left属性  自己不加float：left属性虽然可以使得homepage做浮动 但是 padding和margin会无效 -->
	   		<div class="homepage fl"><a href="#">我要卖</a></div>
	   		<div class="homepage fl"><a href="#">最热</a></div>
	        <div class="homepage fl"><a href="#">转转乐</a></div>
	        <div class="homepage fl"><a href="#">道具城</a></div>
	        <div class="homepage fl"><a href="#">g买卖会员</a></div>
	        <div class="homepage fl"><a href="#">积分商城</a></div>
		  
	 </div>   
    </div> 
</body>
</html>