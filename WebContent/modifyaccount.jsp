<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<<%-- form action="<%=request.getContextPath() %>/goods/modifyaccountbyPager.htm" id="qForm" method="post"> --%>
<input type="hidden" id="pageNum" name="pageNum" value="1">

	<table width="90%">
	
		<tr>
		<td>价格</td>
		<td>区服</td>
		<td>职业</td>
		<td>角色等级</td>
		<td>装备属性</td>
		<td>纹章</td>
		<td>护符</td>
		<td>翅膀/尾巴</td>
		<td>坐骑/宠物</td>
		<td>金币/点券</td>
		<td>背包/仓库</td>
		<td>竞技场等级</td>
		<td>满级角色数量</td>
		<td>商品数量</td>
		<td>装备属性</td>
		<td>类型</td>
		</tr>   
	
	
	
		<c:forEach var="e" items="${pager.dataList}">
		<tr>
		<td>${e.title}</td>
	    <td>${e.area} </td>
	    <td>${e.area} </td>
	    <td>${e.area} </td>
	    <td>${e.area} </td>
	    <td>${e.area} </td>
	    <td>${e.area} </td>
	    <td>${e.area} </td>
	    <td>${e.title}</td>
	    <td>${e.area} </td>
	    <td>${e.area} </td>
	    <td>${e.area} </td>
	    <td>${e.area} </td>
	    <td>${e.area} </td>
	      <td>${e.goodsid} </td>
	    <td>${e.goodsid} </td>
	 <td><a href="<%=request.getContextPath() %>/goods/accountdetial.htm?modifyId=${e.goodsid}" >修改</a></td> 
		</tr>
		</c:forEach>
	</table>
	<select  name="pageSize">
	
	<option value="3" ${pager.pageSize==3?'selected':''}   >3</option>
	<option  value="5" ${pager.pageSize==5?'selected':''}         >5</option>
	</select>
</form>



<div>
共${pager.totalCount}条记录  <a href="#" onclick="firstPage();">首页 </a>&nbsp
<a href="#" onclick="prevPage();">上一页 </a>&nbsp
<a href="#" onclick="nextPage();">下一页 </a>&nbsp
<a href="#" onclick="lastPage();">尾页 </a>&nbsp
<a href="#" onclick="jump();">跳转到</a>第<input type="text" id="jump" style="width:15px" value="${pager.currentPage}">页
</div>

</body>

<script type="text/javascript">
var currentPage =${pager.currentPage};
var totalPage = ${pager.totalPage};
var formObj = document.getElementById("qForm");

function firstPage(){
	if(currentPage == 1){
		alert("当前已经是第一页");
	}else{
		document.getElementById("pageNum").value=1;
		formObj.submit();
	}
}
function nextPage(){
	if(currentPage == totalPage){//判断已经是最后页
		alert("已经是最后页");
	}else{
		document.getElementById("pageNum").value=currentPage+1;
		formObj.submit();
	}
}
function prevPage(){
	if(currentPage == 1){//判断是否首页
		alert("已经是首页");
	}else{
		document.getElementById("pageNum").value=currentPage-1;
		formObj.submit();
	}
}
function lastPage(){
	if(currentPage == totalPage){//判断是否首页
		alert("已经是最后页");
	}else{
		document.getElementById("pageNum").value=totalPage;
		formObj.submit();
	}
}
function jump(){
	var jumpPage = document.getElementById("jump").value;
	var re = /^([0-9])/;
	if(!re.test(jumpPage)){
		alert("所填页数不符合规范");
		return;
		}
	
	if(jumpPage < 1){//判断是否首页
		jumpPage = 1;
	}
	if(jumpPage > totalPage){
		jumpPage = totalPage;
	}
	
	document.getElementById("pageNum").value=jumpPage;
	formObj.submit();
	
}
</script>



</html>