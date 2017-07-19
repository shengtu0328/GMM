<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>G买卖首页</title>

<link type="text/css" rel="stylesheet" href="../../res/css/mainandreset.css">
<script src="../../res/js/myfocus-2.0.1.min.js" type="text/javascript"></script>
<script src="../../res/js/mf-pattern/mF_fancy.js" type="text/javascript"></script>
<link type="text/css" rel="stylesheet" href="../../res/js/mf-pattern/mF_fancy.css">
<script type="text/javascript" src="${base}/res/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="../../res/easyui/jquery.easyui.min.js"></script>
<link rel="stylesheet" href="../../res/easyui/themes/icon.css">
<link rel="stylesheet" href="../../res/easyui/themes/metro/easyui.css">
<link rel="stylesheet" href="../../res/css/masklogin.css">
<!-- 飞入购物车动画-->
<!-- <link rel="stylesheet" href="../../res/css/fly.css">
<script type="text/javascript" src="../../res/fly.js"></script>
 -->
 <script type="text/javascript">
myFocus.set(
		{
			
	      id:'picBox',
		  width:866,//设置图片区域宽度(像素)
		  height:357,//设置图片区域高度(像素)

		}
		)
</script>
<script src="js/setHomeSetFav.js" type="text/javascript" charset="UTF-8"></script>
<style type="text/css">

#mask {       
    background-color:#000;
	opacity:0.5;
	filter: alpha(opacity=50); 
	position:absolute; 
	left:0;
	top:0;
	z-index:1000; 
        }  

</style>

