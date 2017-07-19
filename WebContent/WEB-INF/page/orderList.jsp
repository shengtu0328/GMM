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

   
       
				<table class="table table-bordered table-hover" >
					<thead>
						<tr>
							<th>订单号</th>
							<th>区服</th>
							<th>买家</th>
							<th>总价</th>
							<th>状态</th>
							<th>qq</th>
							<th>手机</th>
							<th>新建账号</th>
							<th>时间</th>		
							<th>操作</th>						
						</tr>
					</thead>
					<tbody id="tbodyId"> 
						<c:forEach var="order" items="${orderList}">
						<tr>
							<th data-toggle="modal" id="${order.orderId}" onclick="querrygoods(this)" data-target="#myModal" scope="row">${order.orderId}</th>
							<td>${order.area}</td>
							<td>${order.buyer}</td>
							<td>${order.totalPrice}</td>
							<td id="${order.orderId}state">${order.state}</td>
							<td>${order.qq}</td>
							<td>${order.telephone}</td>
							<td>${order.gameAccount}</td>
							<td>${order.createTime}</td>
							<td>
							
							<button type="button" class="btn btn-primary" name="${order.orderId}" onclick="deliver(this)" >发货</button>
							<button type="button" class="btn btn-primary" name="${order.orderId}" onclick="cancel(this)"  >取消</button>
							</td>
						</tr>
						</c:forEach>
					</tbody>
				</table>
			</div>
		


<!-- <button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
  Launch demo modal
</button> -->
<script type="text/javascript">
/* 
function showbutton(obj)
{  
	 alert(1)
	 var orderId=obj.name;
	 alert(orderId)
	 var state=$("#"+orderId+"state");
} */
$(function(){
	var leng = $("#tbodyId tr").length; 
	for(var i=0; i<leng; i++) 
	  { 
	   if($("#tbodyId tr").eq(i).find("td:eq(3)").html()!="已付款")
		   {
		  ($("#tbodyId tr").eq(i).find("button").hide())
		   }
	  } 
}
); 
function querrygoods(obj)
{	var a=obj.id;
	   $.ajax({
			 url:base+"/order/checkGoodsByOrdeId.htm",
			 type:"post",
			 data:{
				   "orderId":a
				  },
				  success:function(data)
				    {
					  var text='';
					  $.each($.parseJSON(data), function(i,val){      
						  $.each(val, function(i,val){  
							text="<div class=\"form-group\">"
						    text+="<label for=\""+i+"\" class=\"control-label\">"+i+"</label>";
						    text+="<input type=\"text\"  readonly  class=\"form-control\" id=\"recipient-name\""+"value=\""+val+"\">";
						    $("#goodsdetail").append(text);
						  });
						  $("#goodsdetail").append("<p class=\"bg-primary\">下一条</p>");
					  }); 
					  
					/* 
			          <div class="form-group">
			            <label for="recipient-name" class="control-label">Recipient:</label>
			            <input type="text" class="form-control" id="recipient-name" value="3">
			          </div> */
			      
			       
					 /*  alert(data) */
					 
				    }
				  
		     }); 
}
function closemodal()
{	
	
	 $(".modal-body").empty(); 
}

function deliver(obj)
{	
	
	 alert(obj.name);
	 var orderId=obj.name;
	 $.ajax({
		 url:base+"/order/deliver.htm",
		 type:"post",
		 data:{
			   "orderId":orderId,
			  },
	    success:function(data)
	    {   if(data=="success")
	    	{
	    	/* alert(data)	 */
	    	
	    	$("#"+orderId+"state").text("已发货")
	    	}
	    	
	    }  
	     });
	 window.location.reload();
}

function cancel(obj)
{	
	
	/*  alert(obj.name) */
	 var orderId=obj.name;
	 $.ajax({
		 url:base+"/order/cancel.htm",
		 type:"post",
		 data:{
			   "orderId":orderId,
			  },
	    success:function(data)
	    {  
	    	 if(data=="success")
		    	{
		    	/* alert(data)	 */
		    	
		    	$("#"+orderId+"state").text("已取消")
		    	}
	    }  
	     });
	 window.location.reload();
}


</script>
<!-- Modal -->
<div class="modal fade " id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
  <div class="modal-dialog " role="document">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close" ><span  onclick="closemodal()" aria-hidden="true">&times;</span></button>
        <h4 class="modal-title" id="myModalLabel">商品详情</h4>
      </div>
      <div class="modal-body" id="goodsdetail">
       
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal" onclick="closemodal()">Close</button>
      </div>
    </div>
  </div>
</div>
</body>
</html>