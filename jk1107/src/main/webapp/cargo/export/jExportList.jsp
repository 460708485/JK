<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!-- 告诉浏览器本网页符合XHTML1.0过渡型DOCTYPE -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title></title>
	<link rel="stylesheet" rev="stylesheet" type="text/css" href="../../skin/default/css/default.css" media="all" />
	
 	<link rel="stylesheet" rev="stylesheet" type="text/css" href="../../css/extreme/extremecomponents.css" />
    <link rel="stylesheet" rev="stylesheet" type="text/css" href="../../css/extreme/extremesite.css" />
	<script type="text/javascript" src="../../js/common.js"></script>
</head>
 
<body>
<form name="icform" method="post">

<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
    <div id="navMenubar">
<ul>
<li id="view"><a href="#" onclick="formSubmit('/export/exportAction_toview','_self');this.blur();">查看</a></li>
<li id="update"><a href="#" onclick="formSubmit('/export/exportAction_toupdate','_self');this.blur();">修改</a></li>
<li id="delete"><a href="#" onclick="formSubmit('/export/exportAction_delete','_self');this.blur();">删除</a></li>
<li id="print"><a href="#" onclick="formSubmit('/export/exportAction_print','_self');this.blur();">打印</a></li>
<li id="new"><a href="#" onclick="formSubmit('/packinglist/packingListAction_tocreate','_self');this.blur();">装箱</a></li>
</ul>
    </div>
</div>
</div>
</div>
     
<!-- 页面主体部分（列表等） -->    
<div class="textbox" id="centerTextbox">
    <div class="textbox-header">
    <div class="textbox-inner-header">
    <div class="textbox-title">
        <h2>报运列表</h2> 
    </div> 
    </div>
    </div>
	
<span class="noprint">
<div id="find_div" style="width:98%;">
<fieldset>
<legend><font color="000">查询条件&nbsp;</font></legend>
<div style="width:98%;padding-top:7px;text-align:left;">
 
类型：
<select name="f_type" style="width:130px;heigh:30px;">
${comboContentStr}
</select>
 
内容：	            	
<input type="text" name="f_conditionStr" value="${f_conditionStr}" size="30"
	onFocus="this.select();"
	onKeyDown="javascript:if(event.keyCode==13){ document.getElementById('btnFind').onclick(); }"
/>
 
<input id="btnFind" type="button" name="btnFind" value="查询" onclick="formSubmit('/export/exportAction_list','_self');this.blur();">
<input type="button" name="btnReset" value="清空" onclick="findReset();this.blur();">
 
</div>
</fieldset>
</div>
</span>
 
    
<div>
	
<div class="eXtremeTable" >
<table id="ec_table"  border="0"  cellspacing="0"  cellpadding="0"  class="tableRegion"  width="98%" >
	<thead>
	<tr>
		<td class="tableHeader"><input type="checkbox" name="selck" onclick="checkAll('id',this);"></td>
		<td class="tableHeader">报运号</td>
		<td class="tableHeader">货物数/附件数</td>
		<td class="tableHeader">L/C</td>
		<td class="tableHeader">装运港</td>
		<td class="tableHeader">收货人及地址</td>
		<td class="tableHeader">运输方式</td>
		<td class="tableHeader">价格条件</td>
		<td class="tableHeader">录入日期</td>
		<td class="tableHeader">状态</td>
	</tr>
	</thead>
	<tbody class="tableBody" >
	
	<s:iterator value="#dataList" var="ep">
	<tr class="odd"  onmouseover="this.className='highlight'"  onmouseout="this.className='odd'" >
		<td><input type="checkbox" name="id" value="${id}"/></td>
		<td><a href="exportAction_toview?id=${id}">${customerContract}</a></td>
		<td><s:property value="exportProduct.size"/>
			<s:set var="extNumuber" value="0"></s:set>
			<s:iterator value="#ep.exportProduct" var="xep">
				<s:set var="extNumuber" value="#extNumuber+#xep.extEproduct.size"></s:set>
	  		</s:iterator> 
			/
	    	<s:property value="#extNumuber"/>
		</td>		
		<td>${lcno}</td>
		<td>${shipmentPort}</td>
		<td>${consignee}</td>
		<td>${transportMode}</td>
		<td>${priceCondition}</td>
		<td><s:date name="inputDate" format="yyyy-MM-dd"/></td>
		<td>
			<s:if test="state==0">草稿</s:if>
			<s:elseif test="state==1"><font color="green">已上报</font></s:elseif>
			<s:elseif test="state==2"><font color="blue">装箱</font></s:elseif>
			<s:elseif test="state==3"><font color="blue">委托</font></s:elseif>
			<s:elseif test="state==4"><font color="blue">发票</font></s:elseif>
			<s:elseif test="state==5"><font color="brown">财务</font></s:elseif>
		</td>	
	</tr>
	</s:iterator>
	
	</tbody>
</table>
</div>
 
</div>
 
 
</form>
</body>
</html>

