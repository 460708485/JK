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
<li id="view"><a href="#" onclick="formSubmit('/packinglist/packingListAction_toview','_self');this.blur();">查看</a></li>
<li id="update"><a href="#" onclick="formSubmit('/packinglist/packingListAction_toupdate','_self');this.blur();">修改</a></li>
<li id="delete"><a href="#" onclick="formSubmit('/packinglist/packingListAction_delete','_self');this.blur();">删除</a></li>
<li id="print"><a href="#" onclick="formSubmit('/packinglist/packingListAction_print','_self');this.blur();">打印</a></li>
<li id="new"><a href="#" onclick="formSubmit('/shippingorder/shippingOrderAction_toedit','_self');this.blur();">委托</a></li>
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
        <h2>装箱单列表</h2> 
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
 
<input id="btnFind" type="button" name="btnFind" value="查询" onclick="formSubmit('/packinglist/packingListAction_list','_self');this.blur();">
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
		<td class="tableHeader">发票号</td>
		<td class="tableHeader">报运号</td>
		<td class="tableHeader">发票时间</td>
		<td class="tableHeader">唛头</td>
		<td class="tableHeader">备注</td>
	</tr>
	</thead>
	<tbody class="tableBody" >
	
	<s:iterator value="#dataList">
	<tr class="odd"  onmouseover="this.className='highlight'"  onmouseout="this.className='odd'" >
		<td><input type="checkbox" name="id" value="${id}"/></td>
		<td><a href="packingListAction_toview?id=${id}">${invoiceNo}</a></td>
		<td>${exportNos}</td>
		<td><s:date name="invoiceDate" format="yyyy-MM-dd"/></td>
		<td>${marks}</td>
		<td>${descriptions}</td>
	</tr>
	</s:iterator>
	
	</tbody>
</table>
</div>
 
</div>
 
 
</form>
</body>
</html>