<style type="text/css">
.topBar a:hover{color:#ff8000;} 
.shopTit a:hover{color:#ff8000;} 
</style>

<script>
/* 登录遮罩层 */
function login(){
	$("#mask").css("height",$(document).height());     
    $("#mask").css("width",$(document).width());     
    $("#mask").show(); 
    $("#content").show();
    
};

$(document).ready(function(){
	$("#close").click(function(){
    	$("#mask").hide(); 
        $("#content").hide();
	});
	$("#mask").click(function(){
    	$("#mask").hide(); 
        $("#content").hide();
	});
	});



</script>


<!-- <script type="text/javascript">
  $(function(){
	 $(".classify").mouseover(function(){
		 $("li").show();
		 
		 
		 })
	 $(".navmenu").mouseout(function(){
		 
		 $(this).children("ul").hide();
		 
		 })
	  
	  })
  
</script> -->
</head>
<body>
<!-- <div id="iwanttosale" class="iwanttosale">我要卖！！</div> -->
<div id="mask" ></div>
<div id="content" style="display:none;">
<div id="close">点击关闭</div>
    <div class="login-header">
        <img src="../../res/images/icon/gjia.png">
    </div>
    <div class="logintip">请先登录!</div>
    <form>
        <div class="login-input-box">
            <span class="icon icon-user"></span>
            <input type="text" placeholder="帐号">
        </div>
        <div class="login-input-box">
            <span class="icon icon-password"></span>
            <input type="password" placeholder="密码">
        </div>
    </form>
    <div class="remember-box">
        <label>
            <input type="checkbox">&nbsp;记住密码
        </label>
    </div>
    <div class="login-button-box">
        <button>Login</button>
    </div>
    <div class="logon-box">
        <a href="">忘记密码？</a>
        <a href="">注册</a>
    </div>
</div>
<div class="headBar">
	<div class="topBar">
	   <div class="comWidth">
	      <div class="leftArea">
	        <a href="#" class="collection" onclick="AddFavorite(window.location,document.title)">收藏G买卖</a>
	      </div>
	      <div class="rightArea">
	                      欢迎来到G买卖<a class="collection" onclick="login();">[登录]</a><a href=""class="collection" onclick="login();">[注册]</a><a href=""class="collection">[注销]</a><a href=""class="collection">[我的订单]</a>
	      </div>
	   </div>
	</div>
	<div class="logoBar">
	    <div class="comWidth">
	       <div class="logo fl">
	          <a href="#"><img src="../../res/images/icon/logo.png" alt="G买卖" ></a>
	       </div>
	       <div class="logoword fl">
	        <a href="#"><img src="../../res/images/icon/G买卖.png" alt="G买卖" ></a>
	       </div>
	       <div class="search_box fl">
                <input type="text" class="search_text ">
                <input type="button" value="搜 索" class="search_btn">	       
	       </div>
	       
	       <div class="shopCar fr">
	        <div class="shopText fl">购物车</div>
	        <div class="shopNum fr">23</div> 
	       </div>
	    </div>
	</div>
	<div class="navBox">
	    <div class="comWidth clearfix" >
	    	<div class="topmenu fl">
	    		<ul>
		   		  <div class="classify">
		   		    全部商品分类
		   		  </div>
				  <li><a href="#">帐号</a>
				     <div class="submenu">
				        <div class="leftdiv">
				         <dl>
                        <dt><a href="#">战士</a></dt>
                        <dd>
                            <a href="#">月之领主</a> <a href="#">剑皇</a> <a href="#">狂战士</a> <a href="#">毁灭者</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">牧师</a></dt>
                        <dd>
                            <a href="#">十字军</a> <a href="#">圣骑士</a> <a href="#">雷神</a> <a href="#">圣徒</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">弓箭手</a></dt>
                        <dd>
                            <a href="#">影舞者</a> <a href="#">风行者</a> <a href="#">狙灵</a> <a href="#">魔羽</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">魔法师</a></dt>
                        <dd>
                            <a href="#">火舞</a> <a href="#">冰灵</a> <a href="#">黑暗女王</a> <a href="#">时空领主</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">学者</a></dt>
                        <dd>
                            <a href="#">机械大师</a> <a href="#">重炮手</a> <a href="#">炼金圣士</a> <a href="#">药剂师</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">舞娘</a></dt>
                        <dd>
                            <a href="#">灵魂舞者</a> <a href="#">刀锋舞者</a> <a href="#">黑暗萨满</a> <a href="#">噬魂者</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">刺客</a></dt>
                        <dd>
                            <a href="#">影</a> <a href="#">烈</a> <a href="#">暗</a> <a href="#">耀</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">萌骑士</a></dt>
                        <dd>
                            <a href="#">皇家骑士</a> <a href="#">魔枪骑士</a> 
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">兽娘</a></dt>
                        <dd>
                            <a href="#">破风</a> <a href="#">御灵</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">外传职业</a></dt>
                        <dd>
                            <a href="#">黑暗复仇者</a> <a href="#">银色猎人</a> <a href="#">黑暗牧师</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">区服</a></dt>
                        <dd>
                            <a href="#">华东电信一区</a> <a href="#">华南电信一区</a> <a href="#">鬼区</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">价格</a></dt>
                        <dd>
                            <a href="#">1000元以下</a> <a href="#">1000到2000元</a> <a href="#">2000到3000元</a> <a href="#">3000到4000元</a><a href="#">4000元以上</a>  
                        </dd>
                    </dl>
                     

				        </div>
				        <div class="rightdiv">
				           <dl>
                        <dd>
                            <a href="http://sale.jd.com/act/1XDZ6ShE5M7tTrl.html">
                                <img src="//gmmpc.sdoprofile.com/pc/all/img/homeimage004_d73766d.jpg"
                                    width="194" height="70" title="\家电">
                            </a>
                        </dd>
                    </dl>
                    <dl>
                        <dt>推荐职业</dt>
                        <dd>
                            <a href="#">黑腹</a>
                        </dd>
                        <dd>
                            <a href="#">月神</a>
                        </dd>
                        <dd>
                            <a href="#">影</a>
                        </dd>
                    </dl>
				        </div>
				     </div>
				  </li>
				   <li><a href="#">金币</a>
				     <div class="submenu">
				        <div class="leftdiv">
				         <dl>
                        <dt><a href="#">金商</a></dt>
                        <dd>
                            <a href="#">小草金币</a> <a href="#">娜姐金币</a> <a href="#">小梦金币</a> <a href="#">花姐金币</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">区服</a></dt>
                        <dd>
                            <a href="#">华东电信一区</a> <a href="#">华南电信一区</a> <a href="#">鬼区</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">私人金币</a></dt>
                    </dl>
                    <!-- <dl>
                        <dt><a href="#">魔法师</a></dt>
                        <dd>
                            <a href="#">火舞</a> <a href="#">冰灵</a> <a href="#">黑暗女王</a> <a href="#">时空领主</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">学者</a></dt>
                        <dd>
                            <a href="#">机械大师</a> <a href="#">重炮手</a> <a href="#">炼金圣士</a> <a href="#">药剂师</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">舞娘</a></dt>
                        <dd>
                            <a href="#">灵魂舞者</a> <a href="#">刀锋舞者</a> <a href="#">黑暗萨满</a> <a href="#">噬魂者</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">刺客</a></dt>
                        <dd>
                            <a href="#">影</a> <a href="#">烈</a> <a href="#">暗</a> <a href="#">耀</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">萌骑士</a></dt>
                        <dd>
                            <a href="#">皇家骑士</a> <a href="#">魔枪骑士</a> 
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">兽娘</a></dt>
                        <dd>
                            <a href="#">破风</a> <a href="#">御灵</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">外传职业</a></dt>
                        <dd>
                            <a href="#">黑暗复仇者</a> <a href="#">银色猎人</a> <a href="#">黑暗牧师</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">区服</a></dt>
                        <dd>
                            <a href="#">华东电信一区</a> <a href="#">华南电信一区</a> <a href="#">鬼区</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">价格</a></dt>
                        <dd>
                            <a href="#">1000元以下</a> <a href="#">1000到2000元</a> <a href="#">2000到3000元</a> <a href="#">3000到4000元</a><a href="#">4000元以上</a>  
                        </dd>
                    </dl> -->
                     

				        </div>
				        <div class="rightdiv">
				           <dl>
                        <dd>
                            <a href="http://sale.jd.com/act/1XDZ6ShE5M7tTrl.html">
                                <img src="//gmmpc.sdoprofile.com/pc/all/img/homeimage004_d73766d.jpg"
                                    width="194" height="70" title="\家电">
                            </a>
                        </dd>
                    </dl>
                    <dl>
                        <dt>推荐职业</dt>
                        <dd>
                            <a href="#">黑腹</a>
                        </dd>
                        <dd>
                            <a href="#">月神</a>
                        </dd>
                        <dd>
                            <a href="#">影</a>
                        </dd>
                    </dl>
				        </div>
				     </div>
				  </li>
				  <li><a href="#">装备</a>
				     <div class="submenu">
				        <div class="leftdiv">
				         <dl>
                        <dt><a href="#">太初饰品</a></dt>
                        <dd>
                            <a href="#">太初戒指</a> <a href="#">太初项链</a> <a href="#">太初耳环</a> 
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">418</a></dt>
                        <dd>
                            <a href="#">破坏</a> <a href="#">魔力</a> <a href="#">疾风</a> <a href="#">巨熊</a><a href="#">致命</a> <a href="#">帷幕</a> <a href="#">铁壁</a><a href="#">生命</a><a href="#">健康</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">359</a></dt>
                        <dd>
                             <a href="#">破坏</a> <a href="#">魔力</a> <a href="#">疾风</a> <a href="#">巨熊</a><a href="#">致命</a> <a href="#">帷幕</a> <a href="#">铁壁</a><a href="#">生命</a><a href="#">健康</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">交换券</a></dt>
                        <dd>
                            <a href="#">塔姐</a> <a href="#">贝爷</a> <a href="#">卡拉汉</a><a href="#">黑暗女王</a> <a href="#">阿依夏</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">塔姐</a></dt>
                        <dd>
                            <a href="#">光</a> <a href="#">暗</a> <a href="#">水</a> <a href="#">火</a>
                        </dd>
                    </dl>
                  <!--   <dl>
                        <dt><a href="#">舞娘</a></dt>
                        <dd>
                            <a href="#">灵魂舞者</a> <a href="#">刀锋舞者</a> <a href="#">黑暗萨满</a> <a href="#">噬魂者</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">刺客</a></dt>
                        <dd>
                            <a href="#">影</a> <a href="#">烈</a> <a href="#">暗</a> <a href="#">耀</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">萌骑士</a></dt>
                        <dd>
                            <a href="#">皇家骑士</a> <a href="#">魔枪骑士</a> 
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">兽娘</a></dt>
                        <dd>
                            <a href="#">破风</a> <a href="#">御灵</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">外传职业</a></dt>
                        <dd>
                            <a href="#">黑暗复仇者</a> <a href="#">银色猎人</a> <a href="#">黑暗牧师</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">区服</a></dt>
                        <dd>
                            <a href="#">华东电信一区</a> <a href="#">华南电信一区</a> <a href="#">鬼区</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">价格</a></dt>
                        <dd>
                            <a href="#">1000元以下</a> <a href="#">1000到2000元</a> <a href="#">2000到3000元</a> <a href="#">3000到4000元</a><a href="#">4000元以上</a>  
                        </dd>
                    </dl> --></div>
                      <div class="rightdiv">
				           <dl>
                        <dd>
                            <a href="http://sale.jd.com/act/1XDZ6ShE5M7tTrl.html">
                                <img src="//gmmpc.sdoprofile.com/pc/all/img/homeimage004_d73766d.jpg"
                                    width="194" height="70" title="\家电">
                            </a>
                        </dd>
                    </dl>
                    <dl>
                        <dt>推荐职业</dt>
                        <dd>
                            <a href="#">黑腹</a>
                        </dd>
                        <dd>
                            <a href="#">月神</a>
                        </dd>
                        <dd>
                            <a href="#">影</a>
                        </dd>
                    </dl>
				        </div>
				     </div></li>
				  <li><a href="#">帐号</a>
				     <div class="submenu">
				        <div class="leftdiv">
				         <dl>
                        <dt><a href="#">战士</a></dt>
                        <dd>
                            <a href="#">月之领主</a> <a href="#">剑皇</a> <a href="#">狂战士</a> <a href="#">毁灭者</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">牧师</a></dt>
                        <dd>
                            <a href="#">十字军</a> <a href="#">圣骑士</a> <a href="#">雷神</a> <a href="#">圣徒</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">弓箭手</a></dt>
                        <dd>
                            <a href="#">影舞者</a> <a href="#">风行者</a> <a href="#">狙灵</a> <a href="#">魔羽</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">魔法师</a></dt>
                        <dd>
                            <a href="#">火舞</a> <a href="#">冰灵</a> <a href="#">黑暗女王</a> <a href="#">时空领主</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">学者</a></dt>
                        <dd>
                            <a href="#">机械大师</a> <a href="#">重炮手</a> <a href="#">炼金圣士</a> <a href="#">药剂师</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">舞娘</a></dt>
                        <dd>
                            <a href="#">灵魂舞者</a> <a href="#">刀锋舞者</a> <a href="#">黑暗萨满</a> <a href="#">噬魂者</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">刺客</a></dt>
                        <dd>
                            <a href="#">影</a> <a href="#">烈</a> <a href="#">暗</a> <a href="#">耀</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">萌骑士</a></dt>
                        <dd>
                            <a href="#">皇家骑士</a> <a href="#">魔枪骑士</a> 
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">兽娘</a></dt>
                        <dd>
                            <a href="#">破风</a> <a href="#">御灵</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">外传职业</a></dt>
                        <dd>
                            <a href="#">黑暗复仇者</a> <a href="#">银色猎人</a> <a href="#">黑暗牧师</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">区服</a></dt>
                        <dd>
                            <a href="#">华东电信一区</a> <a href="#">华南电信一区</a> <a href="#">鬼区</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">价格</a></dt>
                        <dd>
                            <a href="#">1000元以下</a> <a href="#">1000到2000元</a> <a href="#">2000到3000元</a> <a href="#">3000到4000元</a><a href="#">4000元以上</a>  
                        </dd>
                    </dl>
                     

				        </div>
				        <div class="rightdiv">
				           <dl>
                        <dd>
                            <a href="http://sale.jd.com/act/1XDZ6ShE5M7tTrl.html">
                                <img src="//gmmpc.sdoprofile.com/pc/all/img/homeimage004_d73766d.jpg"
                                    width="194" height="70" title="\家电">
                            </a>
                        </dd>
                    </dl>
                    <dl>
                        <dt>推荐职业</dt>
                        <dd>
                            <a href="#">黑腹</a>
                        </dd>
                        <dd>
                            <a href="#">月神</a>
                        </dd>
                        <dd>
                            <a href="#">影</a>
                        </dd>
                    </dl>
				        </div>
				     </div>
				  </li>
				   <li><a href="#">金币</a>
				     <div class="submenu">
				        <div class="leftdiv">
				         <dl>
                        <dt><a href="#">金商</a></dt>
                        <dd>
                            <a href="#">小草金币</a> <a href="#">娜姐金币</a> <a href="#">小梦金币</a> <a href="#">花姐金币</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">区服</a></dt>
                        <dd>
                            <a href="#">华东电信一区</a> <a href="#">华南电信一区</a> <a href="#">鬼区</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">私人金币</a></dt>
                    </dl>
                    <!-- <dl>
                        <dt><a href="#">魔法师</a></dt>
                        <dd>
                            <a href="#">火舞</a> <a href="#">冰灵</a> <a href="#">黑暗女王</a> <a href="#">时空领主</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">学者</a></dt>
                        <dd>
                            <a href="#">机械大师</a> <a href="#">重炮手</a> <a href="#">炼金圣士</a> <a href="#">药剂师</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">舞娘</a></dt>
                        <dd>
                            <a href="#">灵魂舞者</a> <a href="#">刀锋舞者</a> <a href="#">黑暗萨满</a> <a href="#">噬魂者</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">刺客</a></dt>
                        <dd>
                            <a href="#">影</a> <a href="#">烈</a> <a href="#">暗</a> <a href="#">耀</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">萌骑士</a></dt>
                        <dd>
                            <a href="#">皇家骑士</a> <a href="#">魔枪骑士</a> 
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">兽娘</a></dt>
                        <dd>
                            <a href="#">破风</a> <a href="#">御灵</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">外传职业</a></dt>
                        <dd>
                            <a href="#">黑暗复仇者</a> <a href="#">银色猎人</a> <a href="#">黑暗牧师</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">区服</a></dt>
                        <dd>
                            <a href="#">华东电信一区</a> <a href="#">华南电信一区</a> <a href="#">鬼区</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">价格</a></dt>
                        <dd>
                            <a href="#">1000元以下</a> <a href="#">1000到2000元</a> <a href="#">2000到3000元</a> <a href="#">3000到4000元</a><a href="#">4000元以上</a>  
                        </dd>
                    </dl> -->
                     

				        </div>
				        <div class="rightdiv">
				           <dl>
                        <dd>
                            <a href="http://sale.jd.com/act/1XDZ6ShE5M7tTrl.html">
                                <img src="//gmmpc.sdoprofile.com/pc/all/img/homeimage004_d73766d.jpg"
                                    width="194" height="70" title="\家电">
                            </a>
                        </dd>
                    </dl>
                    <dl>
                        <dt>推荐职业</dt>
                        <dd>
                            <a href="#">黑腹</a>
                        </dd>
                        <dd>
                            <a href="#">月神</a>
                        </dd>
                        <dd>
                            <a href="#">影</a>
                        </dd>
                    </dl>
				        </div>
				     </div>
				  </li>
				  <li><a href="#">装备</a>
				     <div class="submenu">
				        <div class="leftdiv">
				         <dl>
                        <dt><a href="#">太初饰品</a></dt>
                        <dd>
                            <a href="#">太初戒指</a> <a href="#">太初项链</a> <a href="#">太初耳环</a> 
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">418</a></dt>
                        <dd>
                            <a href="#">破坏</a> <a href="#">魔力</a> <a href="#">疾风</a> <a href="#">巨熊</a><a href="#">致命</a> <a href="#">帷幕</a> <a href="#">铁壁</a><a href="#">生命</a><a href="#">健康</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">359</a></dt>
                        <dd>
                             <a href="#">破坏</a> <a href="#">魔力</a> <a href="#">疾风</a> <a href="#">巨熊</a><a href="#">致命</a> <a href="#">帷幕</a> <a href="#">铁壁</a><a href="#">生命</a><a href="#">健康</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">交换券</a></dt>
                        <dd>
                            <a href="#">塔姐</a> <a href="#">贝爷</a> <a href="#">卡拉汉</a><a href="#">黑暗女王</a> <a href="#">阿依夏</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">塔姐</a></dt>
                        <dd>
                            <a href="#">光</a> <a href="#">暗</a> <a href="#">水</a> <a href="#">火</a>
                        </dd>
                    </dl>
                  <!--   <dl>
                        <dt><a href="#">舞娘</a></dt>
                        <dd>
                            <a href="#">灵魂舞者</a> <a href="#">刀锋舞者</a> <a href="#">黑暗萨满</a> <a href="#">噬魂者</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">刺客</a></dt>
                        <dd>
                            <a href="#">影</a> <a href="#">烈</a> <a href="#">暗</a> <a href="#">耀</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">萌骑士</a></dt>
                        <dd>
                            <a href="#">皇家骑士</a> <a href="#">魔枪骑士</a> 
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">兽娘</a></dt>
                        <dd>
                            <a href="#">破风</a> <a href="#">御灵</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">外传职业</a></dt>
                        <dd>
                            <a href="#">黑暗复仇者</a> <a href="#">银色猎人</a> <a href="#">黑暗牧师</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">区服</a></dt>
                        <dd>
                            <a href="#">华东电信一区</a> <a href="#">华南电信一区</a> <a href="#">鬼区</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">价格</a></dt>
                        <dd>
                            <a href="#">1000元以下</a> <a href="#">1000到2000元</a> <a href="#">2000到3000元</a> <a href="#">3000到4000元</a><a href="#">4000元以上</a>  
                        </dd>
                    </dl> --></div>
                      <div class="rightdiv">
				           <dl>
                        <dd>
                            <a href="http://sale.jd.com/act/1XDZ6ShE5M7tTrl.html">
                                <img src="//gmmpc.sdoprofile.com/pc/all/img/homeimage004_d73766d.jpg"
                                    width="194" height="70" title="\家电">
                            </a>
                        </dd>
                    </dl>
                    <dl>
                        <dt>推荐职业</dt>
                        <dd>
                            <a href="#">黑腹</a>
                        </dd>
                        <dd>
                            <a href="#">月神</a>
                        </dd>
                        <dd>
                            <a href="#">影</a>
                        </dd>
                    </dl>
				        </div>
				     </div></li>
				    <li><a href="#">帐号</a>
				     <div class="submenu">
				        <div class="leftdiv">
				         <dl>
                        <dt><a href="#">战士</a></dt>
                        <dd>
                            <a href="#">月之领主</a> <a href="#">剑皇</a> <a href="#">狂战士</a> <a href="#">毁灭者</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">牧师</a></dt>
                        <dd>
                            <a href="#">十字军</a> <a href="#">圣骑士</a> <a href="#">雷神</a> <a href="#">圣徒</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">弓箭手</a></dt>
                        <dd>
                            <a href="#">影舞者</a> <a href="#">风行者</a> <a href="#">狙灵</a> <a href="#">魔羽</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">魔法师</a></dt>
                        <dd>
                            <a href="#">火舞</a> <a href="#">冰灵</a> <a href="#">黑暗女王</a> <a href="#">时空领主</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">学者</a></dt>
                        <dd>
                            <a href="#">机械大师</a> <a href="#">重炮手</a> <a href="#">炼金圣士</a> <a href="#">药剂师</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">舞娘</a></dt>
                        <dd>
                            <a href="#">灵魂舞者</a> <a href="#">刀锋舞者</a> <a href="#">黑暗萨满</a> <a href="#">噬魂者</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">刺客</a></dt>
                        <dd>
                            <a href="#">影</a> <a href="#">烈</a> <a href="#">暗</a> <a href="#">耀</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">萌骑士</a></dt>
                        <dd>
                            <a href="#">皇家骑士</a> <a href="#">魔枪骑士</a> 
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">兽娘</a></dt>
                        <dd>
                            <a href="#">破风</a> <a href="#">御灵</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">外传职业</a></dt>
                        <dd>
                            <a href="#">黑暗复仇者</a> <a href="#">银色猎人</a> <a href="#">黑暗牧师</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">区服</a></dt>
                        <dd>
                            <a href="#">华东电信一区</a> <a href="#">华南电信一区</a> <a href="#">鬼区</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">价格</a></dt>
                        <dd>
                            <a href="#">1000元以下</a> <a href="#">1000到2000元</a> <a href="#">2000到3000元</a> <a href="#">3000到4000元</a><a href="#">4000元以上</a>  
                        </dd>
                    </dl>
                     

				        </div>
				        <div class="rightdiv">
				           <dl>
                        <dd>
                            <a href="http://sale.jd.com/act/1XDZ6ShE5M7tTrl.html">
                                <img src="//gmmpc.sdoprofile.com/pc/all/img/homeimage004_d73766d.jpg"
                                    width="194" height="70" title="\家电">
                            </a>
                        </dd>
                    </dl>
                    <dl>
                        <dt>推荐职业</dt>
                        <dd>
                            <a href="#">黑腹</a>
                        </dd>
                        <dd>
                            <a href="#">月神</a>
                        </dd>
                        <dd>
                            <a href="#">影</a>
                        </dd>
                    </dl>
				        </div>
				     </div>
				  </li>
				   <li><a href="#">金币</a>
				     <div class="submenu">
				        <div class="leftdiv">
				         <dl>
                        <dt><a href="#">金商</a></dt>
                        <dd>
                            <a href="#">小草金币</a> <a href="#">娜姐金币</a> <a href="#">小梦金币</a> <a href="#">花姐金币</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">区服</a></dt>
                        <dd>
                            <a href="#">华东电信一区</a> <a href="#">华南电信一区</a> <a href="#">鬼区</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">私人金币</a></dt>
                    </dl>
                    <!-- <dl>
                        <dt><a href="#">魔法师</a></dt>
                        <dd>
                            <a href="#">火舞</a> <a href="#">冰灵</a> <a href="#">黑暗女王</a> <a href="#">时空领主</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">学者</a></dt>
                        <dd>
                            <a href="#">机械大师</a> <a href="#">重炮手</a> <a href="#">炼金圣士</a> <a href="#">药剂师</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">舞娘</a></dt>
                        <dd>
                            <a href="#">灵魂舞者</a> <a href="#">刀锋舞者</a> <a href="#">黑暗萨满</a> <a href="#">噬魂者</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">刺客</a></dt>
                        <dd>
                            <a href="#">影</a> <a href="#">烈</a> <a href="#">暗</a> <a href="#">耀</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">萌骑士</a></dt>
                        <dd>
                            <a href="#">皇家骑士</a> <a href="#">魔枪骑士</a> 
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">兽娘</a></dt>
                        <dd>
                            <a href="#">破风</a> <a href="#">御灵</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">外传职业</a></dt>
                        <dd>
                            <a href="#">黑暗复仇者</a> <a href="#">银色猎人</a> <a href="#">黑暗牧师</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">区服</a></dt>
                        <dd>
                            <a href="#">华东电信一区</a> <a href="#">华南电信一区</a> <a href="#">鬼区</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">价格</a></dt>
                        <dd>
                            <a href="#">1000元以下</a> <a href="#">1000到2000元</a> <a href="#">2000到3000元</a> <a href="#">3000到4000元</a><a href="#">4000元以上</a>  
                        </dd>
                    </dl> -->
                     

				        </div>
				        <div class="rightdiv">
				           <dl>
                        <dd>
                            <a href="http://sale.jd.com/act/1XDZ6ShE5M7tTrl.html">
                                <img src="//gmmpc.sdoprofile.com/pc/all/img/homeimage004_d73766d.jpg"
                                    width="194" height="70" title="\家电">
                            </a>
                        </dd>
                    </dl>
                    <dl>
                        <dt>推荐职业</dt>
                        <dd>
                            <a href="#">黑腹</a>
                        </dd>
                        <dd>
                            <a href="#">月神</a>
                        </dd>
                        <dd>
                            <a href="#">影</a>
                        </dd>
                    </dl>
				        </div>
				     </div>
				  </li>
				  <li><a href="#">装备</a>
				     <div class="submenu">
				        <div class="leftdiv">
				         <dl>
                        <dt><a href="#">太初饰品</a></dt>
                        <dd>
                            <a href="#">太初戒指</a> <a href="#">太初项链</a> <a href="#">太初耳环</a> 
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">418</a></dt>
                        <dd>
                            <a href="#">破坏</a> <a href="#">魔力</a> <a href="#">疾风</a> <a href="#">巨熊</a><a href="#">致命</a> <a href="#">帷幕</a> <a href="#">铁壁</a><a href="#">生命</a><a href="#">健康</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">359</a></dt>
                        <dd>
                             <a href="#">破坏</a> <a href="#">魔力</a> <a href="#">疾风</a> <a href="#">巨熊</a><a href="#">致命</a> <a href="#">帷幕</a> <a href="#">铁壁</a><a href="#">生命</a><a href="#">健康</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">交换券</a></dt>
                        <dd>
                            <a href="#">塔姐</a> <a href="#">贝爷</a> <a href="#">卡拉汉</a><a href="#">黑暗女王</a> <a href="#">阿依夏</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">塔姐</a></dt>
                        <dd>
                            <a href="#">光</a> <a href="#">暗</a> <a href="#">水</a> <a href="#">火</a>
                        </dd>
                    </dl>
                  <!--   <dl>
                        <dt><a href="#">舞娘</a></dt>
                        <dd>
                            <a href="#">灵魂舞者</a> <a href="#">刀锋舞者</a> <a href="#">黑暗萨满</a> <a href="#">噬魂者</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">刺客</a></dt>
                        <dd>
                            <a href="#">影</a> <a href="#">烈</a> <a href="#">暗</a> <a href="#">耀</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">萌骑士</a></dt>
                        <dd>
                            <a href="#">皇家骑士</a> <a href="#">魔枪骑士</a> 
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">兽娘</a></dt>
                        <dd>
                            <a href="#">破风</a> <a href="#">御灵</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">外传职业</a></dt>
                        <dd>
                            <a href="#">黑暗复仇者</a> <a href="#">银色猎人</a> <a href="#">黑暗牧师</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">区服</a></dt>
                        <dd>
                            <a href="#">华东电信一区</a> <a href="#">华南电信一区</a> <a href="#">鬼区</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">价格</a></dt>
                        <dd>
                            <a href="#">1000元以下</a> <a href="#">1000到2000元</a> <a href="#">2000到3000元</a> <a href="#">3000到4000元</a><a href="#">4000元以上</a>  
                        </dd>
                    </dl> --></div>
                      <div class="rightdiv">
				           <dl>
                        <dd>
                            <a href="http://sale.jd.com/act/1XDZ6ShE5M7tTrl.html">
                                <img src="//gmmpc.sdoprofile.com/pc/all/img/homeimage004_d73766d.jpg"
                                    width="194" height="70" title="\家电">
                            </a>
                        </dd>
                    </dl>
                    <dl>
                        <dt>推荐职业</dt>
                        <dd>
                            <a href="#">黑腹</a>
                        </dd>
                        <dd>
                            <a href="#">月神</a>
                        </dd>
                        <dd>
                            <a href="#">影</a>
                        </dd>
                    </dl>
				        </div>
				     </div></li>
			  <li><a href="#">帐号</a>
				     <div class="submenu">
				        <div class="leftdiv">
				         <dl>
                        <dt><a href="#">战士</a></dt>
                        <dd>
                            <a href="#">月之领主</a> <a href="#">剑皇</a> <a href="#">狂战士</a> <a href="#">毁灭者</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">牧师</a></dt>
                        <dd>
                            <a href="#">十字军</a> <a href="#">圣骑士</a> <a href="#">雷神</a> <a href="#">圣徒</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">弓箭手</a></dt>
                        <dd>
                            <a href="#">影舞者</a> <a href="#">风行者</a> <a href="#">狙灵</a> <a href="#">魔羽</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">魔法师</a></dt>
                        <dd>
                            <a href="#">火舞</a> <a href="#">冰灵</a> <a href="#">黑暗女王</a> <a href="#">时空领主</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">学者</a></dt>
                        <dd>
                            <a href="#">机械大师</a> <a href="#">重炮手</a> <a href="#">炼金圣士</a> <a href="#">药剂师</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">舞娘</a></dt>
                        <dd>
                            <a href="#">灵魂舞者</a> <a href="#">刀锋舞者</a> <a href="#">黑暗萨满</a> <a href="#">噬魂者</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">刺客</a></dt>
                        <dd>
                            <a href="#">影</a> <a href="#">烈</a> <a href="#">暗</a> <a href="#">耀</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">萌骑士</a></dt>
                        <dd>
                            <a href="#">皇家骑士</a> <a href="#">魔枪骑士</a> 
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">兽娘</a></dt>
                        <dd>
                            <a href="#">破风</a> <a href="#">御灵</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">外传职业</a></dt>
                        <dd>
                            <a href="#">黑暗复仇者</a> <a href="#">银色猎人</a> <a href="#">黑暗牧师</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">区服</a></dt>
                        <dd>
                            <a href="#">华东电信一区</a> <a href="#">华南电信一区</a> <a href="#">鬼区</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">价格</a></dt>
                        <dd>
                            <a href="#">1000元以下</a> <a href="#">1000到2000元</a> <a href="#">2000到3000元</a> <a href="#">3000到4000元</a><a href="#">4000元以上</a>  
                        </dd>
                    </dl>
                     

				        </div>
				        <div class="rightdiv">
				           <dl>
                        <dd>
                            <a href="http://sale.jd.com/act/1XDZ6ShE5M7tTrl.html">
                                <img src="//gmmpc.sdoprofile.com/pc/all/img/homeimage004_d73766d.jpg"
                                    width="194" height="70" title="\家电">
                            </a>
                        </dd>
                    </dl>
                    <dl>
                        <dt>推荐职业</dt>
                        <dd>
                            <a href="#">黑腹</a>
                        </dd>
                        <dd>
                            <a href="#">月神</a>
                        </dd>
                        <dd>
                            <a href="#">影</a>
                        </dd>
                    </dl>
				        </div>
				     </div>
				  </li>
				   <li><a href="#">金币</a>
				     <div class="submenu">
				        <div class="leftdiv">
				         <dl>
                        <dt><a href="#">金商</a></dt>
                        <dd>
                            <a href="#">小草金币</a> <a href="#">娜姐金币</a> <a href="#">小梦金币</a> <a href="#">花姐金币</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">区服</a></dt>
                        <dd>
                            <a href="#">华东电信一区</a> <a href="#">华南电信一区</a> <a href="#">鬼区</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">私人金币</a></dt>
                    </dl>
                    <!-- <dl>
                        <dt><a href="#">魔法师</a></dt>
                        <dd>
                            <a href="#">火舞</a> <a href="#">冰灵</a> <a href="#">黑暗女王</a> <a href="#">时空领主</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">学者</a></dt>
                        <dd>
                            <a href="#">机械大师</a> <a href="#">重炮手</a> <a href="#">炼金圣士</a> <a href="#">药剂师</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">舞娘</a></dt>
                        <dd>
                            <a href="#">灵魂舞者</a> <a href="#">刀锋舞者</a> <a href="#">黑暗萨满</a> <a href="#">噬魂者</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">刺客</a></dt>
                        <dd>
                            <a href="#">影</a> <a href="#">烈</a> <a href="#">暗</a> <a href="#">耀</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">萌骑士</a></dt>
                        <dd>
                            <a href="#">皇家骑士</a> <a href="#">魔枪骑士</a> 
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">兽娘</a></dt>
                        <dd>
                            <a href="#">破风</a> <a href="#">御灵</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">外传职业</a></dt>
                        <dd>
                            <a href="#">黑暗复仇者</a> <a href="#">银色猎人</a> <a href="#">黑暗牧师</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">区服</a></dt>
                        <dd>
                            <a href="#">华东电信一区</a> <a href="#">华南电信一区</a> <a href="#">鬼区</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">价格</a></dt>
                        <dd>
                            <a href="#">1000元以下</a> <a href="#">1000到2000元</a> <a href="#">2000到3000元</a> <a href="#">3000到4000元</a><a href="#">4000元以上</a>  
                        </dd>
                    </dl> -->
                     

				        </div>
				        <div class="rightdiv">
				           <dl>
                        <dd>
                            <a href="http://sale.jd.com/act/1XDZ6ShE5M7tTrl.html">
                                <img src="//gmmpc.sdoprofile.com/pc/all/img/homeimage004_d73766d.jpg"
                                    width="194" height="70" title="\家电">
                            </a>
                        </dd>
                    </dl>
                    <dl>
                        <dt>推荐职业</dt>
                        <dd>
                            <a href="#">黑腹</a>
                        </dd>
                        <dd>
                            <a href="#">月神</a>
                        </dd>
                        <dd>
                            <a href="#">影</a>
                        </dd>
                    </dl>
				        </div>
				     </div>
				  </li>
				  <li><a href="#">装备</a>
				     <div class="submenu">
				        <div class="leftdiv">
				         <dl>
                        <dt><a href="#">太初饰品</a></dt>
                        <dd>
                            <a href="#">太初戒指</a> <a href="#">太初项链</a> <a href="#">太初耳环</a> 
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">418</a></dt>
                        <dd>
                            <a href="#">破坏</a> <a href="#">魔力</a> <a href="#">疾风</a> <a href="#">巨熊</a><a href="#">致命</a> <a href="#">帷幕</a> <a href="#">铁壁</a><a href="#">生命</a><a href="#">健康</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">359</a></dt>
                        <dd>
                             <a href="#">破坏</a> <a href="#">魔力</a> <a href="#">疾风</a> <a href="#">巨熊</a><a href="#">致命</a> <a href="#">帷幕</a> <a href="#">铁壁</a><a href="#">生命</a><a href="#">健康</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">交换券</a></dt>
                        <dd>
                            <a href="#">塔姐</a> <a href="#">贝爷</a> <a href="#">卡拉汉</a><a href="#">黑暗女王</a> <a href="#">阿依夏</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">塔姐</a></dt>
                        <dd>
                            <a href="#">光</a> <a href="#">暗</a> <a href="#">水</a> <a href="#">火</a>
                        </dd>
                    </dl>
                  <!--   <dl>
                        <dt><a href="#">舞娘</a></dt>
                        <dd>
                            <a href="#">灵魂舞者</a> <a href="#">刀锋舞者</a> <a href="#">黑暗萨满</a> <a href="#">噬魂者</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">刺客</a></dt>
                        <dd>
                            <a href="#">影</a> <a href="#">烈</a> <a href="#">暗</a> <a href="#">耀</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">萌骑士</a></dt>
                        <dd>
                            <a href="#">皇家骑士</a> <a href="#">魔枪骑士</a> 
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">兽娘</a></dt>
                        <dd>
                            <a href="#">破风</a> <a href="#">御灵</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">外传职业</a></dt>
                        <dd>
                            <a href="#">黑暗复仇者</a> <a href="#">银色猎人</a> <a href="#">黑暗牧师</a>
                        </dd>
                    </dl>
                    <dl>
                        <dt><a href="#">区服</a></dt>
                        <dd>
                            <a href="#">华东电信一区</a> <a href="#">华南电信一区</a> <a href="#">鬼区</a>
                        </dd>
                    </dl>
                     <dl>
                        <dt><a href="#">价格</a></dt>
                        <dd>
                            <a href="#">1000元以下</a> <a href="#">1000到2000元</a> <a href="#">2000到3000元</a> <a href="#">3000到4000元</a><a href="#">4000元以上</a>  
                        </dd>
                    </dl> --></div>
                      <div class="rightdiv">
				           <dl>
                        <dd>
                            <a href="http://sale.jd.com/act/1XDZ6ShE5M7tTrl.html">
                                <img src="//gmmpc.sdoprofile.com/pc/all/img/homeimage004_d73766d.jpg"
                                    width="194" height="70" title="\家电">
                            </a>
                        </dd>
                    </dl>
                    <dl>
                        <dt>推荐职业</dt>
                        <dd>
                            <a href="#">黑腹</a>
                        </dd>
                        <dd>
                            <a href="#">月神</a>
                        </dd>
                        <dd>
                            <a href="#">影</a>
                        </dd>
                    </dl>
				        </div>
				     </div></li>
	   	    	</ul>
	   		</div>

	   		<div class="homepage fl"><a href="#">首页</a></div><!-- topmenu有float：left属性  自己不加float：left属性虽然可以使得homepage做浮动 但是 padding和margin会无效 -->
	   		<div class="homepage fl" onClick="woyaomai()"><a href="#">我要卖</a></div>
	   		<div class="homepage fl"><a href="#">最热</a></div>
	        <div class="homepage fl"><a href="#">转转乐</a></div>
	        <div class="homepage fl"><a href="#">道具城</a></div>
	        <div class="homepage fl"><a href="#">g买卖会员</a></div>
	        <div class="homepage fl"><a href="#">积分商城</a></div>
		  
	 </div>   
    </div> 
 <div class="banner comWidth clearfix">
	<div class="banner_bar banner_big" id="picBox">
	<!-- <div class="loading"><img src="../../res/images/loading.gif" alt=图片加载中。。></div> -->
	<div style="overflow:hidden;height:357px;">
		<ul >
			<li><a href="#"><img src="../../res/images/ad1.jpg" ></a></li>
			<li><a href="#"><img src="../../res/images/ad2.jpg" ></a></li>
			<li><a href="#"><img src="../../res/images/ad3.jpg" ></a></li>
			<li><a href="#"><img src="../../res/images/ad4.jpg" ></a></li>
            <li><a href="#"><img src="../../res/images/ad5.jpg" ></a></li>
		</ul>
	</div>
	</div>
</div> 
</div>
<div class="shopTit comWidth">
	<span class="icon"></span><h3>帐号</h3>
	<a href="#" class="more">更多&gt;&gt;</a>
</div>

<div class="shopList comWidth clearfix">
	<div class="leftArea">
<img class="leftimage" src="../../res/images/account.png" alt="banner">		
	</div>
	
	<div class="rightArea">
		<div class="shopList_top clearfix">
			<div class="shop_item">
				<div class="shop_img">
					<a href="#"><img src="picture/shopImg.jpg" alt=""></a>
				</div>
				<h3>HTC新渴望8系列</h3>
				<p>1899元</p>
			</div>
			<div class="shop_item">
				<div class="shop_img">
					<a href="#"><img src="images/shopImg.jpg" alt=""></a>
				</div>
				<h3>HTC新渴望8系列</h3>
				<p>1899元</p>
			</div>
			<div class="shop_item">
				<div class="shop_img">
					<a href="#"><img src="images/shopImg.jpg" alt=""></a>
				</div>
				<h3>HTC新渴望8系列</h3>
				<p>1899元</p>
			</div>
			<div class="shop_item">
				<div class="shop_img">
					<a href="#"><img src="images/shopImg.jpg" alt=""></a>
				</div>
				<h3>HTC新渴望8系列</h3>
				<p>1899元</p>
			</div>
		</div>
	</div>
	
</div>

<div class="shopTit comWidth">
	<span class="icon"></span><h3>金币</h3>
	<a href="#" class="more">更多&gt;&gt;</a>
</div>

<div class="shopList comWidth clearfix">
	<div class="leftArea">
<img class="leftimage" src="../../res/images/gold.png" alt="banner">		
	</div>
	
	<div class="rightArea">
		<div class="shopList_top clearfix">
			<div class="shop_item">
				<div class="shop_img">
					<a href="#"><img src="picture/shopImg.jpg" alt=""></a>
				</div>
				<h3>HTC新渴望8系列</h3>
				<p>1899元</p>
			</div>
			<div class="shop_item">
				<div class="shop_img">
					<a href="#"><img src="images/shopImg.jpg" alt=""></a>
				</div>
				<h3>HTC新渴望8系列</h3>
				<p>1899元</p>
			</div>
			<div class="shop_item">
				<div class="shop_img">
					<a href="#"><img src="images/shopImg.jpg" alt=""></a>
				</div>
				<h3>HTC新渴望8系列</h3>
				<p>1899元</p>
			</div>
			<div class="shop_item">
				<div class="shop_img">
					<a href="#"><img src="images/shopImg.jpg" alt=""></a>
				</div>
				<h3>HTC新渴望8系列</h3>
				<p>1899元</p>
			</div>
		</div>
	</div>
	
</div>


<div class="shopTit comWidth">
	<span class="icon"></span><h3>装备</h3>
	<a href="#" class="more">更多&gt;&gt;</a>
</div>

<div class="shopList comWidth clearfix">
	<div class="leftArea">
<img class="leftimage" src="../../res/images/equipment.png" alt="banner">		
	</div>
	
	<div class="rightArea">
		<div class="shopList_top clearfix">
			<div class="shop_item">
				<div class="shop_img">
					<a href="#"><img src="picture/shopImg.jpg" alt=""></a>
				</div>
				<h3>HTC新渴望8系列</h3>
				<p>1899元</p>
			</div>
			<div class="shop_item">
				<div class="shop_img">
					<a href="#"><img src="images/shopImg.jpg" alt=""></a>
				</div>
				<h3>HTC新渴望8系列</h3>
				<p>1899元</p>
			</div>
			<div class="shop_item">
				<div class="shop_img">
					<a href="#"><img src="images/shopImg.jpg" alt=""></a>
				</div>
				<h3>HTC新渴望8系列</h3>
				<p>1899元</p>
			</div>
			<div class="shop_item">
				<div class="shop_img">
					<a href="#"><img src="images/shopImg.jpg" alt=""></a>
				</div>
				<h3>HTC新渴望8系列</h3>
				<p>1899元</p>
			</div>
		</div>
	</div>
	
</div>


<%@include file="../../include/footer.jsp" %>
<%-- <div id="sale" hidden="hidden">
     	<c:import url="iwanttosale33.jsp" />
</div>
 --%>

<%@include file="../../include/fly.jsp" %>

<script type="text/javascript">
  woyaomai=function(){
	  var $win;
	  $win=$("#sale").window({
	 	    title: '我要卖',
	 	    width: 1200,
	 	    height: 599,
	 	    shadow: true,
	 	    modal: true,
	 	    iconCls: 'icon-add',
	 	    closed: false,
	 	    minimizable: false,
	 	    maximizable: false,
	 	    collapsible: false
	   });
	     $win.window('open');
	     $("#sale").show();
	  }

	
</script>
</body>
</html>