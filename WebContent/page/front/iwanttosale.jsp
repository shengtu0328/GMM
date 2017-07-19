<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<%@ include file="../../include/taglib.jsp"%>
<link href="../../res/css/bootstrap.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../res/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="../../res/js/bootstrap.min.js"></script>
</head>
<body>

	<div class="container ">
		<div class="row">
			<div class="col-xs-4"></div>
			<div class="col-xs-4">
				<!-- 选项卡组件（菜单项nav-pills）-->

				<div class="row">
					<div class="col-xs-offset-4">
						<img alt="" src="<%=request.getContextPath()%>/res/images/sdologo.png"
							style="margin-top: 40px;">


					</div>
				</div>
				<div class="center-block " style="width: 52%; margin-top: 40px">
					<ul id="myTab" class="nav nav-tabs " role="tablist">
						<li class="active"><a href="#account" role="tab"
							data-toggle="tab">账号</a></li>
						<li><a href="#gold" role="tab" data-toggle="tab">金币</a></li>
						<li><a href="#equipment" role="tab" data-toggle="tab">装备</a></li>
					</ul>
				</div>
				<!-- 选项卡面板 -->
				<div id="myTabContent" class="tab-content center-block"
					style="width: 100%">
					<div class="tab-pane active" id="account">

						<%-- <form class="form-horizontal" action="">
							<div class="form-group " id="fglusername">
								<label for="title" class="col-xs-3 control-label">标题</label>
								<div class="col-xs-9">
									<input type="text" class="form-control" id="title"
										placeholder="请输入标题" onblur="notnull(this)"> <span
										class=""></span> <span class="help-block" id="nnhblusername"
										style="display: none">标题不能为空</span>
								</div>
							</div>
							<div class="form-group " id="fglpassword">
								<label for="price" class="col-xs-3 control-label">价格</label>
								<div class="col-xs-9">
									<input type="text" class="form-control" id="price"
										placeholder="请输入密码" onblur="notnull(this)">
									<span class="help-block" id="nnhblpassword"
										style="display: none">密码不能为空</span>
								</div>
							</div>
							<div class="form-group">
								<label for="area" class="col-xs-3 control-label">区服</label>
								<div class="col-xs-9">
									<select class="form-control" id="area">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label for="occupation" class="col-xs-3 control-label">职业</label>
								<div class="col-xs-9">
									<select class="form-control" id="occupation">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
									</select>
								</div>
							</div>
							<div class="form-group " id="fglusername">
								<label for="characterlevel" class="col-xs-3 control-label">角色等级</label>
								<div class="col-xs-9">
									<input type="text" class="form-control" id="characterlevel"
										placeholder="请输入角色等级" onblur="notnull(this)"> <span
										class=""></span> <span class="help-block" id="nnhblusername"
										style="display: none">用户名不能为空</span>
								</div>
							</div>

							<div class="form-group " id="">
								<label for="fuhuo" class="col-xs-3 control-label">复活</label>
								<div class="col-xs-9">
									<input type="text" class="form-control" id="fuhuo"
										placeholder="请输入用户名" onblur="notnull(this)"> <span
										class=""></span> <span class="help-block" id="nnhblusername"
										style="display: none">用户名不能为空</span>
								</div>
							</div>
							<div class="form-group " id="fglusername">
								<label for="dress" class="col-xs-3 control-label">套装/时装</label>
								<div class="col-xs-9">
									<input type="text" class="form-control" id="dress"
										placeholder="请输入用户名" onblur="notnull(this)"> <span
										class=""></span> <span class="help-block" id="nnhblusername"
										style="display: none">用户名不能为空</span>
								</div>
							</div>
							<div class="form-group " id="fglusername">
								<label for="charactereqs" class="col-xs-3 control-label">装备属性</label>
								<div class="col-xs-9">
									<input type="text" class="form-control" id="charactereqs"
										placeholder="请输入用户名" onblur="notnull(this)"> <span
										class=""></span> <span class="help-block" id="nnhblusername"
										style="display: none">用户名不能为空</span>
								</div>
							</div>
							<div class="form-group " id="fglusername">
								<label for=wenzhang class="col-xs-3 control-label">纹章</label>
								<div class="col-xs-9">
									<input type="text" class="form-control" id="wenzhang"
										placeholder="请输入用户名" onblur="notnull(this)"> <span
										class=""></span> <span class="help-block" id="nnhblusername"
										style="display: none">用户名不能为空</span>
								</div>
							</div>
							<div class="form-group " id="fglusername">
								<label for="hufu" class="col-xs-3 control-label">护符</label>
								<div class="col-xs-9">
									<input type="text" class="form-control" id="hufu"
										placeholder="请输入用户名" onblur="notnull(this)"> <span
										class=""></span> <span class="help-block" id="nnhblusername"
										style="display: none">用户名不能为空</span>
								</div>
							</div>
							<div class="form-group " id="fglusername">
								<label for="jinbidianquan" class="col-xs-3 control-label">金币/点券</label>
								<div class="col-xs-9">
									<input type="text" class="form-control" id="jinbidianquan"
										placeholder="请输入用户名" onblur="notnull(this)"> <span
										class=""></span> <span class="help-block" id="nnhblusername"
										style="display: none">用户名不能为空</span>
								</div>
							</div>
							<div class="form-group " id="fglusername">
								<label for="zuojichongwu" class="col-xs-3 control-label">坐骑/宠物</label>
								<div class="col-xs-9">
									<input type="text" class="form-control" id="zuojichongwu"
										placeholder="请输入用户名" onblur="notnull(this)"> <span
										class=""></span> <span class="help-block" id="nnhblusername"
										style="display: none">用户名不能为空</span>
								</div>
							</div>
							<div class="form-group " id="fglusername">
								<label for="chibangweiba" class="col-xs-3 control-label">翅膀/尾巴</label>
								<div class="col-xs-9">
									<input type="text" class="form-control" id="chibangweiba"
										placeholder="请输入用户名" onblur="notnull(this)"> <span
										class=""></span> <span class="help-block" id="nnhblusername"
										style="display: none">用户名不能为空</span>
								</div>
							</div>

							<div class="form-group " id="fglusername">
								<label for="beibaocangku" class="col-xs-3 control-label">背包/仓库</label>
								<div class="col-xs-9">
									<input type="text" class="form-control" id="beibaocangku"
										placeholder="请输入用户名" onblur="notnull(this)"> <span
										class=""></span> <span class="help-block" id="nnhblusername"
										style="display: none">用户名不能为空</span>
								</div>
							</div>
							<div class="form-group " id="fglusername">
								<label for="pklevel" class="col-xs-3 control-label">竞技场等级</label>
								<div class="col-xs-9">
									<input type="text" class="form-control" id="pklevel"
										placeholder="请输入用户名" onblur="notnull(this)"> <span
										class=""></span> <span class="help-block" id="nnhblusername"
										style="display: none">用户名不能为空</span>
								</div>
							</div>
							<div class="form-group " id="fglusername">
								<label for="fulllevelnums" class="col-xs-3 control-label">满级角色数量</label>
								<div class="col-xs-9">
									<input type="text" class="form-control" id="fulllevelnums"
										placeholder="请输入用户名" onblur="notnull(this)"> <span
										class=""></span> <span class="help-block" id="nnhblusername"
										style="display: none">用户名不能为空</span>
								</div>
							</div>
							<div class="form-group " id="fglusername">
								<label for="else1" class="col-xs-3 control-label">其他</label>
								<div class="col-xs-9">
									<input type="text" class="form-control" id="else1"
										placeholder="请输入用户名" onblur="notnull(this)"> <span
										class=""></span> <span class="help-block" id="nnhblusername"
										style="display: none">用户名不能为空</span>
								</div>
							</div>



							<div class="form-group ">
								<div class="col-xs-offset-5">
									<button type="submit" class="btn btn-primary ">出售</button>
								</div>
							</div>
						</form>
					</div> --%>


					<!-- 金币 -->
					<div class="tab-pane" id="gold">
						<form:form modelAttribute="goods" class="form-horizontal"
							action="">
							<div class="form-group " id="fglusername">
								<label for="title" class="col-xs-3 control-label">标题</label>
								<div class="col-xs-9">
									<form:class="form-control" path="title"
										placeholder="请输入标题"  />
									<span class=""></span> <span class="help-block"
										id="nnhblusername" style="display: none">标题不能为空</span>
								</div>
							</div>
							<div class="form-group " id="fglpassword">
								<label for="price" class="col-xs-3 control-label">价格</label>
								<div class="col-xs-9">
									<form:input type="text" class="form-control" path="price"
										placeholder="请输入密码" onblur="notnull(this)" />
									<span class="help-block" id="nnhblpassword"
										style="display: none">价格不能为空</span>
								</div>
							</div>
							<div class="form-group">
								<label for="area" class="col-xs-3 control-label">区服</label>
								<div class="col-xs-9">
									<form:select path="area" class="form-control"
										items="${gameAreaList}" />
								</div>
							</div>
							<div class="form-group " id="fglusername">
								<label for="rate" class="col-xs-3 control-label">比例</label>
								<div class="col-xs-9">
									<form:input type="text" class="form-control" path="rate"
										placeholder="请输入标题" onblur="notnull(this)" />
									<span class=""></span> <span class="help-block"
										id="nnhblusername" style="display: none">标题不能为空</span>
								</div>
							</div>
							<div class="form-group " id="fglusername">
								<label for="goodsnums" class="col-xs-3 control-label">商品数量</label>
								<div class="col-xs-9">
									<form:input type="text" class="form-control" path="goodsnums"
										placeholder="请输入标题" onblur="notnull(this)" />
									<span class=""></span> <span class="help-block"
										id="nnhblusername" style="display: none">标题不能为空</span>
								</div>
							</div>
							<div class="form-group " id="fglusername">
								<label for="else1" class="col-xs-3 control-label">其他</label>
								<div class="col-xs-9">
									<form:input type="text" class="form-control" path="else1"
										placeholder="请输入用户名" onblur="notnull(this)" />
									<span class=""></span> <span class="help-block"
										id="nnhblusername" style="display: none">用户名不能为空</span>
								</div>
							</div>
							<div class="form-group " id="fglusername">
								<label for="else1" class="col-xs-3 control-label">游戏帐号</label>
								<div class="col-xs-9">
									<form:input type="text" class="form-control" path="gameAccount"
										placeholder="请输入用户名" onblur="notnull(this)" />
									<span class=""></span> <span class="help-block"
										id="nnhblusername" style="display: none">用户名不能为空</span>
								</div>
							</div>
							<form:hidden path="Category" value="" />
							<div class="form-group ">
								<div class="col-xs-offset-5">
									<button type="submit" class="btn btn-primary ">出售</button>
								</div>
							</div>
						</form:form>
					</div>
					<div class="tab-pane" id="equipment">



						<!-- 	装备 -->
						<form class="form-horizontal" action="">
							<div class="form-group " id="fglusername">
								<label for="title" class="col-xs-3 control-label">标题</label>
								<div class="col-xs-9">
									<input type="text" class="form-control" id="title"
										placeholder="请输入标题" onblur="notnull(this)"> <span
										class=""></span> <span class="help-block" id="nnhblusername"
										style="display: none">标题不能为空</span>
								</div>
							</div>
							<div class="form-group " id="fglpassword">
								<label for="price" class="col-xs-3 control-label">价格</label>
								<div class="col-xs-9">
									<input type="text" class="form-control" id="price"
										"
										placeholder="请输入密码" onblur="notnull(this)">
									<span class="help-block" id="nnhblpassword"
										style="display: none">密码不能为空</span>
								</div>
							</div>
							<div class="form-group">
								<label for="area" class="col-xs-3 control-label">区服</label>
								<div class="col-xs-9">
									<select class="form-control" id="area">
										<option>1</option>
										<option>2</option>
										<option>3</option>
										<option>4</option>
										<option>5</option>
									</select>
								</div>
							</div>
							<div class="form-group " id="fglusername">
								<label for="equipmentname" class="col-xs-3 control-label">装备名</label>
								<div class="col-xs-9">
									<input type="text" class="form-control" id="equipmentname"
										placeholder="请输入标题" onblur="notnull(this)"> <span
										class=""></span> <span class="help-block" id="nnhblusername"
										style="display: none">标题不能为空</span>
								</div>
							</div>


							<div class="form-group " id="fglusername">
								<label for="equipmentlevel" class="col-xs-3 control-label">装备等级</label>
								<div class="col-xs-9">
									<input type="text" class="form-control" id="equipmentlevel"
										placeholder="请输入标题" onblur="notnull(this)"> <span
										class=""></span> <span class="help-block" id="nnhblusername"
										style="display: none">标题不能为空</span>
								</div>
							</div>



							<div class="form-group " id="fglusername">
								<label for="goodsnums" class="col-xs-3 control-label">商品数量</label>
								<div class="col-xs-9">
									<input type="text" class="form-control" id="goodsnums"
										placeholder="请输入标题" onblur="notnull(this)"> <span
										class=""></span> <span class="help-block" id="nnhblusername"
										style="display: none">标题不能为空</span>
								</div>
							</div>
							<div class="form-group " id="fglusername">
								<label for="else1" class="col-xs-3 control-label">其他</label>
								<div class="col-xs-9">
									<input type="text" class="form-control" id="else1"
										placeholder="请输入用户名" onblur="notnull(this)"> <span
										class=""></span> <span class="help-block" id="nnhblusername"
										style="display: none">用户名不能为空</span>
								</div>
							</div>


							<div class="form-group ">
								<div class="col-xs-offset-5">
									<button type="submit" class="btn btn-primary ">出售</button>
								</div>
							</div>
						</form>



					</div>
				</div>

				<div class="col-xs-4"></div>

			</div>
		</div>
	</div>
</body>
</html>