<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
<link href="../../res/css/bootstrap.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../../res/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="../../res/js/bootstrap.min.js"></script>
<script type="text/javascript">
function notnull(obj)
{   
	var id=obj.id;
	if ($("#"+id).val()=="")
		{
		  $("#fg"+id).attr("class","form-group has-error has-feedback form-group-lg" );
		  $("#icon"+id).attr("class","glyphicon glyphicon-remove form-control-feedback form-group-lg");
		  $("#nnhb"+id).show()
		}
	else 
		{	
		 if(id=="rpassword"||id=="rpassword2")
			{
			var pwd1=$("#rpassword").val();
			var pwd2=$("#rpassword2").val();
			if(pwd1!=pwd2)
				{ 
				$("#fgrpassword").attr("class","form-group has-error has-feedback form-group-lg" );
				$("#fgrpassword2").attr("class","form-group has-error has-feedback form-group-lg");
				$("#iconrpassword").attr("class","glyphicon glyphicon-remove form-control-feedback form-group-lg");
				$("#iconrpassword2").attr("class","glyphicon glyphicon-remove form-control-feedback form-group-lg");
				$("#hbrpassword").show();
				}
			else
		    	{
				$("#fgrpassword").attr("class","form-group has-success has-feedback form-group-lg");
				$("#fgrpassword2").attr("class","form-group has-success has-feedback form-group-lg");
				$("#iconrpassword").attr("class","glyphicon glyphicon-ok form-control-feedback form-group-lg");
				$("#iconrpassword2").attr("class","glyphicon glyphicon-ok form-control-feedback form-group-lg");
				$("#hbrpassword").hide();
				$("#nnhbrpassword").hide();
				$("#nnhbrpassword2").hide();
			    }
			} 
		 else
			 {
		       $("#fg"+id).attr("class","form-group has-success has-feedback form-group-lg");
		       $("#icon"+id).attr("class","glyphicon glyphicon-ok form-control-feedback form-group-lg");
		       $("#nnhb"+id).hide();
			 }
		}
}
</script>
</head>
<body style='background:url(../../res/images/background.jpg) '>
	<div class="container ">
		<div class="row">
			<div class="col-xs-4">
			</div>
			<div class="col-xs-4">
               <!-- 选项卡组件（菜单项nav-pills）-->
               <div style="">
					<div class="row">
						<div class="col-xs-offset-4" >
						<img alt="" src="../../res/images/sdologo.png" style="margin-top:100px;">
						</div>
					</div>
				<ul id="myTab" class="nav nav-pills center-block" style="width:35%;margin-top:40px" role="tablist">
					<li class="active"><a href="#login" role="tab" data-toggle="pill">登录</a></li>
					<li><a href="#register" role="tab" data-toggle="pill">注册</a></li>
				</ul>
				<!-- 选项卡面板 -->
				<div id="myTabContent" class="tab-content">
					<div class="tab-pane fade in active" id="login">
						<form class="form-horizontal">
							<div class="form-group form-group-lg" id="fglusername">
								<label for="lusername" class="col-xs-3 control-label">账号</label>
								<div class="col-xs-9">
									<input type="text" class="form-control" id="lusername"
										placeholder="请输入用户名"  onblur="notnull(this)">
									<span class=""></span>
									<span class="help-block"id="nnhblusername" style="display: none">用户名不能为空</span>
								</div>
							</div>
							<div class="form-group form-group-lg" id="fglpassword">
								<label for="lpassword" class="col-xs-3 control-label">密码</label>
								<div class="col-xs-9">
									<input type="password" class="form-control" id="lpassword"
										placeholder="请输入密码" onblur="notnull(this)">	
									<span class="help-block"id="nnhblpassword" style="display: none">密码不能为空</span>
								</div>
							</div>
							<div class="form-group form-group-lg">
								<div class="col-xs-offset-2 col-xs-10 checkbox">
									<div class="checkbox">
										<label> <input type="checkbox"> 记住密码
										</label>
									</div>
								</div>
							</div>
							<div class="form-group ">
								<div class="col-xs-offset-5">
									<button type="submit" 
										class="btn btn-primary  btn-lg">登陆</button>
								</div>
							</div>
						</form>
					</div>
					<div class="tab-pane fade" id="register">
						<form class="form-horizontal">
							<div class="form-group form-group-lg" id="fgrusername">
								<label for="username" class="col-xs-3 control-label">账号</label>
								<div class="col-xs-9">
									<input type="text" class="form-control" id="rusername" placeholder="请输入用户名" onblur="notnull(this)">
									<span class=" " id="iconrusername"></span>
									<span class="help-block"id="nnhbrusername" style="display: none">账号不能为空</span>
								</div>
							</div>
							<div class="form-group form-group-lg" id="fgrpassword">
								<label for="password" class="col-xs-3 control-label">密码</label>
								<div class="col-xs-9">
									<input type="password" class="form-control" id="rpassword" 	placeholder="请输入密码"   onBlur="notnull(this)">
										<span class="" id="iconrpassword"></span>
										<span class="help-block"id="hbrpassword" style="display: none">两次密码不一致</span>
										<span class="help-block"id="nnhbrpassword" style="display: none">密码不能为空</span>
								</div>
							</div>
							<div class="form-group form-group-lg" id="fgrpassword2">
								<label for="rpassword2" class="col-xs-3 control-label"></label>
								<div class="col-xs-9">
									<input type="password" class="form-control" id="rpassword2"  placeholder="请再次输入密码"   onBlur="notnull(this)">								
										<span class="" id="iconrpassword2"></span>
										<span class="help-block"id="nnhbrpassword2" style="display: none">密码不能为空</span>
								</div>
							</div>
							<div class="form-group form-group-lg" id="fgemail">
								<label for="email" class="col-xs-3 control-label">邮箱</label>
								<div class="col-xs-9">
									<input type="email" class="form-control" id="email"  
										placeholder="请输入邮箱"  onblur="notnull(this)">
									<span class="" id="iconemail"></span>
			                        <span class="help-block"id="nnhbemail" style="display: none">邮箱不能为空</span>
								</div>
							</div>
							<div class="form-group ">
								<div class="col-xs-offset-5">
									<button type="submit"
										class="btn btn-primary btn-lg ">注册</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			</div>
			<div class="col-xs-4"></div>
		</div>
	</div>
</body>
</html>