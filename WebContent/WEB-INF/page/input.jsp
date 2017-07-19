﻿﻿<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ include file="../../../../include/taglib.jsp"%>
<%@ include file="../../../../include/resource.jsp"%>
<%@ include file="../../../../include/skin_default.jsp"%>


</head>
<body onload="resetCheck('${form.bean.resettlement}');">
  <form:form modelAttribute="form" action="save.htm" method="post" id="form">
    <form:hidden path="bean.id"/>
    <form:hidden path="bean.updater.id" value="${currentUser.id}"/>
      <div class="clearfix">
        <!--tit search start-->
        <div class="title clearfix">
          <div class="imgbtn">
            <a href="javascript:void(0);" onclick="history.back();" class="abtn" title="返回">
              <div class="rtnBtNImg"></div>
            </a>
          </div>
          <div class="tit">
            <div class="icon_tit"></div>
            <b>房屋动迁信息登记</b>
           </div>
        </div>
        <!--tit search end-->
         <div class="tabletit_1"><b>调拨信息</b></div>
        <!--table start-->
        <table width="100%" cellpadding="0" cellspacing="0" class="table_1">
         	  <tr>
				  <th width="15%" scope="row">基地名称</th>
				  <td width="30%">
					  <%--<t:autocomplete--%>
							  <%--name="baseName" entityName="Lookups"--%>
							  <%--labelField="lName"--%>
							  <%--valueField="lCode"--%>
							  <%--searchField="baseCode"--%>
							  <%--result="callBack" dataSource="getCompanyName.htm?type=1" formatItem="formatItem"--%>
							  <%--parse="parse" maxRows="10" nullmsg="请填写基地名称">--%>
					  <%--</t:autocomplete>--%>
					  <input type="text" id="baseName"   autocomplete="off" class="input_1" required="true">
					  <input type="hidden" id="baseCode" name="bean.baseName">
						  <%--<form:select path="bean.baseName"   cssClass="select_1">--%>
						  <%--<form:option value="" label="--请选择---"/>--%>
						  <%--<form:options items="${lookups_JDMC}"  itemLabel="lName"  itemValue="lCode"/>--%>
						  <%--</form:select>--%>
				  </td>
				  <th scope="row">调拨单编号</th>
                  <td >
					 <form:input path="bean.seq" class="input_1" id="seq" required="true"/>
					  <div hidden="hidden" style="width: 160px;" id="check">
						  <font color='red'>编号重复,请重新输入！</font>
					  </div>
				  </td>
              </tr>
       		  <tr>
                  <th width="15%">小区名称</th>
                  <td width="40%" class="lastnone">
					  <%--<t:autocomplete--%>
							  <%--name="communityName" entityName="Lookups"--%>
							  <%--labelField="lName"  valueField="communityCode"  searchField="lName"--%>
							  <%--result="callBack" dataSource="getCompanyName.htm?type=2" formatItem="formatItem"--%>
							  <%--parse="parse" maxRows="10">--%>
					  <%--</t:autocomplete>--%>
						  <input type="text" id="communityName"   class="input_1"  required="true" />
						  <input type="hidden" id="communityCode" name="bean.communityName" />
					  <%--<form:select path="bean.communityName"  cssClass="select_1">--%>
						  <%--<form:option value="" label="--请选择---"/>--%>
						  <%--<form:options items="${lookups_SZXQ}"   itemLabel="lName"  itemValue="lCode"/>--%>
					  <%--</form:select>--%>
 				  </td>
				  <th scope="row">房 型</th>
				  <td>
					  <form:select path="bean.chamber"
								   cssClass="select_1"
								   items="${lookups_FWFX}"
								   itemLabel="lName"
								   itemValue="lCode"/>
				  </td>

              </tr>
			<tr>
				<th scope="row" class="th_1">地 址</th>
				<td class="lastnone" colspan="3"><form:input path="bean.address" class="input_1" style="width:862px"/></td>
			</tr>
			  <tr>
			  	  <th scope="row">房屋性质</th>
                  <td >
					  <form:select path="bean.nature"  cssClass="select_1">
						  <form:option value="" label="--请选择---"/>
						  <form:options items="${lookups_NAXZ}" itemLabel="lName" itemValue="lCode"/>
					  </form:select>
                  </td>
				  <th>现 状</th>
				  <td class="lastnone">
					  <form:select path="bean.status"   cssClass="select_1"  onchange="resetCheck(this.value)">
						  <form:option value="" label="--请选择---"/>
						  <form:options items="${lookups_DQXZ}"  itemLabel="lName" itemValue="lCode"/>
					  </form:select>
				  </td>


              </tr>
			<tr>
				<th scope="row">阳台预测面积(㎡)</th>
				<td class="lastnone"><form:input path="bean.balconyForecastArea"    id="balconyForecastArea" validType="intOrFloat"  class="input_1"/></td>
				<th scope="row">阳台实测面积(㎡)</th>
				<td><form:input path="bean.balconyMeasuredArea"  validType="intOrFloat" class="input_1"/></td>
			</tr>
			<tr>
				<th scope="row">预测面积(㎡)</th>
				<td class="lastnone"><form:input path="bean.forecastArea" id="forecastArea" validType="intOrFloat"  class="input_1"/></td>
				<th scope="row">实测面积(㎡)</th>
				<td ><form:input path="bean.measuredArea"  validType="intOrFloat"  class="input_1"/></td>

			</tr>
              <tr>
                 <th scope="row">现房总价</th>
                 <td><input type="text" validType="intOrFloat"  class="input_1" name="bean.qfTotalPrice" value="<fmt:formatNumber value="${form.bean.qfTotalPrice}" pattern="#0.00"/>"/></td>
                 <th scope="row">期房总价</th>
                 <td  class="lastnone">
                 	<input type="text" validType="intOrFloat"  class="input_1" name="bean.totalPrice" value="<fmt:formatNumber value="${form.bean.totalPrice}" pattern="#0.00"/>"/>
                 </td>
              </tr>
			  <tr>
				  <th scope="row">单 价</th>
				  <td class="lastnone">
					  <input type="text" validType="intOrFloat"  class="input_1" name="bean.price" value="<fmt:formatNumber value="${form.bean.price}" pattern="#0.00"/>"/>
				  </td>
				  <th scope="row">现房总价</th>
				  <td><input type="text" validType="intOrFloat"  class="input_1" name="bean.qfTotalPrice" value="<fmt:formatNumber value="${form.bean.qfTotalPrice}" pattern="#0.00"/>"/></td>

				  <%--<th scope="row">实测面积(㎡)</th>--%>
                  <%--<td ><form:input path="bean.measuredArea"  validType="intOrFloat"  class="input_1"/></td>--%>
                  <%--<th scope="row">预测面积(㎡)</th>--%>
                  <%--<td class="lastnone"><form:input path="bean.forecastArea"  validType="intOrFloat"  class="input_1"/></td>--%>
              </tr>

              <tr id="azqk">
				  <th scope="row">安置情况</th>
                  <td >
                     <form:select path="bean.resettlement"  cssClass="select_1" onchange="resetCheck(this.value)" id="resettlement">
						 <form:option value="" label="--请选择---"/>
						 <form:options items="${lookups_AZStatus}"  itemLabel="lName" itemValue="lCode"/>
					 </form:select>
                  </td>
                  <th scope="row"  id="returnDateth">归还时间</th>
                  <td >
                     <form:input path="bean.returnDate"  class="input_1" id="returnDate"/>
                  </td>
              </tr>

			<tr>
				<th scope="row" class="th_1">备 注</th>
				<td class="lastnone" colspan="3"><form:textarea path="bean.remark" rows="5" class="textarea"></form:textarea></td>
			</tr>
        </table>
        <br/>
        <!--table end-->
        <!--tablelist start-->
         <!--table start-->
		<div id="div_azh">
		   <div class="tabletit_1"><b>安置信息</b></div>
           <table width="100%" cellpadding="0" cellspacing="0" class="table_1">
			   <tr>
			   	 <th width="15%" scope="row" class="th_1">安置编号</th>
                 <td width="40%" class="lastnone">
                 	<form:input path="bean.resetNo"  class="input_1" id="resetNo" onblur="checkResetNo(this.value,'${form.bean.id}');" />
                 </td>
                 <th width="15%" scope="row">产权人姓名</th>
                 <td width="30%" class="lastnone"><form:input path="bean.rightHolder"   class="input_1" id="rightHolder"/></td>
              </tr>
              <tr>
              	 <th width="15%" scope="row" class="th_1">签约日期</th>
                 <td width="30%" class="lastnone"><form:input path="bean.signDate"  class="input_1" id="signDate"/></td>
                 <th width="15%" scope="row" class="th_1">原住地址</th>
                 <td class="lastnone"><form:input path="bean.orgAddress"   class="input_1" style="width:380px" id="orgAddress"/></td>
              </tr>
           </table>
           <!--tablelist end-->
           <br/>
      </div>
      <div class="tc">
	      <button type="button" class="btn_2" onClick="doSubmit();">确     认</button>
	      <button type="button" class="btn_2" onClick="history.back();">返　回</button>
	  </div>
    </div>
  </form:form>
  <!--right end-->
  <script type="text/javascript">
    var op = '${op}';//查看标志位
