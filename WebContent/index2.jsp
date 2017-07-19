<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>G买卖首页</title>
<script src="js/myfocus-2.0.1.min.js" type="text/javascript"></script>
<script src="js/mf-pattern/mF_taobaomall.js" type="text/javascript"></script>
<link type="text/css" rel="stylesheet" href="js/mf-pattern/mF_taobaomall.css">
<script type="text/javascript">
myFocus.set(
		{
			
	  id:'picBox1'
			
		}
		)
</script>
<style type="text/css">
.ad
{
	height:310px;
	overflow:hidden;
}

</style>



<script type="text/javascript">
  $(function(){
	 $(".classify").mouseover(function(){
		 $("li").show();
		 
		 
		 })
	 $(".navmenu").mouseout(function(){
		 
		 $(this).children("ul").hide();
		 
		 })
	  
	  })
  
</script>
</head>
<body>

	<div class="ad" id="picBox1">
	<div class="loading"><img src="images/loading.gif" alt="xxs"/></div>
	<div class="pic">
		<ul >
			<li><a href="#"><img src="images/ad.jpg" ></a></li>
			<li><a href="#"><img src="images/ad4.jpg" ></a></li>
			<li><a href="#"><img src="images/ad3.jpg" ></a></li>
			<li><a href="#"><img src="images/ad2.jpg" ></a></li>
		</ul>
	</div>
	</div>

</body>
</html>