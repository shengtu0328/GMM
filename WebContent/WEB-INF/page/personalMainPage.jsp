<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<%@ include file="../../include/taglib.jsp"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link href="${res}/css/bootstrap.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${res}/js/jquery-1.11.3.min.js"></script>
<style type="text/css">

.header{
height:98px;
}
.siderbar{
    border-right: 1px solid #ddd;
    background-color: #f9f9f9;
    width: 245px;
    height:944px;
        text-align: center;
}
.main{
    margin: 0 -1px;
    border-left: 1px solid #ddd;
    height:944px;
    width:700px;
}
.fl{
     float: left; 

}
.fr{
     float: right; 

}
.main-content{
    background-color: #f5f7fa;
    border: 1px solid #ddd;
    box-shadow: none;

}
.user{
    display: block;
    margin: -68px auto 0;
    width: 128px;
    height: 128px;
    border-radius: 64px;
    border: 1px solid #ddd;
    background-color: #fafafa;
    text-align: center;
    overflow: hidden;
}
.pic{
    width: 112px;
    height: 112px;
    border-radius: 56px;
    border: none;
    margin: 7px auto 0;
}
.cover{
    position: relative;
    display: block;
    background-color: rgba(0,0,0,0.5);
    color: #fff;
    width: 112px;
    height: 112px;
    border-radius: 56px;
    margin: 16px auto 0;
    padding-top: 32px;
    top: 0;
    text-align: center;
    top: -128px;
    display: none;
}
.d{
margin: 8px auto 0;
}
.name{
	color: #666;
    height: 32px;
    line-height: 32px;
    font-size: 20px;
    font-weight: bold;
    text-shadow: 0 1px 3px rgba(0,0,0,0.3);
    overflow: hidden;
}
.btn-search {
    padding: 0;
    width: 26px;
    height: 26px;
    border: none;
    background: url(img/sousuo.png) -150px 0 no-repeat;
    text-indent: 999px;
    font-size: 12px;
    line-height: 26px;
    cursor: pointer;
}
.gongneng{
	margin: 50px auto 0;
	border: 1px solid #ddd;

}
.item{
     margin: 16px auto; 
     padding: 0 0 0 16px; 
    overflow: visible;
    position: relative;
    width: auto;
    height: 36px;
    color: #666;
    text-align: left;
    font-size: 14px;
    line-height: 34px;
/*     margin: 0; */
/*     padding: 0; */
}

.item a{
    color: #999;
    padding-left:70px; 
    
}
.item.active a{
    color: #92c202;
}
.tab{
	border-image-source: initial;
    border-image-slice: initial;
    border-image-width: initial;
    border-image-outset: initial;
    border-image-repeat: initial;
    font-weight: normal;
    font-size: 18px;
    font-family: Michroma, 'Segoe UI Light', 'Segoe UI', 'Segoe UI WP', 'Microsoft Jhenghei', 微软雅黑, sans-serif, Times;
    cursor: default;
    float: left;
    overflow: visible;
    padding: 0px 8px;
    border-width: initial;
    border-style: none;
    border-color: initial;
}
.aaa{
 position: absolute;
}
</style>
 <script type="text/javascript">

function myPost(){
	$("#myframe").attr("src","../myPost")
	$(".item").removeClass("active");
	$(".item").eq(1).addClass("active");
}

function editUrl(url){
	var ifm= document.getElementById("iframepage");   
	myframe.src=url;
}
</script> 
</head>
<body>
<%-- <jsp:include page="nav.jsp"/> --%>
<div class="container">
	<div class="row clearfix"style="padding: 50px 0 50px" >
		<div class="col-xs-1">
		</div>
		<div class="col-xs-10">
			<div class="header"></div>
			<div class="main-content clearfix">
			<div class="siderbar fl">
				<a class="user">
					<img alt="140x140" id='Pic'class="pic" src="${res}/images/icon/logo.png" />
				</a>
				<div class="d">
						<a class="name">${NickName}</a>
				</div>
				<div class="gongneng clearfix">
					<div class="item clearfix active">
					<a href="#"  onclick="editUrl('${base}/user/myWallet.htm')"  class="tab">我的钱包</a>
					</div>
					<div class="item clearfix">
					<a onclick="myPost()" class="tab">我发布的</a>
					</div>
					<div class="item clearfix">
					<a href="#" class="tab">我的订单</a>
					</div>
					
				</div>
			</div>
			<div class="main fr">
				<iframe id="myframe" src="../personalInfo" width="698px" height="900px"></iframe>
			</div> 
			
			</div>
		</div>
	</div>
</div>


</body>
</html>