//	$("#seq").blur(function(){
//		checkCode();
//	});
 

//	$("#resetNo").blur(function(){
//		checkCode();
//	});
//    function init(){
//	   checkCode();
//    }

    function resetCheck(val){
   	   $("span").each(function () {
           if ($(this).attr('class') == 'required') {
             $(this).remove();
           }
       });

        if(val=='GH'){
            $("#returnDate").show();
            $("#returnDateth").show();
           /* if($("#returnDate").val()==''){
                $("#returnDate").after("<span class='required' style='color:red;'>请选择归还时间</span>");
            }*/
            $("#div_azh").hide();
        }
        if(val=='DQXF'){
			/* $("#forecasttd").hide();
			 $("#qfTotalPricetd").hide();
			 $("#qfTotalPriceth").hide();*/

            $('#forecastArea').attr("disabled",true);
            $('#forecastArea').css('background-color','#E0E0E0');

            $('#balconyForecastArea').attr("disabled",true);
            $('#balconyForecastArea').css('background-color','#E0E0E0');


            $('#qfTotalPrice').attr("disabled",true);
            $('#qfTotalPrice').css('background-color','#E0E0E0');
            $("#qfTotalPrice").val("");
            $("#forecastArea").val("");
            $("#balconyForecastArea").val("");

        }
        if(val=='DQQF'){

            $('#forecastArea').attr("disabled",false);
            $('#forecastArea').css('background-color','white');

            $('#balconyForecastArea').attr("disabled",false);
            $('#balconyForecastArea').css('background-color','white');


            $('#qfTotalPrice').attr("disabled",false);
            $('#qfTotalPrice').css('background-color','#white');
        }
 	   else{
//		   $("#azqk").html("<th scope='row'>安置情况</th>"+
//		   "<td><select id='resettlement' name='bean.resettlement' class='select_1' onchange='resetCheck(this.value)'>"+
//		   "<option value=''>--请选择---</option> <option value='GH' selected='selected'>归还</option><option value='WAZ'>未安置</option><option value='YAZ'>已安置</option>"+
//		   "</select> <th scope='row' >归还时间</th><td><input name='bean.returnDate'  class='input_1' id='returnDate'/></td ></td>");
	   }
 	   if(val=='WAZ'){
 		  $("#div_azh").hide();
           $("#returnDate").hide();
           $("#returnDateth").hide();
 	   }
 	   if(val=='YAZ'){
		  $("#div_azh").show();
 	   }
    }
  	
    function checkCode(){
       $.post('ajCheck.htm', {seq: $("#seq").val(),id:$("[id='bean.id']").val()}, function (data) {
	  	  if(data>0){
    	    $("#check").attr("value",0);
    	    $("#check").show();
		  }else{
		    $("#check").attr("value",1); 
		    $("#check").hide();
		  }
	    });  
    }


    function  checkResetNo(resetNo,id){
    	$("span").each(function (){
	         if($(this).attr('class')== 'required') {
	             $(this).remove();
	         }
	    });
    	$.post('ajCheckNo.htm',{restNo:resetNo,id:id},function (data) {
			if(data>0){
				$("#resetNo").after("<span class='required' style='color:red;'>安置编号重复，请重新输入！</span>");
			}
        });
    }
 /* changeAz=function()
	{
	  if( $("[id='bean.resettlement']").val()=='YAZ')
		  {
		  $("[id='bean.rightHolder']").attr("required","true"); 
		  $("[id='bean.signDate']").attr("required","true"); 
		  $("[id='bean.orgAddress']").attr("required","true"); 
		  $("[id='bean.returnDate']").removeAttr("required").Attr("disable","true");
		  }
	  else if( $("[id='bean.resettlement']").val()=='GH')
		  {
		  $("[id='bean.returnDate']").attr("required","true").removeAttr("disable"); 
		  $("[id='bean.rightHolder']").removeAttr("required"); 
		  $("[id='bean.signDate']").removeAttr("required"); 
		  $("[id='bean.orgAddress']").removeAttr("required"); 
		  }
	  else
		  {
		  $("[id='bean.rightHolder']").removeAttr("required"); 
		  $("[id='bean.signDate']").removeAttr("required"); 
		  $("[id='bean.orgAddress']").removeAttr("required"); 
		  $("[id='bean.returnDate']").removeAttr("required").removeAttr("disable"); 
		  
		  }
	}	 */ 
	
  //调用验证方法
  $(function(){
	  $('#form input').each(function(){
	      if($(this).attr('required') || $(this).attr('validType'))
	      $(this).validatebox();
	  });
  });
  
  function doSubmit() {
	  if($('#form').form('validate')) {
            //  if($("#check").attr("value")=='1'){
			 $("span").each(function () {
		         if($(this).attr('class')== 'required') {
		             $(this).remove();
		         }
		     });
			 var resettlement=$("#resettlement").val();
			 if(resettlement=='YAZ'){
				 var resetNo=$("#resetNo").val();
				 var rightHolder=$("#rightHolder").val();
				 var signDate=$("#signDate").val();
				 var orgAddress=$("#orgAddress").val();
				 if($.trim(resetNo)==''){
					 $("#resetNo").after("<span class='required' style='color:red;'>请输入安置编号</span>");
					 return;
			     }
				 if($.trim(rightHolder)==''){
					 $("#rightHolder").after("<span class='required' style='color:red;'>请输入产权人姓名</span>");
					 return;
			     }
				 if($.trim(signDate)==''){
					 $("#signDate").after("<span class='required' style='color:red;'>请输入签约日期 </span>");
					 return;
			     }
				 if($.trim(orgAddress)==''){
					 $("#orgAddress").after("<span class='required' style='color:red;'>请输入原住地址</span>");
					 return;
			     }
		     }else if(resettlement=='GH'){
		    	 if($("#returnDate").val()==''){
		 	 		 $("#returnDate").after("<span class='required' style='color:red;'>请选归还时间</span>");
		 	 		 return ;
		 	 	 }
			 }else{
		    	 $("#reset").val("");
		    	 $("#rightHolder").val("");
		    	 $("#signDate").val("");
		    	 $("#orgAddress").val("");
			 }
	    	 $('#form').submit();
		  //}
	  }
  }


    $(function() {
        $("#resettlement").val('WAZ');
        $("#div_azh").hide();
        $("#returnDate").hide();
        $("#returnDateth").hide();
    });




