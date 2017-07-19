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
<form action="<%=request.getContextPath() %>/shoppingcar/addshoppingcar.htm">
<table>
<tr><td><input type="hidden" name="goodsid" value="${goods.goodsid}"></td></tr>
<tr><td>标题</td><td><input type="text" name="goodstitle" value="${goods.title}" readonly></td></tr>
<tr><td>价格</td><td><input type="text" name="price" value="${goods.price}" readonly></tr>
<tr><td>区服</td><td><input type="text" name="area" value="${goods.area}" readonly></tr>
<tr><td>比列  </td><td><input type="text" name="rate" value="${goods.rate}" readonly></tr>
<tr><td>商品数量</td><td><input type="text"  id="allgoodsnums"   name="allgoodsnums" value="${goods.goodsnums}" readonly></td></tr>
<tr><td>类型</td><td><input type="text" name="category_id" value="${goods.category_id}" readonly></tr>
<tr><td>其他</td><td><input type="text" name="else1" value="${goods.else1}" readonly></tr>
<!-- <tr><td><input type="hidden" name="goodsnums1" value="1" readonly></td></tr> -->
<tr><td>请选择数量</td> <td><input type="text" id="goodsnums" name="goodsnums" value="1"  onblur="goodsnumss();"></td></tr>
</table>
<input type="submit" value="加入购物车">
</form>


<%--  
标题         ${goods.title}<br>
价格      ${goods.price}<br>
区服       ${goods.area}<br>
比列         ${goods.rate}<br> 
商品数量      ${goods.goodsnums}<br>
类型      ${goods.category_id}<br>
其他        ${goods.else1}<br>     --%>                                      

<!-- 请选择数量   <input type="text" id="goodsnums"  value="1"  onblur="goodsnums()">  -->

<%-- 
 <input type="hidden"id="allgoodsnums" value=" ${goods.goodsnums}"> --%>

<!-- <tr><td>请选择数量</td> <td><input type="text" id="goodsnums"  value="1"  onblur="goodsnums()"></td></tr> -->
<a href="<%=request.getContextPath() %>/order/goodsmakeorderandorderdetail.htm?goodsid=${goods.goodsid}&price=${goods.price}&goodsnums=${goods.goodsnums}&goodstitle=${goods.title}"><img src="<%=request.getContextPath() %>/picture/lijigoumai.png" width="100px" height="30px"></a>
<%-- <a href="<%=request.getContextPath() %>/shoppingcar/addshoppingcar.htm?idd=${goods.goodsid}&price=${goods.price}&goodsnums=${goods.goodsnums}&goodstitle=${goods.title}"><img src="<%=request.getContextPath() %>/picture/gouwuche.png" width="100px" height="30px"></a> --%>

<table><tr><td><a href="<%=request.getContextPath() %>/shoppingcar/selectshoppingcar.htm"><h2>我的购物车  </h2></a><td>购物车中数量</td><td>${shoppingcarnums}</td></tr></table>

<br>

</body>
<script type="text/javascript">
function goodsnumss(){
	var goodsnums = parseInt(document.getElementById("goodsnums").value);
	var allgoodsnums = parseInt(document.getElementById("allgoodsnums").value);
	/* alert(goodsnums);
	alert(allgoodsnums);  */
	var re = /^([0-9])/;
	if(!re.test(goodsnums))
	{
		alert("所填数量不符合规范");
		return;
	}
	if(goodsnums<1)
	{
		goodsnums = 1;
		alert("请选择数量");
	}
	if(goodsnums > allgoodsnums)
	{   
		alert("超过最大数量");
		goodsnums = allgoodsnums;
	}
	document.getElementById("goodsnums").value=goodsnums;
/* alert(goodsnums);  */
}
</script>

</html>