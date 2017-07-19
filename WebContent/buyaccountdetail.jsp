<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<a href="<%=request.getContextPath() %>/goods/querryallgoods.htm">《《《--返回首页</a>
<br>

<%-- <input type="text"  name="goodsid" value="${goods.goodsid}"> --%>
<img src="<%=request.getContextPath() %>${goods.picture}" width="200px" height="400px"><br>
标题         ${goods.title}<br>
价格      ${goods.price}<br>
区服       ${goods.area}<br>
职业      ${goods.occupation}<br>
角色等级       ${goods.characterlevel}<br>
装备属性        ${goods.charactereqs}<br>
纹章        ${goods.wenzhang}<br>
护符       ${goods.hufu}<br>
翅膀/尾巴        ${goods.chibangweiba}<br>
坐骑/宠物       ${goods.zuojichongwu}<br>
金币/点券       ${goods.jinbidianquan}<br>
背包/仓库        ${goods.beibaocangku} <br>
竞技场等级    ${goods.pklevel}<br>
满级角色数量       ${goods.fulllevelnums}<br>
复活      ${goods.fuhuo}<br>
商品数量      ${goods.goodsnums}<br>
类型      ${goods.categoryid}<br>
其他        ${goods.else1}<br>                                          

<div id="goodsid">${goods.goodsid}</div>
 
<a href="<%=request.getContextPath() %>/order/goodsmakeorderandorderdetail.htm?goodsid=${goods.goodsid}&price=${goods.price}&goodsnums=${goods.goodsnums}&goodstitle=${goods.title}&picture=${goods.picture}"><img src="<%=request.getContextPath() %>/picture/lijigoumai.png" width="100px" height="30px"></a>
<a href="<%=request.getContextPath() %>/shoppingcar/addshoppingcar.htm?goodsid=${goods.goodsid}&price=${goods.price}&goodsnums=${goods.goodsnums}&goodstitle=${goods.title}&category_id=${goods.categoryid}&picture=${goods.picture}"><img src="<%=request.getContextPath() %>/picture/gouwuche.png" width="100px" height="30px"></a>

<table><tr><td><input type="hidden" id="price" name="price" value=" ${goods.price}"></td><td><a href="<%=request.getContextPath() %>/shoppingcar/selectshoppingcar.htm"><h2>我的购物车  </h2></a><td>购物车中数量</td><td>${shoppingcarnums}</td></tr></table>

<br>
<script type="text/javascript">
$("addshoppcar").click(function()
		{
	var goodid=$("goodsid").html();
	$.ajax({		
		type:"post",
		data:{"goodsid":goodsid},
		url:"shoppingcar/addshoppingcar.htm",
		dataType:"text",
		success:function(data)
		{
			
		
		}
			
		
	} );
		});
</script>
</body>
</html>