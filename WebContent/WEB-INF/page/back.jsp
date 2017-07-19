<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>后台管理</title>
<%@ include file="../../include/taglib.jsp"%>
<link href="${res}/css/bootstrap.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${res}/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="${res}/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">

  <div class="page-header">
  <h1>虚拟物品交易平台 <small>后台管理</small></h1>
  </div> 

   <div class="row">
          <div class="col-xs-2">
				<div class="panel-group" id="accordion">
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseOne">订单管理</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body" onclick="editUrl('${base}/order/querryorderListByState/已付款.htm')">已付款</div>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body" onclick="editUrl('${base}/order/querryorderListByState/已发货.htm')">已发货</div>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body" onclick="editUrl('${base}/order/querryorderListByState/已取消.htm')">已取消</div>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in">
							<div class="panel-body" onclick="editUrl('${base}/order/querryorderListByState/待付款.htm')">待付款</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"  "
									href="#collapseTwo">标题二</a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse">
							<div class="panel-body">标题二对应的内容</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading">
							<h4 class="panel-title">
								<a data-toggle="collapse" data-parent="#accordion"
									href="#collapseThree">标题三</a>
							</h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse">
							<div class="panel-body">标题三对应的内容</div>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xs-10">
			<iframe src="${base}/order/querryorderListByState/已付款.htm" width="100%"id="iframepage" onload="iFrameHeight()" frameBorder=0 scrolling=no  >
			
			</iframe>
				
			</div>
		</div>
</div>

<!-- <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
  Launch demo modal
</button> -->
<script type="text/javascript">
function querrgoods()
{	
	var orderId=$("#orderId");
/* 	alert(orderId.text()) */
}
function editUrl(url){
	var ifm= document.getElementById("iframepage");   
	ifm.src=url;
}
</script>
<script type="text/javascript" language="javascript">
	function iFrameHeight() {   
		var ifm= document.getElementById("iframepage");   
		var subWeb = document.frames ? document.frames["iframepage"].document : ifm.contentDocument;   
		if(ifm != null && subWeb != null) {
		   ifm.height = subWeb.body.scrollHeight;
		}   
		
	}
	
	function reinitIframe(){
	
	var iframe = document.getElementById("iframepage");
	
	try{
	
	var bHeight = iframe.contentWindow.document.body.scrollHeight;
	
	var dHeight = iframe.contentWindow.document.documentElement.scrollHeight;
	
	var height = Math.max(bHeight, dHeight);
	
	iframe.height =  height;
	
	}catch (ex){}
	
	}	
	window.setInterval("reinitIframe()", 2000);
</script> 
<!-- Modal -->
<div class="modal fade bs-example-modal-lg" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog modal-lg" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">Modal title</h4>
      </div>
      <div class="modal-body">
        ...
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Save changes</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>