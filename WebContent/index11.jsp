<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link type="text/css" rel="stylesheet" href="res1/css/login/base.css">
<link type="text/css" rel="stylesheet" href="res1/css/login/pay.css">
<style type="text/css">

body{color: #797979;}
</style>


</head>
<body>
	<section class="wrap">


            <!-- header -->
    <div class="header">
        <h3><img src="res/img/login/gjia.png"></h3>
        <h2>G家账号登录</h2>
    </div>
    <!-- /header -->
        <div id="div_Register" class="mod_regist">
	<div id="mod_regist_form" class="mod_regist_form registPhone">
		<!--<div class="call_back_tips"></div>-->
				<fieldset class="regist_info">
				<div class="input_wrap" id="input_wrap_username">
                   <div class="tips show_tips" id="mobileTip">
                                                <p class="tipsError" style="display: block;">请填写手机号，或者手机号格式不正确</p>
                                                <p class="tipsBg" style="display: block;"></p>
                    </div>
					<div class="inputBox  otherMbInput first inputError">
						<span class="inputLabel"></span> 
						<input class="text mobile" id="mobile" name="mobile" type="text" tabindex="10" autocomplete="off" placeholder="手机号码" data-form-un="1486444376763.0593" style="background:#FAFFBD !important;box-shadow:none;">
						<div class="otherMb">
							<span class="selcountry" style=""> 
								<span class="selcountry_inner"> 
									<span id="country_flag" class="flag"> 
										<span class="talk_flag flag_china"></span>
									</span>
									<span id="country_code" name="country_code">+86</span>
								</span>
								<div id="flag_list" class="flag_list" style="display: none;"><div class="country_local" style="display:none">
    <span>当前所在地：</span>
    <span class="flag_wrap">
        <span class="talk_flag flag_arg"></span>
      
    </span>
</div>
<div class="country_search inputBox">

    <span class="inputLabel">
    </span>
</div>
<ul>

</ul></div>
							</span>
						</div>
					</div>

				</div>

				<div class="input_wrap" id="input_wrap_password">
                    <div class="inputBox last keys">
			        	<span class="inputLabel posleft"></span> 
			        	<input class="text password" name="password" id="password" type="password" tabindex="13" placeholder="登录密码" data-form-pw="1486444376763.0593" style="background:#FAFFBD !important;box-shadow:none;">
                    </div>
				</div>

                <div class="input_wrap verifyCode" id="">
                    <div class="inputBox  keys">
                        <span class="inputLabel posleft"></span> 
                        <span class="imgCodeBg"> 
                            <img id="imgCode" src="">
                        </span> 
                        <input class="text password" name="validateCode" id="validateCode" type="text" tabindex="13" placeholder="验证码">
                    </div>
                </div>
	
			</fieldset>
        <p class="accept"><input type="checkbox" id="autologin">&nbsp;下次自动登录&nbsp;<span id="autologinTips" style="display: none;">请不要在公共电脑使用</span></p>
	</div>

</div>
        <div class="logbot">
             <p><a href="#" id="login" class="btnreg">登录</a></p>
        </div>  
        <div class="forget"><a id="linkreg" href="https://gmmwlogin.sdo.com/v1/oauth/register?appid=791000270&amp;state=123&amp;redirect_url=http%3A%2F%2Fgmm.sdo.com%2Fpc%2Fcommon%2Flogintransfer.html&amp;display=layer&amp;supportacc=0&amp;mode=self">注册</a>&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;<a id="linkreset" href="https://gmmwlogin.sdo.com/v1/oauth/reset?appid=791000270&amp;state=123&amp;redirect_url=http%3A%2F%2Fgmm.sdo.com%2Fpc%2Fcommon%2Flogintransfer.html&amp;display=layer&amp;supportacc=0&amp;mode=self">重置密码</a></div>    
        
    <div class="logo" style="z-index: -1"><img src="res/img/login/logo2.png"></div>
	</section>
<script src="/res/js/app/jquery.placeholder.js"></script>
</html>