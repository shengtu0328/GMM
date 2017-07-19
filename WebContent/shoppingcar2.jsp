<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/res/css/reset.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/res/css/main.css">
<link type="text/css" rel="stylesheet" href="<%=request.getContextPath() %>/res/css/shoppingcar.css">
<script type="text/javascript" src="<%=request.getContextPath() %>/res//js/shoppingcar.js"></script>
</head>
<body>
<div class="headBar">
	<div class="topBar">
	   <div class="comWidth">
	      <div class="leftArea">
	        <a href="#" class="collection">收藏G买卖</a>
	      </div>
	      <div class="rightArea">
	                      用户名<a href="" class="collection">xrq</a><a href="" class="collection"><a href="" class="collection">[注销]</a><a href="" class="collection">[我的订单]</a>
	      </div>
	   </div>
	</div>
	<div class="logoBar">
	    <div class="comWidth">
	       <div class="logo fl">
	          <a href="#"><img src="<%=request.getContextPath() %>/picture/icon/logo.png" alt="G买卖" ></a>
	       </div>
	       <div class="logoword fl">
	        <a href="#"><img src="<%=request.getContextPath() %>/picture/icon/G买卖.png" alt="G买卖" ></a>
	       </div>
	       <div class="search_box fl">
                <input type="text" class="search_text ">
                <input type="button" value="搜 索" class="search_btn">	       
	       </div>
	    </div>
	</div>
</div>
<div class="comWidth">
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
		<c:forEach var="e" items="${shoppingcarlist}">
		<tr>
			<td class="checkbox"><input class="check-one check" type="checkbox"/></td>
		    <td class="goods"><img class="picture" src="<%=request.getContextPath()%>${e.picture}"/><span>${e.goodstitle}</span></td>
		    <td class="price">${e.price}</td>
		    <td class="count"><span class="reduce"></span><input class="count-input" type="text" value=${e.goodsnums}><span class="add">+</span></td>
		    <td class="subtotal">${e.price}*${e.goodsnums}</td>
            <td class="operation"><span class="delete">删除</span></td>
		</tr>
		</c:forEach>			
	</tbody>
</table>
<div class="foot" id="foot">
    <label class="fl select-all"><input type="checkbox" class="check-all check"/>&nbsp;全选</label>
    <a class="fl delete" id="deleteAll" href="javascript:;">删除</a>
    <div class="fr closing">结 算</div>
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
</body>
</html>