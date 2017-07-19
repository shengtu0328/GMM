<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录</title>
 <c:set var="base" value="<%=request.getContextPath()%>" scope="session"/>
  <script>
    var base = '${base}';
  </script>
 
<link href="${base}/res/css/bootstrap.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${base}/res/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="${base}/res/js/bootstrap.min.js"></script>
<script src="http://cdn.bootcss.com/jquery-cookie/1.4.1/jquery.cookie.min.js"></script>
<script type="text/javascript">
function notnull(obj)
{   
	var id=obj.id;
	if ($("#"+id).val()=="")
		{
		  $("#fg"+id).attr("class","form-group has-error has-feedback form-group-lg" );
		  $("#icon"+id).attr("class","glyphicon glyphicon-remove form-control-feedback form-group-lg");
		  $("#nnhb"+id).show();
		  $("#existhb"+id).hide();
		  $("#notexisthb"+id).hide();
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
		 else if(id=="rusername")
		 {  
			 var username = $("#rusername").val();
			 $.ajax({		
					type:"post",
					data:{"username":username},
					url:"registerUserNameCheck.htm",
					dataType:"text",
					success:function(data)
				    {   /* 1代表帐号存在 */
						if(data=="1")
						{   
							$("#fgrusername").attr("class","form-group has-error has-feedback form-group-lg" );
							$("#iconrusername").attr("class","glyphicon glyphicon-remove form-control-feedback form-group-lg");
							$("#existhbrusername").show();
							$("#notexisthbrusername").hide();
							$("#nnhb"+id).hide();
						   return;
					    }
						/* 0代表帐号不存在 */
						else if(data=="0")
						{
							$("#fgrusername").attr("class","form-group has-success has-feedback form-group-lg" );
							$("#iconrusername").attr("class","glyphicon glyphicon-ok form-control-feedback form-group-lg");
							$("#existhbrusername").hide();	
							$("#notexisthbrusername").show();
							$("#nnhb"+id).hide();
							return ;
						}
						
					},
				    error:function(e)
				    {
				    	alert("出现异常，请刷新一下！");
				    }
			     });
		 }
		 else
			 {
		       $("#fg"+id).attr("class","form-group has-success has-feedback form-group-lg");
		       $("#icon"+id).attr("class","glyphicon glyphicon-ok form-control-feedback form-group-lg");
		       $("#nnhb"+id).hide();
			 }
		 
		 
		}
}

