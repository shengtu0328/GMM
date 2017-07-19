<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册界面</title>
<style>
.center
{
margin:0 auto;
}
table{
    border:1px solid;
    margin:0 auto;
}
</style>
</head>

<script type="text/javascript" src="js/jquery-1.11.3.min.js"></script>

<body>
<%String path=request.getContextPath(); %>
<div class="center">
<form action="<%=path %>/user/userregister.htm" method="post" >
<table>
<tr><td>用户名<input type="text" name="username"  id="uid"   onblur="fun2()"></td><td><span id="a1" style="color:red"></span></td><tr>
<tr><td>密码<input type="password" name="password"  onblur="fun3()"></td><td><span id="a2" style="color:red" ></span></td><tr>
<tr><td>确认密码<input type="password" name="password2" id="password2"  onblur="fun4();" ></td><td><span id="a3" style="color:red"></span></td></tr>    
<tr><td>姓名<input type="text" name="name"  onblur="fun5()"></td><td><span id="a4"  style="color:red" ></span></td><tr>
<tr><td>电话<input type="text" name="telephone"  onblur="fun6()" ></td><td><span id="a5" style="color:red"  ></span></td><tr>
<tr><td>邮箱<input type="text" name="email" onblur="fun7()"></td><td><span id="a6" style="color:red" ></span></td><tr>
<tr><td><input type="submit" value="注册"  onclick="register()"></td><td><input type="reset" value="重置"></td><tr>
</table>
</form>
</div>
<script type="text/javascript">
function fun2(){
	var user = $("#uid").val();
	$.ajax({		
				type:"post",
				data:"username="+user,
				url:"user/ajaxCheckRegister.htm",
				dataType:"text",
				success:function(data)
				{
					if(data=="1"){
						$("#a1").text("用户 名不能为空！");
						return false;
					}
					else if(data=="2"){
						$("#a1").text("");			
					return false;
				}
					else if(data=="3"){
						$("#a1").text("用户名已存在，请重新输入");				
						return false;
					}
					
				},
			    error:function(e)
			    {
			    	alert("出现异常，请刷新一下！");
			    }
			} );

}


function fun3(){
	
	if(document.getElementsByName("password")[0].value==''){
		$("#a2").text("密码不能为空,请填写完整！");
		
		return false;
		
		}
	 else if((document.getElementsByName("password")[0].value).length<6){
		 $("#a2").text("密码 长度不能小于6位");
			
			return false;
			
			}
	else{
		$("#a2").text("");	
		return false;
	}
	
}
  
function fun4(){
	var pass = document.getElementsByName("password")[0].value;
	var pass2 = document.getElementsByName("password2")[0].value;
	if(pass!=pass2){
		 $("#a3").text("两次输入密码不一致,请确认密码！");
		
		return false;
		}
	else{
		$("#a3").text("");	
		return false;
	}
}

function fun5(){
	
	if(document.getElementsByName("name")[0].value==''){
		 $("#a4").text("姓名 不能为空,请填写完整！！");
		
		return false;
		}
	    else{
		$("#a4").text("");	
		return false;
	}
}

function fun6(){
	if(document.getElementsByName("telephone")[0].value==''){
		 $("#a5").text("电话  不能为空,请填写完整！");
		
		return false;
		}
	else{
		$("#a5").text("");	
		return false;
	}
}

function fun7(){
	var re = /^([a-zA-Z0-9])+@([a-zA-Z0-9])+\.([a-zA-Z0-9])/;
	var email = document.getElementsByName("email")[0].value;
	if(!re.test(email)){
		 $("#a6").text("邮箱格式不正确");
		
		return false;
		}
	else{
		$("#a6").text("");	
		return false;
	}
	
}

function register()
{
	var result=confirm("确认注册吗");
	if(result==true)
	{ 
		
	}
	else
	{
		
	}
}
/* $(function(){ 
	var userName="xiaoming11111"; 
	alert(userName); 
	});  */

/* $(function(){ 
var userName="xiaoming11111"; 
alert(userName); 
}); 


 $(document).ready(function(){ 

	var userName="xiaoming2222"; 

	alert(userName); 
	}); */
</script>
</body>
</html>