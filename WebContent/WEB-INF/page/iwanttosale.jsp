<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我要卖</title>
<%@ include file="../../include/taglib.jsp"%>
<link href="${res}/css/bootstrap.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${res}/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="${res}/js/bootstrap.min.js"></script>
<script type="text/javascript">
function notnull(obj)
{  
	var flag = false;
    var id=obj;
	if ($("#"+id).val()=="")
		{
		  $("#fg"+id).attr("class","form-group has-error has-feedback");
		  $("#icon"+id).attr("class","glyphicon glyphicon-remove form-control-feedback");
		  $("#nnhb"+id).show()
		  flag = true;
		}
	else 
		{	
		  $("#fg"+id).attr("class","form-group has-success has-feedback");
		  $("#icon"+id).attr("class","glyphicon glyphicon-ok form-control-feedback");
		  $("#nnhb"+id).hide();
		  
		}
	return flag;
}
/* 三个表单提交公用的js */
function doSubmit(obj)
{  /*  var formObj = document.getElementById(obj.id.charAt(0)+"form");
    alert(formObj); */
    var formObj = $('#'+obj.id.charAt(0)+"form");
    
   /*  alert(formObj); */
   /*  var formObj2 = $('#'+obj.id.charAt(0)+"form");
    alert(formObj2); */
	var i=0;
/* 	var id=obj.id;
	var catergory=id.substr(0,1);
	var formId=catergory+"form";
	alert(formId); */
	/* alert($("#aform input").length);
	alert($("#"+formId).find("input").length); */
	formObj.find("input").each(function () { 
	     if(notnull(this.id))
		   {
		   i++;
		   } 
	})/* 
	alert(i) */
	if(i==0)
		{
		
		formObj.submit();
		}
}



</script>
</head>
<body>

