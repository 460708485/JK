<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
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
<li id="view"><a href="#" onclick="formSubmit('/basicinfo/factoryAction_toview','_self');this.blur();">查看</a></li>
<li id="new"><a href="#" onclick="formSubmit('/basicinfo/factoryAction_tocreate','_self');this.blur();">新建</a></li>
<li id="update"><a href="#" onclick="formSubmit('/basicinfo/factoryAction_toupdate','_self');this.blur();">修改</a></li>
<li id="delete"><a href="#" onclick="formSubmit('/basicinfo/factoryAction_delete','_self');this.blur();">删除</a></li>
<li id="new"><a href="#" onclick="formSubmit('/basicinfo/factoryAction_start','_self');this.blur();">启用</a></li>
<li id="new"><a href="#" onclick="formSubmit('/basicinfo/factoryAction_stop','_self');this.blur();">停用</a></li>
<li id="print"><a href="#" onclick="formSubmit('/basicinfo/factoryAction_print','_self');this.blur();">打印</a></li>
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
生产厂家列表
    </div> 
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
 
<input id="btnFind" type="button" name="btnFind" value="查询" onclick="formSubmit('/basicinfo/factoryAction_list','_self');this.blur();">
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
			<td class="tableHeader"><input type="checkbox" name="selid" onclick="checkAll('id', this)"/></td>
			<td class="tableHeader">序号</td>
			<td class="tableHeader">类型</td>
			<td class="tableHeader">全称</td>
			<td class="tableHeader">简称</td>
			<td class="tableHeader">联系人</td>
			<td class="tableHeader">电话</td>
			<td class="tableHeader">手机</td>
			<td class="tableHeader">验货员</td>
			<td class="tableHeader">状态</td>
		</tr>
		</thead>
		<tbody class="tableBody" >
		
		<s:iterator value="#dataList" var="dl" status="lineNo">
		<tr class="odd"  onmouseover="this.className='highlight'"  onmouseout="this.className='odd'" >
			<td><input type="checkbox" name="id" value="${id}"/></td>
			<td><s:property value="#lineNo.index+1"/></td>
			<td>${ctype}</td>
			<td><a href="/basicinfo/factoryAction_toview?id=${id}">${fullName}</a></td>
			<td>${factoryName}</td>
			<td>${contractor}</td>
			<td>${phone}</td>
			<td>${mobile}</td>
			<td>${inspector}</td>
			<td>
				<s:if test="state==0"><a href="/basicinfo/factoryAction_start?id=${id}"><font color="orange">停用</font></a></s:if>
				<s:if test="state==1"><a href="/basicinfo/factoryAction_stop?id=${id}">启用</a></s:if>
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

