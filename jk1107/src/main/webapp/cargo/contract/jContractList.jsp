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
<li id="view"><a href="#" onclick="formSubmit('/contract/contractAction_toview','_self');this.blur();">查看</a></li>
<li id="new"><a href="#" onclick="formSubmit('/contract/contractAction_tocreate','_self');this.blur();">新建</a></li>
<li id="update"><a href="#" onclick="formSubmit('/contract/contractAction_toupdate','_self');this.blur();">修改</a></li>
<li id="delete"><a href="#" onclick="formSubmit('/contract/contractAction_delete','_self');this.blur();">删除</a></li>
<li id="new"><a href="#" onclick="formSubmit('/outproduct/outProductAction_toedit','_self');this.blur();">出货表</a></li>
<li id="print"><a href="#" onclick="formSubmit('/contract/contractAction_print','_self');this.blur();">打印</a></li>
<li id="new"><a href="#" onclick="formSubmit('/contract/contractAction_submit','_self');this.blur();">上报</a></li>
<li id="new"><a href="#" onclick="formSubmit('/contract/contractAction_cancel','_self');this.blur();">取消</a></li>
<li id="new"><a href="#" onclick="formSubmit('/contracthis/contractHisAction_save','_self');this.blur();">归档1</a></li>
<li id="new"><a href="#" onclick="formSubmit('/contracthis/contractHisAction_save2','_self');this.blur();">归档2</a></li>
<li id="new"><a href="#" onclick="formSubmit('/contract/contractAction_copy1','_self');this.blur();">复制1</a></li>
<li id="new"><a href="#" onclick="formSubmit('/contract/contractAction_copy2','_self');this.blur();">复制2</a></li>
<li id="new"><a href="#" onclick="formSubmit('/contract/contractAction_copy3','_self');this.blur();">复制3</a></li>
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
购销合同列表
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
 
<input id="btnFind" type="button" name="btnFind" value="查询" onclick="formSubmit('/contract/contractAction_list','_self');this.blur();">
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
			<td class="tableHeader">客户名称</td>
			<td class="tableHeader">合同号</td>
			<td class="tableHeader">货物数/附件数</td>
			<td class="tableHeader">制单人</td>
			<td class="tableHeader">审单人</td>
			<td class="tableHeader">验货员</td>
			<td class="tableHeader">签单日期</td>
			<td class="tableHeader">船期</td>
			<td class="tableHeader">交货期限</td>
			<td class="tableHeader">总金额</td>
			<td class="tableHeader">状态</td>
			<td class="tableHeader">操作</td>
		</tr>
		</thead>
		<tbody class="tableBody" >
		
		<s:iterator value="#dataList" var="dl" status="lineNo">
		<tr class="odd"  onmouseover="this.className='highlight'"  onmouseout="this.className='odd'" >
			<td><input type="checkbox" name="id" value="${id}"/></td>
			<td><s:property value="#lineNo.index+1"/></td>
			<td>${customName}</td>
			<td><a href="contractAction_toview?id=${id}">${contractNo}</a></td>
			<td>
				<s:property value="contractProducts.size()"/>
				/
				<s:set var="extNumber" value="0"/>
				<s:iterator value="contractProducts" var="cp">
					<s:set var="extNumber" value="#extNumber + #cp.extCproducts.size()"/>
				</s:iterator>
				<s:property value="#extNumber"/>
			</td>
			<td>${inputBy}</td>
			<td>${checkBy}</td>
			<td>${inspector}</td>
			<td><s:date name="signingDate" format="yyyy-MM-dd"/></td>
			<td><s:date name="shipTime" format="yyyy-MM-dd"/></td>
			<td><s:date name="deliveryPeriod" format="yyyy-MM-dd"/></td>
			<td>${totalAmount}</td>
			<td>
				<s:if test="state==0">草稿</s:if>
				<s:if test="state==1"><font color="green">已上报</font></s:if>
			</td>
			<td>
				<a href="contractProductAction_tocreate?contract.id=${id}">[货物]</a>
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

