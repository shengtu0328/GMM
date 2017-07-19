<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.sw.entity.Goods" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%Goods goods = (Goods)request.getAttribute("goods"); %>
<%=goods.getArea() %>
<form action="<%=request.getContextPath() %>/goods/modifyaccountbyPager.htm?detailId=${goods.goodsid}" method="post">
<input type="text"  name="goodsid" value="${goods.goodsid}"> 
标题<input type="text" name="title" value="${goods.title}"><br>
价格<input type="text" name="price" value="${goods.price}"><br>
区服<input type="text" name="area" value="${goods.area}"><br>
职业<input type="text" name="occupation" value="${goods.occupation}"><br>
角色等级<input type="text" name="characterlevel" value="${goods.characterlevel}"><br>
装备属性<input type="text" name="charactereqs"value="${goods.charactereqs}"><br>
纹章<input type="text" name="wenzhang" value="${goods.wenzhang}"><br>
护符<input type="text" name="hufu" value="${goods.hufu}"><br>
翅膀/尾巴<input type="text" name="chibangweiba" value="${goods.chibangweiba}"><br>
坐骑/宠物<input type="text" name="zuojichongwu" value="${goods.zuojichongwu}"><br>
金币/点券<input type="text" name="jinbidianquan"value="${goods.jinbidianquan}"><br>
背包/仓库<input type="text" name="beibaocangku"value="${goods.beibaocangku}"><br>
竞技场等级<input type="text" name="pklevel"  value="${goods.pklevel}"><br>
满级角色数量<input type="text" name="fulllevelnums" value="${goods.fulllevelnums}"><br>
复活<input type="text" name="fuhuo" value="${goods.fuhuo}"><br>
商品数量<input type="text" name="goodsnums" value="${goods.goodsnums}"><br>
类型<input type="text" name="category_id" value="${goods.category_id}"><br>
其他<input type="text" name="else1" value="${goods.else1}"><br>
<input type="submit" value="修改">
</form>
</body>
</html>