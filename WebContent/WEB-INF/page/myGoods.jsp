<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的商品</title>
<%@ include file="../../include/taglib.jsp"%>
<link type="text/css" rel="stylesheet" href="${res}/css/mainandreset.css">
<script type="text/javascript" src="${res}/js/jquery-1.11.3.min.js"></script>
</head>
<body>
<c:import url="../../include/top.jsp"/>
	
<div class="shoppingCart comWidth">
<div class="shopping_item">
		<h3 class="shopping_tit">我的商品</h3>
	
		<div class="shopping_cont padding_shop">
			正在出售
		</div>
	</div>
		<div class="hr_25"></div>
<div class="products_list screening_list_more clearfix">
		<c:forEach var="goods" items="${goodsList}">
			<div class="item" id="${goods.goodsId}">
				<div class="item_cont">
					<div class="img_item">
						<a href="${base}/goods/detail/${goods.goodsId}.htm"><img src="${base}${goods.image}" alt=""></a>
					</div>
					<p><a href="#">${goods.title}</a></p>
					<p class="money">￥${goods.price}</p>
				<p><a href="javascript:;" name="${goods.goodsId}" class="addCar " onclick="offshelve(this)">下架商品</a></p>
				</div>
			</div>
		</c:forEach>
		</div>
</div>
 <c:import url="../../include/footer.jsp"/>
</body>
  
<script>
   function offshelve(obj)
   {   
	  
	   var goodsId=obj.name;
	   var goodsDIV=$("#"+goodsId);
	  
	 
	   $.ajax({
			 url:base+"/goods/offshelve.htm",
			 type:"post",
			 data:{
				   "goodsId":goodsId,
				   "state":"已下架",
				  },
				  success:function(data)
				    {
					  if(data!=null)
						  {
						   goodsDIV.remove();
						  }
				    }
				  
		     }); 

   }
</script>
</html>