<script type="text/javascript">
$(function(){
	$("#back").click(function(){
		 window.history.back();
		});
})
</script>
<div id="back">
返回
</div>
	<div class="container ">
		<div class="row">
			<div class="col-xs-4"></div>
			<div class="col-xs-4">
				<!-- 选项卡组件（菜单项nav-pills）-->

				<div class="row">
					<div class="col-xs-offset-1">
						<img alt="" src="${res}/images/iwanttosale.png"
							style="margin-top: 40px;">


					</div>
				</div>
				<div class="center-block " style="width: 52%; margin-top: 40px">
					<ul id="myTab" class="nav nav-tabs " role="tablist">
						<li class="active"><a href="#account" role="tab" data-toggle="tab">账号</a></li>
						<li><a href="#gold" role="tab" data-toggle="tab">金币</a></li>
						<li><a href="#equipment" role="tab" data-toggle="tab">装备</a></li>
					</ul>
				</div>
				<!-- 选项卡面板 -->
				<div id="myTabContent" class="tab-content center-block"
					style="width: 100%">
					<div class="tab-pane active" id="account">

						<form:form modelAttribute="account" id="aform"
							class="form-horizontal" action="save.htm"
							enctype="multipart/form-data">
							<div class="form-group " id="fgatitle">
								<label for="title" class="col-xs-3 control-label">标题</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="title" id="atitle"
										placeholder="请填写标题" onblur="notnull(this.id)" />
									<span class="help-block" id="nnhbatitle" style="display: none">标题不能为空</span>
									<span class="" id="iconatitle"></span>
								</div>
							</div>
							<div class="form-group " id="fgaprice">
								<label for="price" class="col-xs-3 control-label">价格（元）</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="price" id="aprice"
										placeholder="请填写价格" onblur="notnull(this.id)" />
									<span class="help-block" id="nnhbaprice" style="display: none">价格不能为空</span>
									<span class="" id="iconaprice"></span>
								</div>
							</div>
							<div class="form-group">
								<label for="area" class="col-xs-3 control-label">区服</label>
								<div class="col-xs-9">
									<form:select path="area" class="form-control"
										items="${gameAreaList}" itemLabel="areaName"
										itemValue="areaCode" />
								</div>
							</div>
							<div class="form-group">
								<label for="occupation" class="col-xs-3 control-label">职业</label>
								<div class="col-xs-9">
									<form:select path="occupation" class="form-control"
										items="${gameOccupationList}" itemLabel="occupationName"
										itemValue="occupationCode" />
								</div>

							</div>
							<div class="form-group " id="fglusername">
								<label for="characterLevel" class="col-xs-3 control-label">角色等级</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="characterLevel" id=""
										placeholder="请填写角色等级" onblur="notnull(this.id)" />
									<span class=""></span> <span class="help-block"
										id="nnhblusername" style="display: none">用户名不能为空</span>
								</div>
							</div>

							<div class="form-group " id="">
								<label for="fuhuo" class="col-xs-3 control-label">复活</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="fuhuo" id=""
										placeholder="请填写复活" onblur="notnull(this.id)" />
									<span class=""></span>
								</div>
							</div>
							<div class="form-group " id="fglusername">
								<label for="dress" class="col-xs-3 control-label">套装/时装</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="dress" id=""
										placeholder="请填写套装/时装" onblur="notnull(this.id)" />
									<span class=""></span>
								</div>
							</div>
							<div class="form-group " id="fglusername">
								<label for="characterEqs" class="col-xs-3 control-label">装备属性</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="characterEqs" id=""
										placeholder="请填写装备属性" onblur="notnull(this.id)" />
									<span class=""></span>
								</div>
							</div>
							<div class="form-group " id="fglusername">
								<label for=wenzhang class="col-xs-3 control-label">纹章</label>
								<div class="col-xs-9">
									<form:input type="text" class="form-control" path="wenzhang" id=""
										placeholder="请填写纹章" onblur="notnull(this.id)" />
									<span class=""></span>
								</div>
							</div>
							<div class="form-group " id="fglusername">
								<label for="hufu" class="col-xs-3 control-label">护符</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="hufu" id=""
										placeholder="请填写护符" onblur="notnull(this.id)" />
									<span class=""></span>
								</div>
							</div>
							<div class="form-group " id="fglusername">
								<label for="jinbidianquan" class="col-xs-3 control-label">金币/点券</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="jinbidianquan" id=""
										placeholder="请填写金币/点券" onblur="notnull(this.id)" />
									<span class=""></span>
								</div>
							</div>
							<div class="form-group " id="fglusername">
								<label for="zuojichongwu" class="col-xs-3 control-label">坐骑/宠物</label>
								<div class="col-xs-9">
									<form:input type="text" class="form-control" id=""
										path="zuojichongwu" placeholder="请填写坐骑/宠物"
										onblur="notnull(this.id)" />
									<span class=""></span>
								</div>
							</div>
							<div class="form-group " id="fglusername">
								<label for="chibangweiba" class="col-xs-3 control-label">翅膀/尾巴</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="chibangweiba" id=""
										placeholder="请填写翅膀/尾巴" onblur="notnull(this.id)" />
									<span class=""></span>
								</div>
							</div>

							<div class="form-group " id="fglusername">
								<label for="beibaocangku" class="col-xs-3 control-label">背包/仓库</label>
								<div class="col-xs-9"> 
									<form:input class="form-control" path="beibaocangku" id=""
										placeholder="请填写背包/仓库" onblur="notnull(this.id)" />
									<span class=""></span>
								</div>
							</div>
							<div class="form-group " id="fglusername">
								<label for="pkLevel" class="col-xs-3 control-label">竞技场等级</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="pkLevel" id=""
										placeholder="请填写竞技场等级" onblur="notnull(this.id)" />
									<span class=""></span>
								</div>
							</div>
							<div class="form-group " id="fglusername">
								<label for="fullLevelNums" class="col-xs-3 control-label">满级角色数量</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="fullLevelNums" id=""
										placeholder="请填写满级角色数量" onblur="notnull(this.id)" />
									<span class=""></span>
								</div>
							</div>
							<div class="form-group " id="fglusername">
								<label for="goodsElse" class="col-xs-3 control-label">其他</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="goodsElse" id=""
										placeholder="请填写其他信息" onblur="notnull(this.id)" />
									<span class=""></span>
								</div>
							</div>
							<div class="form-group " id="fgafile">
								<label for="file" class="col-xs-3 control-label">上传图片</label>
								<div class="col-xs-9">
									<input type="file" name="file" />
								</div>
							</div>
							<div class="form-group " id="fgatips">
								<label for="gameAccount" class="control-label"
									style="color: red">以下信息请如实填写，仅平台客服可见</label>
							</div>

							<div class="form-group " id="fgacode">
								<label for="gameAccount" class="col-xs-3 control-label">交易暗号</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="code" id="acode"
										placeholder="请输入交易暗号" onblur="notnull(this.id)" />
									<span class=""></span> <span class="" id="iconacode"></span> <span
										class="help-block" id="nnhbacode" style="display: none">交易暗号不能为空</span>
								</div>
							</div>



							<div class="form-group " id="fgagameAccount">
								<label for="gameAccount" class="col-xs-3 control-label">游戏帐号</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="gameAccount"
										id="agameAccount" placeholder="请输入游戏账号"
										onblur="notnull(this.id)" />
									<span class=""></span> <span class="" id="iconagameAccount"></span>
									<span class="help-block" id="nnhbagameAccount"
										style="display: none">游戏账号不能为空</span>
								</div>
							</div>

							<div class="form-group " id="fgagamePassword">
								<label for="gameAccount" class="col-xs-3 control-label">游戏帐号密码</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="gamePassword"
										id="agamePassword" placeholder="请输入游戏帐号密码"
										onblur="notnull(this.id)" />
									<span class=""></span> <span class="" id="iconagamePassword"></span>
									<span class="help-block" id="nnhbagamePassword"
										style="display: none">游戏帐号密码不能为空</span>
								</div>
							</div>



							<div class="form-group " id="fgatelephone">
								<label for="gameAccount" class="col-xs-3 control-label">联系手机</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="telephone"
										id="atelephone" placeholder="请输入联系手机"
										onblur="notnull(this.id)" />
									<span class=""></span> <span class="" id="iconatelephone"></span>
									<span class="help-block" id="nnhbatelephone"
										style="display: none">联系手机不能为空</span>
								</div>
							</div>
							<form:hidden path="categoryId" value="1" />
							<form:hidden path="state" value="正在出售" />
							<form:hidden path="goodsNums" value="1" />
							<div class="form-group ">
								<div class="col-xs-offset-5">
									<button type="button" class="btn btn-primary"
										onclick="doSubmit(this)" id="abutton">出售</button>
								</div>
							</div>
						</form:form>
					</div>


					<!-- 金币 -->
					<div class="tab-pane" id="gold">
						<form:form modelAttribute="gold" class="form-horizontal" id="gform"
							action="save.htm" enctype="multipart/form-data" >
								<div class="form-group " id="fggtitle">
								<label for="title" class="col-xs-3 control-label">标题</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="title" id="gtitle"
										placeholder="请输入标题" onblur="notnull(this.id)"/> 
										<span class="help-block" id="nnhbgtitle" style="display:none">标题不能为空</span>
										<span class="" id="icongtitle"></span>
								</div>
							</div>
							<div class="form-group " id="fggprice">
								<label for="gprice" class="col-xs-3 control-label">价格（元）</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="price"  id="gprice"
										placeholder="请输入价格" onblur="notnull(this.id
										)"/>
									<span class="help-block" id="nnhbgprice" style="display:none">价格不能为空</span>
									<span class="" id="icongprice"></span>
								</div>
							</div>
							<div class="form-group">
								<label for="area" class="col-xs-3 control-label">区服</label>
								<div class="col-xs-9">
									<form:select path="area" class="form-control"
										items="${gameAreaList}"  itemLabel="areaName" itemValue="areaCode" />
								</div>
							</div>
							<div class="form-group " id="fgrate">
								<label for="rate" class="col-xs-3 control-label">比例</label>
								<div class="col-xs-9">
									<form:input  class="form-control" path="rate" 
										placeholder="请输入比例" onblur="notnull(this.id)" />
									<span class="" id="iconrate"></span> 
									<span class="help-block"id="nnhbrate" style="display:none">比例不能为空</span>
								</div>
							</div>
							<div class="form-group " id="fgggoodsNums">
								<label for="goodsNums" class="col-xs-3 control-label">商品数量</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="goodsNums" id="ggoodsNums"
										placeholder="请输入商品数量" onblur="notnull(this.id)" />
									<span class="" id="iconggoodsNums"></span>
									<span class="help-block" id="nnhbggoodsNums" style="display: none">商品数量不能为空</span>
								</div>
							</div>
							<div class="form-group " id="fglusername">
								<label for="goodsElse" class="col-xs-3 control-label">其他</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="goodsElse" id=""
										placeholder="请输入其他信息"  />
								</div>
							</div>
							<div class="form-group " id="fgafile">
								<label for="file" class="col-xs-3 control-label">上传图片</label>
								<div class="col-xs-9">
									<input type="file" name="file" />
								</div>
							</div>
							
							
							
							<div class="form-group " id="fggtips">
								<label for="gameAccount" class="control-label"
									style="color: red">以下信息请如实填写，仅平台客服可见</label>
							</div>
							
							   <div class="form-group " id="fggcode">
								<label for="gameAccount" class="col-xs-3 control-label">交易暗号</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="code" id="gcode"
										placeholder="请输入交易暗号" onblur="notnull(this.id)" />
									<span class=""></span> <span class="" id="icongcode"></span> <span
										class="help-block" id="nnhbgcode" style="display: none">交易暗号不能为空</span>
								</div>
							</div>
							
								<div class="form-group " id="fgggameAccount">
								<label for="gameAccount" class="col-xs-3 control-label">游戏帐号</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="gameAccount" id="ggameAccount"
										placeholder="请输入游戏账号" onblur="notnull(this.id)"/> <span
										class=""></span>
										<span class="" id="iconggameAccount"></span>
										<span class="help-block" id="nnhbggameAccount" style="display: none">游戏账号不能为空</span>
								</div>
								</div>
								
								<div class="form-group " id="fgggamePassword">
								<label for="gameAccount" class="col-xs-3 control-label">游戏帐号密码</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="gamePassword" id="ggamePassword"
										placeholder="请输入游戏账号密码" onblur="notnull(this.id)"/> <span
										class=""></span>
										<span class="" id="iconggamePassword"></span>
										<span class="help-block" id="nnhbggamePassword" style="display: none">账号密码不能为空</span>
								</div>
								</div>
								
								
								<div class="form-group " id="fggstorage">
								<label for="gameAccount" class="col-xs-3 control-label">物品存放处</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="storage" id="gstorage"
										placeholder="请输入物品存放处" onblur="notnull(this.id)"/> <span
										class=""></span>
										<span class="" id="icongstorage"></span>
										<span class="help-block" id="nnhbgstorage" style="display: none">物品存放处不能为空</span>
								</div>
								</div>
								
								
								<div class="form-group " id="fggtelephone">
								<label for="gameAccount" class="col-xs-3 control-label">联系手机</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="telephone" id="gtelephone"
										placeholder="请输入联系手机" onblur="notnull(this.id)"/> <span
										class=""></span>
										<span class="" id="icongtelephone"></span>
										<span class="help-block" id="nnhbgtelephone" style="display: none">联系手机不能为空</span>
								</div>
								</div>
								
								
								
								
								
								
								
						    <form:hidden path="state" value="正在出售" />	
							<form:hidden path="categoryId" value="2" />
							<div class="form-group ">
								<div class="col-xs-offset-5">
									<button type="button" class="btn btn-primary"  onclick="doSubmit(this)" id="gbutton" >出售</button>
								</div>
							</div>
						</form:form>
					</div>
					
					
					
					
					<div class="tab-pane" id="equipment">



						<!-- 	装备 -->
				<form:form modelAttribute="equipment" class="form-horizontal" id="eform"
							action="save.htm" enctype="multipart/form-data">
								<div class="form-group " id="fgetitle">
								<label for="title" class="col-xs-3 control-label">标题</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="title" id="etitle"
										placeholder="请输入标题" onblur="notnull(this.id)"/> 
										<span class="help-block" id="nnhbetitle" style="display:none">标题不能为空</span>
										<span class="" id="iconetitle"></span>
								</div>
							</div>
							<div class="form-group " id="fgeprice">
								<label for="price" class="col-xs-3 control-label">价格（元）</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="price"  id="eprice"
										placeholder="请输入价格" onblur="notnull(this.id)"/>
									<span class="help-block" id="nnhbeprice" style="display:none">价格不能为空</span>
									<span class="" id="iconeprice"></span>
								</div>
							</div>
							<div class="form-group">
								<label for="area" class="col-xs-3 control-label">区服</label>
								<div class="col-xs-9">
										<form:select path="area" class="form-control"
										items="${gameAreaList}"  itemLabel="areaName" itemValue="areaCode" />
								</div>
							</div>
							<div class="form-group " id="fgequipmentName">
								<label for="equipmentName" class="col-xs-3 control-label">装备名</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="equipmentName"
										placeholder="请填写装备名" onblur="notnull(this.id)"/> 
										<span class="iconequipmentName"></span> <span class="help-block" id="nnhbequipmentName"
										style="display: none">装备名不能为空</span>
								</div>
							</div>


							<div class="form-group " id="fgequipmentLevel">
								<label for="equipmentLevel" class="col-xs-3 control-label">装备等级</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="equipmentLevel"
										placeholder="请输入装备等级" onblur="notnull(this.id)"/>
										 <span class="" id="iconequipmentLevel"></span>
										 <span class="help-block" id="nnhbequipmentLevel"style="display: none">装备等级不能为空</span>
								</div>
							</div>



							<div class="form-group " id="fglusername">
								<label for="goodsElse" class="col-xs-3 control-label">其他</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="goodsElse" id=""
										placeholder="请填写其他" onblur="notnull(this.id)"/> <span
										class=""></span> 
								</div>
							</div>
							
						<div class="form-group " id="fgafile">
								<label for="file" class="col-xs-3 control-label">上传图片</label>
								<div class="col-xs-9">
									<input type="file" name="file" />
								</div>
							</div>
							
							<div class="form-group " id="fggtips">
								<label for="gameAccount" class="control-label"
									style="color: red">以下信息请如实填写，仅平台客服可见</label>
							</div>

							
							<div class="form-group " id="fgecode">
								<label for="gameAccount" class="col-xs-3 control-label">交易暗号</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="code" id="ecode"
										placeholder="请输入交易暗号" onblur="notnull(this.id)" />
									<span class=""></span> <span class="" id="iconecode"></span> <span
										class="help-block" id="nnhbecode" style="display: none">交易暗号不能为空</span>
								</div>
							</div>



							<div class="form-group " id="fgegameAccount">
								<label for="gameAccount" class="col-xs-3 control-label">游戏帐号</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="gameAccount" id="egameAccount"
										placeholder="请输入游戏账号" onblur="notnull(this.id)"/> <span
										class=""></span>
										<span class="" id="iconegameAccount"></span>
										<span class="help-block" id="nnhbegameAccount" style="display: none">游戏账号不能为空</span>
								</div>
								</div>
								
									<div class="form-group " id="fgegamePassword">
								<label for="gameAccount" class="col-xs-3 control-label">游戏帐号密码</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="gamePassword" id="egamePassword"
										placeholder="请输入游戏帐号密码" onblur="notnull(this.id)"/> <span
										class=""></span>
										<span class="" id="iconegamePassword"></span>
										<span class="help-block" id="nnhbegamePassword" style="display: none">游戏帐号密码不能为空</span>
								</div>
								</div>
                                
                                
								<div class="form-group " id="fgestorage">
								<label for="gameAccount" class="col-xs-3 control-label">物品存放处</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="storage" id="estorage"
										placeholder="请输入物品存放处" onblur="notnull(this.id)"/> <span
										class=""></span>
										<span class="" id="iconestorage"></span>
										<span class="help-block" id="nnhbestorage" style="display: none">物品存放处不能为空</span>
								</div>
								</div>
                                
                                
								<div class="form-group " id="fgetelephone">
								<label for="gameAccount" class="col-xs-3 control-label">联系手机</label>
								<div class="col-xs-9">
									<form:input class="form-control" path="telephone" id="etelephone"
										placeholder="请输入联系手机" onblur="notnull(this.id)"/> <span
										class=""></span>
										<span class="" id="iconetelephone"></span>
										<span class="help-block" id="nnhbetelephone" style="display: none">联系手机不能为空</span>
								</div>
								</div>
								 <form:hidden path="goodsNums" value="1" />	
							 <form:hidden path="state" value="正在出售" />	
							<form:hidden path="categoryId" value="3" />
							<div class="form-group ">
								<div class="col-xs-offset-5">
									<button type="button" class="btn btn-primary"  onclick="doSubmit(this)" id="ebutton">出售</button>
								</div>
							</div>
				</form:form>		
 


					</div>
				</div>

				<div class="col-xs-4"></div>

			</div>
		</div>
	</div>
</body>
</html>