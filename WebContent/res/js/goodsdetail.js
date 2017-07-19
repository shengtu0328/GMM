function buy()
{
 var form=$("#goods");
form.submit();
} 

$(document).ready(function(){ 
    var plus = $(".plus");
	var reduction = $(".reduction");
	var goodsNums = parseInt($("#goodsNums").val());
	plus.click(function() {
		var selected= $("#selected");
		var value = parseInt(selected.val());
		if(value<goodsNums)
			{
			selected.val(value + 1);
		     reduction.html("-");
		    
			}
		if(value>=goodsNums)
			{
			 plus.empty();
			}
	});
	reduction.click(function() {
		var selected= $("#selected");
		var value = parseInt(selected.val());
		if(value>1)
		{
			selected.val(value - 1);
			reduction.html("-");
			plus.html("+");
		}
		if(value<=1)	   
	    {
			reduction.empty();
			
		}
		
	});
	
	
	$(".btnCart").click(function()
			{
			   var goodsId=$("#goodsId").text();
			   var selected=parseInt($("#selected").val());
			   if(selected>goodsNums)
				   {
				   selected=goodsNums;
				   }
			   var title=$("#title").text();
			   var price=$("#price").val();
		       var image=$("#img").attr('src').substring(5);
		       var area=$("#area").text();
		       var seller=$("#seller").text();
			   $.ajax({
				 url:base+"/shoppingcar/add.htm",
				 type:"post",
				 data:{
					   "goodsId":goodsId,
					   "goodsNums":goodsNums,
					   "title":title,
					   "price":price,
					   "image":image,
					   "selected":selected,
					   "area":area,
					   "seller":seller
					  },
				 success:function(result)
				 {
			        if(result!="")
			        	window.location.href=base+"/user/login.htm";
			     }
			     });
			}
			);
});