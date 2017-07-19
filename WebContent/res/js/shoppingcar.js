/**
 * Created by an.han on 13-12-17.
 */
 // input数量onblur 
function updateAajx(goodsId,selected)
{
	  $.get(base+'/shoppingcar/update.htm',{'goodsId':goodsId,'goodsNums':selected});    
}   

 /*function changeNums(obj)
  {  
	  var selected=parseInt(obj.value);
	  var goodsId=obj.name;
	  var goodsNums;
	  $.ajax({
  	    async:false,
  		url:base+'/goods/getGoodsByGoodsId.htm',
  		data:{'goodsId':goodsId},
  		success:function(data)
  		{
  		goodsNums=data;
  		}
      }); 
	  if (selected > 1&&selected<=parseInt(goodsNums)) {
          getSubtotal(this); 
		  updateAajx(goodsId,selected);
      }
      else if(selected>parseInt(goodsNums))
      { 
        obj.value=parseInt(goodsNums);
   	    alert("最多只能购买"+goodsNums+"件")
   	    updateAajx(goodsId,goodsNums);
      }
  }*/
 
window.onload = function () {
    if (!document.getElementsByClassName) {
        document.getElementsByClassName = function (cls) { }
    }

    var table = document.getElementById('cartTable'); // 购物车表格
    var selectInputs = document.getElementsByClassName('check'); // 所有勾选框
    var checkAllInputs = document.getElementsByClassName('check-all') // 全选框
    var tr = table.children[1].rows; //行
    var selectedTotal = document.getElementById('selectedTotal'); //已选商品数目容器
    var priceTotal = document.getElementById('priceTotal'); //总计
    var deleteAll = document.getElementById('deleteAll'); // 删除全部按钮
    var selectedViewList = document.getElementById('selectedViewList'); //浮层已选商品列表容器
    var selected = document.getElementById('selected'); //已选商品
    var foot = document.getElementById('foot');
    var account=document.getElementById('account');

    // 更新总数和总价格，已选浮层
    function getTotal() {
        var selected = 0, price = 0, html = '';
        for (var i = 0; i < tr.length; i++) {
            if (tr[i].getElementsByTagName('input')[0].checked) {
                tr[i].className = 'on';
                selected += parseInt(tr[i].getElementsByTagName('input')[1].value); //计算已选商品数目
                price += parseFloat(tr[i].getElementsByTagName('td')[4].innerHTML); //计算总计价格
                html += '<div><img src="'+tr[i].getElementsByTagName('img')[0].src+'"><span class="del" index="'+i+'">取消选择</span></div>';// 添加图片到弹出层已选商品列表容器
            }else{
                tr[i].className = '';
            }
        }
        selectedTotal.innerHTML = selected; // 已选数目
        priceTotal.innerHTML = price.toFixed(2); // 总价
        selectedViewList.innerHTML = html;
        if (selected==0) {
            foot.className = 'foot';
        }
    }

    // 计算单行价格
    function getSubtotal(tr) {
        var cells = tr.cells;
        var price = cells[2]; //单价
        var subtotal = cells[4]; //小计td
        var countInput = tr.getElementsByTagName('input')[1]; //数目input
        var span = tr.getElementsByTagName('span')[1]; //-号
        //写入HTML
        subtotal.innerHTML = (parseInt(countInput.value) * parseFloat(price.innerHTML)).toFixed(2);
        //如果数目只有一个，把-号去掉
        if (countInput.value == 1) {
            span.innerHTML = '';
        }else{
            span.innerHTML = '-';
        }
    }

    // 点击选择框
    for(var i = 0; i < selectInputs.length; i++ ){
        selectInputs[i].onclick = function () {
            if (this.className.indexOf('check-all') >= 0) { //如果是全选，则吧所有的选择框选中
                for (var j = 0; j < selectInputs.length; j++) {
                    selectInputs[j].checked = this.checked;
                }
            }
            if (!this.checked) { //只要有一个未勾选，则取消全选框的选中状态
                for (var i = 0; i < checkAllInputs.length; i++) {
                    checkAllInputs[i].checked = false;
                }
            }
            getTotal();//选完更新总计
        }
    }

    // 显示已选商品弹层
    selected.onclick = function () {
        if (selectedTotal.innerHTML != 0) {
            foot.className = (foot.className == 'foot' ? 'foot show' : 'foot');
        }
    }

    //已选商品弹层中的取消选择按钮
    selectedViewList.onclick = function (e) {
        var e = e || window.event;
        var el = e.srcElement;
        if (el.className=='del') {
            var input =  tr[el.getAttribute('index')].getElementsByTagName('input')[0]
            input.checked = false;
            input.onclick();
        }
    }

    //为每行元素添加事件
    for (var i = 0; i < tr.length; i++) {
        //将点击事件绑定到tr元素
        tr[i].onclick = function (e) {
            var e = e || window.event;
            var el = e.target || e.srcElement; //通过事件对象的target属性获取触发元素
            var cls = el.className; //触发元素的class
            var countInout = this.getElementsByTagName('input')[1]; // 数目input
            var goodsId= this.getElementsByTagName('span')[4].innerHTML; 
            var value = parseInt(countInout.value); //数目
            //通过判断触发元素的class确定用户点击了哪个元素
            var goodsNums;
            $.ajax({
            	    async:false,
            		url:base+'/goods/getGoodsByGoodsId.htm',
            		data:{'goodsId':goodsId},
            		success:function(data)
            		{
            		goodsNums=data;
            		}
            }); 
           
            switch (cls) {
                case 'add': //点击了加号
                    countInout.value = value + 1;
                    
                 /*  alert((goodsNums));
                    alert(countInout.value);*/
                   if(countInout.value<=parseInt(goodsNums))
                   {  
                	   getSubtotal(this); 
                       $.get(base+'/shoppingcar/update.htm',{'goodsId':goodsId,'goodsNums':countInout.value}); 
                   }
                   else
                  	{ 
                	   
                	   countInout.value=parseInt(goodsNums);
                	   alert("该商品最多只能购买"+goodsNums+"件")
                	   
                    }
                    break;
                case 'reduce': //点击了减号
                    if (value > 1&&countInout.value<=parseInt(goodsNums)) 
                    {
                        countInout.value = value - 1;
                        getSubtotal(this); 
                    $.get(base+'/shoppingcar/update.htm',{'goodsId':goodsId,'goodsNums':countInout.value});    
                    }
                    else if(value>parseInt(goodsNums))
                    { 
                 	   countInout.value=parseInt(goodsNums);
                 	   alert("最多只能购买"+goodsNums+"件")
                     }
                    break;
                case 'delete': //点击了删除
                    var conf = confirm('确定删除此商品吗？');
                    if (conf) {
                        this.parentNode.removeChild(this);
                     $.get(base+'/shoppingcar/delete.htm',{'goodsId':goodsId});      
                    }
                    break;
            
            }
            
            
           
            getTotal();
        }
        // 给数目输入框绑定keyup事件
        tr[i].getElementsByTagName('input')[1].onkeyup = function () {
            var val = parseInt(this.value);
            var goodsId=this.name;
        	var goodsNums;
             $.ajax({
             	    async:false,
             		url:base+'/goods/getGoodsByGoodsId.htm',
             		data:{'goodsId':goodsId},
             		success:function(data)
             		{
             		goodsNums=data;
             		}
             }); 
            if (isNaN(val) || val <= 0) {
                val = 1;
            }
            else if (this.value > parseInt(goodsNums)) {
                this.value = goodsNums;
                $.get(base+'/shoppingcar/update.htm',{'goodsId':goodsId,'goodsNums':goodsNums});   
            }
            else if (this.value <parseInt(goodsNums)) {
                this.value = val;
                $.get(base+'/shoppingcar/update.htm',{'goodsId':goodsId,'goodsNums':val});   
            }
            getSubtotal(this.parentNode.parentNode); //更新小计
            getTotal(); //更新总数
        }
    }
   


    // 点击全部删除
    deleteAll.onclick = function () {
        if (selectedTotal.innerHTML != 0) {
            var con = confirm('确定删除所选商品吗？'); //弹出确认框
            if (con) {
                for (var i = 0; i < tr.length; i++) {
                    // 如果被选中，就删除相应的行
                    if (tr[i].getElementsByTagName('input')[0].checked) {
                    	var goodsId=tr[i].getElementsByTagName('span')[4].innerHTML;
                    	$.get(base+'/shoppingcar/delete.htm',{'goodsId':goodsId});      
                        tr[i].parentNode.removeChild(tr[i]); // 删除相应节点
                        i--; //回退下标位置
                    }
                }
            }
        } else {
            alert('请选择商品！');
        }
        getTotal(); //更新总数
    }
    
    //点击结算
    account.onclick = function (){
    	var goodsIdArray="";
    	var result=0;
    	/*if(tr.length>1)
    	{
    	var area=tr[0].getElementsByTagName('span')[5].innerHTML;
    	for (var i = 1; i < tr.length; i++) 
    	{
            if (tr[i].getElementsByTagName('input')[0].checked) 
             {
            	if(tr[i].getElementsByTagName('span')[5].innerHTML!=area)
            	{
            		result=false;
            		alert("请选择同一个区服的商品结算")
            		return;
            	}
            }
        }
    	}*/
    	var allchecked=$(".check-one:checkbox:checked");
    	var length=allchecked.length;
    	var area=$(".check-one:checkbox:checked")[0] .name;
    	if(length>1)
    		{
    	          allchecked.each(function(){
    		            if(this.name!=area)
    	                    {
    			               result++;
    			               return;
    	                     }
    	                   
    			
    	                  })
    	                  
    		}
         
    	if(result<1)
        {
    		 allchecked.each(function(){
    			 var goodsId=this.parentNode.parentNode.getElementsByTagName('span')[4].innerHTML;
    			 goodsIdArray+=goodsId+";";
	                  })
	                  window.location.href =base+"/order/shoppingcarGenerate.htm?area="+area+"&goodsIds="+goodsIdArray;
        }
    	else
    		{
    		 alert("请选择同一个区服的商品结算")
    		}
    	
    	
    	
    	
    	
    	
    	
    	
    	
        /*if(result)
        {
        	for (var i = 0; i < tr.length; i++) 
        	{
                if (tr[i].getElementsByTagName('input')[0].checked) 
                 {
                	var goodsId=tr[i].getElementsByTagName('span')[4].innerHTML;
                    goodsIdArray+=goodsId+";";
                    window.location.href =base+"/order/generate.htm?area="+area+"&goodsIds="+goodsIdArray;
                }
            }
        }*/
    	
	}
    
    // 默认全选
    checkAllInputs[0].checked = true;
    checkAllInputs[0].onclick();
}