$(function(){
$("#lbutton").click(function(){
	if($("#lusername").val()=="")
	{
		$("#fglusername").attr("class","form-group has-error has-feedback form-group-lg");
		$("#iconlusername").attr("class","glyphicon glyphicon-remove form-control-feedback form-group-lg");
		$("#nnhblusername").show();
	
	}
	if($("#lpassword").val()=="")
    {
		$("#fglpassword").attr("class","form-group has-error has-feedback form-group-lg");
		$("#iconlpassword").attr("class","glyphicon glyphicon-remove form-control-feedback form-group-lg");
		$("#nnhblpassword").show();
    }
	if($("#lpassword").val()!=""&&$("#lusername").val()!="")
    {   
	
		 $.ajax({
			 type:"post",
			 data:{"username":$("#lusername").val(),"password":$("#lpassword").val()},
			 url:"${base}/user/loginCheck.htm",
			 dataType:"text",
			 success:function(msg)
			 {
				/*  用户名不存在或者密码错误 */
		       if(msg=="0")
		    	 { 
		    	   $("#fglusername").attr("class","form-group has-error form-group-lg  has-feedback");
		    	   $("#fglpassword").attr("class","form-group has-error form-group-lg  has-feedback");
		    	   $("#notexisthblpassword").show();
		    	   $("#iconlusername").attr("class","glyphicon glyphicon-remove form-control-feedback form-group-lg");
		    	   $("#iconlpassword").attr("class","glyphicon glyphicon-remove form-control-feedback form-group-lg");               
		    	 }
		       else
		         {
		    	   if ($("input[type='checkbox']").prop('checked')) {
		    		   $.cookie('username', $("#lusername").val(), {expires: 7, path: '/'});
		    		    } else {
		    		     
		    		    }
		    	   $.post(
		    			   '${base}/user/loginSuccess.htm', 
		    			   {
		    				"username": $('#lusername').val(), 
		    				"password": $('#lpassword').val()
		    			   },
		    			    function (data)
		    			    {
		    	             if (data!=null) 
		    	               {
		    	                  if(data=="0") 
		    	                  {
		    	                  window.location.href = "${base}/goods/index.htm";
		    	                  }
		    	                  else
		    	                  window.location.href = "${base}/order/back.htm";
		    	               } 
		    	            else
		    	               {
		    	                  alert(请刷新一下);
		    	               } 
		    	            }
		    		     );
	             }
		     }    
		 });
    }
			
   
	
});
}); 
</script>
</head>
<body style='background:url(${base}/res/images/background.jpg) '>
	<div class="container ">
		<div class="row">
			<div class="col-xs-4">
			</div>
			<div class="col-xs-4">
               <!-- 选项卡组件（菜单项nav-pills）-->
               <div style="">
					<div class="row">
						<div class="col-xs-offset-4" >
						<img alt="" src="${base}/res/images/sdologo.png" style="margin-top:100px;">
						</div>
					</div>
				<ul id="myTab" class="nav nav-pills center-block" style="width:35%;margin-top:40px" role="tablist">
					<li class="active"><a href="#login" role="tab" data-toggle="pill">登录</a></li>
					<li><a href="#register" role="tab" data-toggle="pill">注册</a></li>
				</ul>
				<!-- 选项卡面板 -->
				<div id="myTabContent" class="tab-content">
				
					<div class="tab-pane fade in active" id="login">
						<form class="form-horizontal" action="" method="get">
							<div class="form-group form-group-lg" id="fglusername">
								<label for="lusername" class="col-xs-3 control-label">账号</label>
								<div class="col-xs-9">
									<input type="text" class="form-control" id="lusername" name="username"
										placeholder="请输入用户名"  onblur="notnull(this)">
									<span class=" " id="iconlusername"></span>
									<span class="help-block"id="nnhblusername" style="display: none">用户名不能为空</span>
								</div>
							</div>
							<div class="form-group form-group-lg" id="fglpassword">
								<label for="lpassword" class="col-xs-3 control-label">密码</label>
								<div class="col-xs-9">
									<input type="password" class="form-control" id="lpassword" name="password"
										placeholder="请输入密码" onblur="notnull(this)">
									<span class=" " id="iconlpassword"></span>	
									<span class="help-block"id="nnhblpassword" style="display:none">密码不能为空</span>
									<span class="help-block"id="notexisthblpassword" style="display:none">帐号不存在或密码错误</span>
								</div>
							</div>
							<div class="form-group form-group-lg">
								<div class="col-xs-offset-2 col-xs-10 checkbox">
									<div class="checkbox">
										<label> <input type="checkbox" name="rem"> 记住密码
										</label>
									</div>
								</div>
							</div>
							<div class="form-group ">
								<div class="col-xs-offset-5">
									<button type="button" id="lbutton" 
										class="btn btn-primary  btn-lg">登陆</button>
								</div>
							</div>
						</form>
					</div>
					<div class="tab-pane fade" id="register">
						<form class="form-horizontal" action="save.htm">
							<div class="form-group form-group-lg" id="fgrusername">
								<label for="username" class="col-xs-3 control-label">账号</label>
								<div class="col-xs-9">
									<input type="text" class="form-control" id="rusername" placeholder="请输入用户名" onblur="notnull(this)" name="username">
									<span class=" " id="iconrusername"></span>
									<span class="help-block"id="nnhbrusername" style="display: none">账号不能为空</span>
									<span class="help-block"id="existhbrusername" style="display: none">账号已存在</span>
									<span class="help-block"  id="notexisthbrusername" style="display: none">账号可以注册</span>
								</div>
							</div>
							<div class="form-group form-group-lg" id="fgrpassword">
								<label for="password" class="col-xs-3 control-label">密码</label>
								<div class="col-xs-9">
									<input type="password" class="form-control" id="rpassword" 	placeholder="请输入密码"   onBlur="notnull(this)" name="password">
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
									<input type="email" class="form-control" id="email"  name="email"
										placeholder="请输入邮箱"  onblur="notnull(this)">
									<span class="" id="iconemail"></span>
			                        <span class="help-block"id="nnhbemail" style="display: none">邮箱不能为空</span>
								</div>
							</div>
							<div class="form-group ">
								<div class="col-xs-offset-5">
									<button type="submit" id="rbutton" 
										class="btn btn-primary btn-lg ">注册</button>
								</div>
							</div>
						<input type="hidden"name="role" value="0">
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