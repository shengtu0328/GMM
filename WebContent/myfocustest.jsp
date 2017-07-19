<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="../res/js/myfocus-2.0.1.min.js" type="text/javascript"></script>
<script src="../res/js/mf-pattern/mF_slide3D.js" type="text/javascript"></script>
<link type="text/css" rel="stylesheet" href="../res/js/mf-pattern/mF_slide3D.css">
<script type="text/javascript">
myFocus.set(
		{
			
	      id:'picBox2',
		  width:309,//设置图片区域宽度(像素)
		  height:509,//设置图片区域高度(像素)

		}
		)
</script>
</head>
<body>
<div class="picturebox" id="picBox2">
  <div class="loading"><img src="../res/images/loading.gif" alt=图片加载中。。></div> 
	   <div class="pic">
		<ul >
			<li><a href="#"><img src="${base}/res/images/ad1.jpg" ></a></li>
			<li><a href="#"><img src="${base}/res/images/ad2.jpg" ></a></li>
			<li><a href="#"><img src="${base}/res/images/ad3.jpg" ></a></li>
			<li><a href="#"><img src="${base}/res/images/ad4.jpg" ></a></li>
            <li><a href="#"><img src="${base}/res/images/ad5.jpg" ></a></li>
		</ul>
	   </div>
	</div>
</body>
</html>