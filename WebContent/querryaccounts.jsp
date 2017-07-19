<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
table tr td,th{border:1px solid #000;}
</style>
</head>
<body>
<form action="<%=request.getContextPath() %>/goods/querryaccountsbyPager.htm" id="qForm" method="post">
<input type="hidden" id="pageNum" name="pageNum" value="1">

	<table width="90%"  summary="账号核管理table">
	   <caption>账号管理</caption>
		<tr>
		<td>标题</td>
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
		<td>复活</td>
		<td>商品数量</td>
		<td>其他</td>
		<td>图片</td>
		</tr>   
	
	<!-- 
	标题<input type="text" name="title"><br>
价格<input type="text" name="price"><br>
区服<select name="area">
      <option value="华东">华东</option>
      <option value="华南">华南</option>
      <option value="华北">华北</option>
    </select><br>
职业<input type="text" name="occupation"><br>
角色等级<input type="text" name="characterlevel"><br>
装备属性<input type="text" name="charactereqs"><br>
纹章<input type="text" name="wenzhang"><br>
护符<input type="text" name="hufu"><br>
翅膀/尾巴<input type="text" name="chibangweiba"><br>
坐骑/宠物<input type="text" name="zuojichongwu"><br>
金币/点券<input type="text" name="jinbidianquan"><br>
背包/仓库<input type="text" name="beibaocangku"><br>
竞技场等级<input type="text" name="pklevel"><br>
满级角色数量<input type="text" name="fulllevelnums"><br>
复活<input type="text" name="fuhuo"><br>
商品数量<input type="text" name="goodsnums"><br>
类型<input type="text" name="category_id"><br>
其他<input type="text" name="else1"><br>
<input type="file" name="imageFile" />
<input type="submit" value="上传">
<input type="submit" value="提交"> -->
	
	
		<c:forEach var="e" items="${page.dataList}">
		<tr>
		<td>${e.title}</td>
	    <td>${e.price}</td>
	    <td>${e.area}</td>	
	    <td>${e.occupation} </td>
	    <td>${e.characterlevel} </td>
	    <td>${e.charactereqs} </td>
	    <td>${e.wenzhang} </td>
	    <td>${e.hufu} </td>
	    <td>${e.chibangweiba} </td>
	    <td>${e.zuojichongwu} </td>
	    <td>${e.jinbidianquan} </td>
	    <td>${e.beibaocangku} </td>
	    <td>${e.pklevel} </td>
	    <td>${e.fulllevelnums} </td>
	    <td>${e.fuhuo} </td>
	    <td>${e.goodsnums} </td>
	    <td>${e.else1} </td>
	    <td><img src="<%=request.getContextPath() %>${e.picture}" width="80px" height="80px"></td>
		</tr>
		</c:forEach>
	</table>
	
	
	<select  name="pageSize">
	
	<option  value="5"     ${page.pageSize==5?'selected':''}   >5</option> 
	<option value="3" ${page.pageSize==3?'selected':''}    >3</option>
	 <%--  ${pager.pageSize==5?'selected':''} 是用来后台传过来时候需要的判断  保证了上次查了多少页 点下一页时 刷新出来的页数和你上次查的一样    select有默认值 就是 第一个选项--%>
	</select>
</form>
	

<div>
共${page.totalCount}条记录  <a href="#" onclick="firstPage();">首页 </a>&nbsp
<a href="#" onclick="prevPage();">上一页 </a>&nbsp
<a href="#" onclick="nextPage();">下一页 </a>&nbsp
<a href="#" onclick="lastPage();">尾页 </a>&nbsp
<a href="#" onclick="jump();">跳转到</a>第<input type="text" id="jump" style="width:15px" value="${page.currentPage}">页
</div>
</body>

<script type="text/javascript">
var currentPage =${page.currentPage};
var totalPage = ${page.totalPage};
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