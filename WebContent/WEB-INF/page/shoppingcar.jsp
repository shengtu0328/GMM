<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>购物车</title>
<%@ include file="../../include/taglib.jsp"%>
<link type="text/css" rel="stylesheet" href="${res}/css/mainandreset.css">
<link type="text/css" rel="stylesheet" href="${res}/css/shoppingcar.css">


<script type="text/javascript" src="${res}/js/jquery-1.11.3.min.js"></script>

<script type="text/javascript" src="${res}/js/shoppingcar.js"></script>
</head>
<body>
 <c:import url="../../include/top.jsp"/>
<div class="comWidth font-size">
<table id="cartTable">
	<thead>
          <tr>
          <th><label><input class="check-all check" type="checkbox"/>&nbsp;全选</label></th>
          <th>商品信息</th>
          <th>单价</th>
          <th>数量</th>
	      <th>小计</th>
	      <th>操作</th>
          </tr>
	</thead>
	<tbody>
		<c:forEach var="goods" items="${shoppingcarList}">
		<tr>
			<td class="checkbox"><input class="check-one check"name="${goods.area}" type="checkbox"/></td>
		    <td class="goods"><img class="picture" src="<%=request.getContextPath()%>${goods.image}"/><span> ${goods.area}${goods.goodsTitle}</span></td>
		    <td class="price">${goods.price}</td>
		    <td class="count"><span class="reduce"></span><input class="count-input" name="${goods.goodsId}" onblur="changeNums(this)" type="text" value="${goods.goodsNums}"><span class="add">+</span></td>
		    <td class="subtotal">${goods.price*goods.goodsNums}</td>
            <td class="operation"><span class="delete">删除</span></td>
            <td style="display:none"><span id="goodsId">${goods.goodsId}</span></td>
            <td style="display:none"><span id="goodsId">${goods.area}</span></td>
		</tr>
		</c:forEach>			
	</tbody>
</table>
<div class="foot" id="foot">
    <label class="fl select-all"><input type="checkbox"  class="check-all check"/>&nbsp;全选</label>
    <a class="fl delete" id="deleteAll" href="javascript:;">删除</a>
    <div class="fr closing" id="account">结 算</div>
    <div class="fr total">合计：￥<span id="priceTotal">0.00</span></div>
    <div class="fr selected" id="selected">已选商品<span id="selectedTotal">0</span>件<span class="arrow up">︽</span><span class="arrow down">︾</span></div>
    <div class="selected-view">
        <div id="selectedViewList" class="clearfix">
            <div><img src="images/1.jpg"><span>取消选择</span></div>
        </div>
        <span class="arrow">◆<span>◆</span></span>
    </div>
</div>
</div>
<%@include file="../../include/footer.jsp" %>
</body>
</html>