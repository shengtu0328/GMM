<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-1.11.3.min.js"></script>
<style>

.showgoods        /* 商品展示的盒模型 */
	{
	float: left;
	border: #9ca5cc 1px solid ;
	padding:10px;
	margin:5px;
	width: 200px;
	height:400px;
    }
a:hover{color:red;}   /* 鼠标放在a标签会变颜色 */
.dropdown {               /*   下拉菜单 */
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    padding: 12px 16px;
    z-index: 1;
}

.dropdown:hover .dropdown-content {
    display: block;
}    

 .Center{
    text-align:center;              /* 位置居中的样式 */
  }

body
{   font-family:"Microsoft Yahei";
	background-color:#b0c4de;
}    
p{text-indent:2em;}
#box1{margin-bottom:30px;}/*   两个盒模型之间的间距 */
</style>
<title>主界面</title>

</head>





<body>
<div class="headbar">
   <div class="">
   </div>
</div>

<div class="dropdown">
  <span>商品分类</span>
  <div class="dropdown-content">
    <p><a href="<%=request.getContextPath() %>/goods/querryallgoodsbycategoryPage2.htm?category=1&zhuye=1">帐号</a></p>
    <p><a href="<%=request.getContextPath() %>/goods/querryallgoodsbycategoryPage2.htm?category=2&zhuye=1">金币</a></p>
    <p><a href="<%=request.getContextPath() %>/goods/querryallgoodsbycategoryPage2.htm?category=3&zhuye=1">装备</a></p>
  </div>
</div>


 <div id=>用户名<%=request.getSession().getAttribute("username")%></div>
 <div id="loginregister">
<a href="<%=request.getContextPath() %>/login.jsp">登录</a>
<a href="<%=request.getContextPath() %>/userregister.jsp">注册</a>
</div>
<div id="zhuxiao"><a href="<%=request.getContextPath() %>/user/zhuxiao.htm">注销</a></div>

<a href="<%=request.getContextPath() %>/order/selectmyorder.htm">我的订单</a>
<p align="center" style="letter-spacing:10px;"><b><font size="3">龙之谷虚拟物品交易平台</font></b></p>
<div align="right"><input  type="text" name="search" ><input type="button"value="搜索"></div>
<a href="<%=request.getContextPath() %>/shoppingcar/selectshoppingcar.htm">我的购物车</a>
<hr width="100%" size="1" color="#00ffee"/>
<form action="<%=request.getContextPath()%>/goods/querryallgoods.htm" id="qForm" method="post">
<input type="hidden" id="pageNum" name="pageNum" value="1">
		<c:forEach var="e" items="${page.dataList}">
		<div class="showgoods" >
		<h4 style="color:black" align="center">${e.title}</h4>
		<h3 style="color:red" align="center">￥${e.price}</h3>
		<h4 style="color:black" align="center">${e.area}</h4>
		
 <h4 style="color:yellow" align="center">${e.goodsid}</h4> 
						<h4 style="color:yellow" align="center">${e.categoryid}</h4>
	 <a href="<%=request.getContextPath()%>/goods/goodsdetail.htm?goodsid=${e.goodsid}&category_id=${e.categoryid}"><img src="../${e.picture}" width="200px" height="250px"></a>  
		</div>
		</c:forEach>

<br>
	<select  name="pageSize">
	<option value="8" ${page.pageSize==8?'selected':''} >8</option>
	<option  value="5" ${page.pageSize==5?'selected':''} >5</option>
	</select>
</form>
<br>
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

 $(function(){ 
	 var username='<%=session.getAttribute("username")%>';  
		if(username=="null" || username=="")
			{
			/* alert("空");
			alert(username); */
			$("#loginregister").show();
			$("#zhuxiao").hide();
			}
		else 
			{
		/* 	alert("不为空");
			alert(username); */
			$("#loginregister").hide();
			}
		}); 
/*  	$(function(){ 
		var userName="xiaoming11111"; 
		alert(userName); 
		});  */
		/* $(document).ready(function(){ 

			var userName="xiaoming"; 

			alert(userName); 
			});   */
</script>
</html>