//	function getLookupname(val){
//		var names ;
//		$.ajax({
//			type:'POST',
//			contentType: "application/json",
//			url: "getCompanyName.htm?lookupname="+val,
//			dataType: "json",
//			success:function(data){
//				names = data;
//				autocompleteFn(data);
//			}
//		});
//	}
//
//
//
//		function autocompleteFn(names){
//			//alert(names);
//			$("#website").autocomplete(names,{
//				max: 5,minChars: 2,width: 200,scrollHeight: 100,matchContains: true,autoFill: false,
//				formatItem: function(data, i, total) {
//					return "<I>"+data.lName+"</I>" ;
//				},
//				formatMatch: function(data, i, total) {
//					return data.lName;
//				},
//				formatResult: function(data) {
//					return data.lName;
//				}
//			});
//		}


	/**
	 * 每一个选择项显示的信息
	 *
	 * @param {Object} data
	 */
	function formatItem(data) {
		return data.lName;
	}

	function callBack(data) {
		$("#baseName").val(data.lName);
		$("#baseCode").val(data.lCode);
	}

	function parse(data) {
		var parsed = [];
		$.each(data.rows, function (index, row) {
			parsed.push({data: row, result: row, value: row.id});
		});
		return parsed;
	}

	function callBack1(data) {
		$("#communityName").val(data.lName);
		$("#communityCode").val(data.lCode);
	}

	$(document).ready(function() {
		$("#communityName").autocomplete("getCompanyName.htm?type=2",{
			max: 5,
			minChars: 1,
			width: 200,
			scrollHeight: 100,
			matchContains: true,
			autoFill: false,
			extraParams:{
				featureClass : "P",
				style : "full",
				maxRows : 10,
				labelField : "lName",
				valueField : "lCode",
				searchField : "lName",
				entityName : "Lookups",
				trem: getTremValuecommunityName
			},parse:function(data){
				return parse.call(this,data);
			},formatItem:function(row, i, max){
				return formatItem.call(this,row, i, max);
			}
		}).result(function (event, row, formatted) {
			callBack1.call(this,row);
		});
	});
	function getTremValuecommunityName(){
		return $("#communityName").val();
	}

	$(document).ready(function() {
		$("#baseName").autocomplete("getCompanyName.htm?type=1",{
			max: 5,minChars: 1,width: 200,scrollHeight: 100,matchContains: true,autoFill: false,
			extraParams:{
				featureClass : "P",
				style : "full",
				maxRows : 10,
				labelField : "lName",valueField : "lCode",searchField : "lName",
				entityName : "Lookups",
				trem: getTremValuebaseName
			},parse:function(data){
				return parse.call(this,data);
			},formatItem:function(row, i, max){
				return formatItem.call(this,row, i, max);
			}
		}).result(function (event, row, formatted) {
			callBack.call(this,row);
		});
	});
	function getTremValuebaseName(){
		return $("#baseName").val();
	}
  </script>
</body>
</html>