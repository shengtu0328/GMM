<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <ul type="square">
     <li><a href="<%=request.getContextPath() %>/goods/querryallgoodsbycategoryPage2.htm?category=1" target ="frame3">管理帐号商品</a></li>
     <li><a href="<%=request.getContextPath() %>/goods/querryallgoodsbycategoryPage2.htm?category=2" target ="frame3" >管理金币商品</a></li>
     <li><a href="<%=request.getContextPath() %>/goods/querryallgoodsbycategoryPage2.htm?category=3" target ="frame3">管理装备商品</a></li>
     <li><a href="goods/querryaccountsbyPager.htm"  target ="frame3">管理分类</a></li>
     <li><a href="goods/querryaccountsbyPager.htm"  target ="frame3">管理订单</a></li>
     
     
     <li><a href="goods/querryaccountsbyPager.htm"  target ="frame3">查看商品【帐号】信息</a></li>
     <li><a href="addaccount.jsp"  target ="frame3">添加商品【帐号】信息</a></li>
     <li><a href="goods/modifyaccountbyPager.htm" target ="frame3">修改商品【帐号】信息</a></li>
     <li><a href="goods/deleteaccountbyPager.htm"target="frame3">删除商品【帐号】信息</a></li>
     
      <li><a href="goods/querygoods"  target ="frame3">查看商品【装备】信息</a></li>
     <li><a href="addequipments.jsp"  target ="frame3">添加商品【装备】信息</a></li>
     <li><a href="goods/querygoods" target ="frame3">修改商品【装备】信息</a></li>
     <li><a href="goods/deletegoods"target="frame3">删除商品【装备】信息</a></li>
     
      <li><a href="goods/querygoods"  target ="frame3">查看商品【金币】信息</a></li>
     <li><a href="addgold.jsp"  target ="frame3">添加商品【金币】信息</a></li>
     <li><a href="goods/querygoods" target ="frame3">修改商品【金币】信息</a></li>
     <li><a href="goods/deletegoods"target="frame3">删除商品【金币】信息</a></li>
     
     
     <li><a href="goods/querygoods"  target ="frame3">查看商品分类</a></li>
     <li><a href="addcategory.jsp"  target ="frame3">添加商品分类</a></li>
     <li><a href="goods/querygoods" target ="frame3">修改商品分类</a></li>
     <li><a href="goods/deletegoods"target="frame3">删除商品分类</a></li>
  </ul>
</body>
</html>