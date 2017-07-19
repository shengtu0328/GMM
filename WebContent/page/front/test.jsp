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
<style type="text/css">
label.error{
    position: absolute;
    top: 0;
    right: 6%;
    padding: 0 8px;
    line-height: 35px;
    color: #c33;
    cursor: text;
}

</style>
<script type="text/javascript">
var pwdcheck=1;//默认1为错误 0为正确
function aaa(){
	$("#usernameform").attr("class","form-group has-feedback has-success");
	$("#ok").attr("class","glyphicon glyphicon-ok form-control-feedback");
}
function bbb(){
	$("#passwordform").attr("class","form-group has-feedback has-error");
	$("#passworderror").attr("class","glyphicon glyphicon-remove form-control-feedback");
}
function signin(){
	 $("li").removeClass("active");
	 $("li").eq(1).addClass("active");
	 $("#signin").show();
	 $("#login").hide();
}
function login(){
	 $("li").removeClass("active");
	 $("li").eq(0).addClass("active");
	 $("#signin").hide();
	 $("#login").show();
}
function checkpassword(){
	var pwd1=$("#password1st").val();
	var pwd2=$("#password2nd").val();
	if (pwd1.length<6){
		$("#lengtherror").show();
		$("#password1stform").attr("class","form-group has-feedback has-error");
		$("#password1error").attr("class","glyphicon glyphicon-remove form-control-feedback");
		$("#password1ok").attr("class","");
		return
	}else{
		$("#lengtherror").hide();
		$("#password1stform").attr("class","form-group has-feedback has-success");
		$("#password1ok").attr("class","glyphicon glyphicon-ok form-control-feedback");
		$("#password1error").attr("class","");
		
		
	}
	if(pwd1==""||pwd2==""){
		return
	}
	if(pwd1==pwd2){
		$("#password1stform").attr("class","form-group has-feedback has-success");
		$("#password2ndform").attr("class","form-group has-feedback has-success");
		$("#password1ok").attr("class","glyphicon glyphicon-ok form-control-feedback");
		$("#password2ok").attr("class","glyphicon glyphicon-ok form-control-feedback");
		$("#password1error").attr("class","");
		$("#password2error").attr("class","");
		$("#pwderror").hide();
		pwdcheck=0
	}else{
		$("#password1stform").attr("class","form-group has-feedback has-error");
		$("#password2ndform").attr("class","form-group has-feedback has-error");
		$("#password1error").attr("class","glyphicon glyphicon-remove form-control-feedback");
		$("#password2error").attr("class","glyphicon glyphicon-remove form-control-feedback");
		$("#password1ok").attr("class","");
		$("#password2ok").attr("class","");
		$("#pwderror").show();
		pwdcheck=1
	}
	
	
}


</script>
</head>
<body>
<div class="container">
	<div class="row">
		<div class="col-xs-4">
		</div>
		<div class="col-xs-4">
			<ul class="nav nav-pills center-block" style="width:35%">
			  <li role="presentation" class="active"><a href="#" onclick="login()">登录</a></li>
			  <li role="presentation"><a href="#"onclick="signin()">注册</a></li>
			</ul>		
		<form id="login">
			<div class="form-group has-feedback" id="usernameform">
				<input type="text" class="form-control " id="username" name="username" placeholder="请输入学号/工号"  onBlur="aaa()" style="padding-left:10%">
				<span class="glyphicon glyphicon-user form-control-feedback" style="left:0%"></span>
				<span class="" id="ok"></span>
			</div>
			<div class="form-group has-feedback" id="passwordform">
				<input type="password" class="form-control " id="password" name="password" placeholder="请输入密码"  onBlur="bbb()" style="padding-left:10%">
				<span class="glyphicon glyphicon-lock form-control-feedback" style="left:0%"></span>
				<span class="" id="passworderror"></span>
			</div>
			<div class="form-group">
				<button type="button" class="btn btn-primary btn-block">登录
				</button>
			</div>
		</form>
		<form id="signin" style="display:none">
			<div class="form-group has-feedback" id="snoform">
				<input type="text" class="form-control " id="sno" name="sno" placeholder="请输入学号/工号"  onBlur="" style="">
			</div>
			<div class="form-group has-feedback" id="idform">
				<input type="text" class="form-control " id="id" name="id" placeholder="请输入身份证后6位"  onBlur="" style="">
			</div>
			<div class="form-group has-feedback" id="nameform">
				<input type="text" class="form-control " id="name" name="name" placeholder="请输入昵称"  onBlur="" style="">
			</div>
			<div class="form-group has-feedback" id="password1stform">
				<input type="password" class="form-control " id="password1st" name="password1st" placeholder="请输入密码"  onBlur="checkpassword()" style="">
				<span class="" id="password1error"></span>
				<span class="" id="password1ok"></span>
				<label class="error" id="lengtherror" style="display:none">密码不得少于6位</label>
			</div>
			<div class="form-group has-feedback" id="password2ndform">
				<input type="password" class="form-control " id="password2nd" name="password2nd" placeholder="请确认密码"  onBlur="checkpassword()" style="">
				<span class="" id="password2error"></span>
				<span class="" id="password2ok"></span>
				<label class="error" id="pwderror" style="display:none">两次密码不一致</label>
			</div>
			<div class="form-group">
				<button type="button" class="btn btn-primary btn-block">注册账号
				</button>
			</div>
		</form>
		</div>
		<div class="col-xs-4">
		</div>
	</div>
</div>
</body>
</html>