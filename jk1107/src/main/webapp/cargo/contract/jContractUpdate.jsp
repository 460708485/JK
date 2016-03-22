<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title></title>
	<link rel="stylesheet" rev="stylesheet" type="text/css" href="../../skin/default/css/default.css" media="all" />
	<script type="text/javascript" src="../../js/datepicker/WdatePicker.js"></script>
	<script type="text/javascript" src="../../js/common.js"></script>
	
</head>
<body>
<form name="icform" method="post">
	<input type="hidden" name="id" value="${id}"> 

<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
    <div id="navMenubar">
<ul>
<li id="save"><a href="#" onclick="formSubmit('/contract/contractAction_save','_self');this.blur();">保存</a></li>
<li id="back"><a href="#" onclick="formSubmit('/contract/contractAction_list','_self');this.blur();">返回</a></li>
</ul>
    </div>
</div>
</div>
</div>
     
<div>
    <div class="textbox-header">
    <div class="textbox-inner-header">
    <div class="textbox-title">
修改购销合同
    </div> 
    </div>
    </div>

    <div>
		<table class="commonTable" cellspacing="1">
	        <tr>
	            <td class="columnTitle">客户名称：</td>
	            <td class="tableContent"><input type="text" name="customName" value="${customName}"/></td>
	            <td class="columnTitle">打印版式：</td>
	            <td class="tableContentAuto">
	            	<input type="radio" name="printStyle" value="2" checked class="input"/>两个货物
	            	<input type="radio" name="printStyle" value="1" <s:if test="printStyle==1">checked</s:if> class="input"/>一个货物
	            </td>
	        </tr>	        
	        <tr>
	            <td class="columnTitle">收购方：</td>
	            <td class="tableContent"><input type="text" name="offeror" value="${offeror}"/></td>
	            <td class="columnTitle">合同号：</td>
	            <td class="tableContent"><input type="text" name="contractNo" value="${contractNo}"/></td>
	        </tr>	        
	        <tr>
	            <td class="columnTitle">制单人：</td>
	            <td class="tableContent"><input type="text" name="inputBy" value="${inputBy}"/></td>
	            <td class="columnTitle">签单日期：</td>
	            <td class="tableContent">
					<input type="text" style="width:90px;" name="signingDate" value="<s:date name="signingDate" format="yyyy-MM-dd"/>"
					 onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/> 	            
	            </td>
	        </tr>
	        <tr>
	            <td class="columnTitle">审单人：</td>
	            <td class="tableContent"><input type="text" name="checkBy" value="${checkBy}"/></td>
	            <td class="columnTitle">验货员：</td>
	            <td class="tableContent"><input type="text" name="inspector" value="${inspector}"/></td>
	        </tr>
	        <tr>
	            <td class="columnTitle">船期：</td>
	            <td class="tableContent">
					<input type="text" style="width:90px;" name="shipTime" value="<s:date name="shipTime" format="yyyy-MM-dd"/>"
					 onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/> 	            
	            </td>	            
	            <td class="columnTitle">交货期限：</td>
	            <td class="tableContent">
					<input type="text" style="width:90px;" name="deliveryPeriod" value="<s:date name="deliveryPeriod" format="yyyy-MM-dd"/>"
					 onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/> 	            
	            </td>		            
	        </tr>
	        <tr>
	            <td class="columnTitle">贸易条款：</td>
	            <td class="tableContent"><input type="text" name="tradeTerms" value="${tradeTerms}"/></td>
	            <td class="columnTitle">重要程度：</td>
	            <td class="tableContentAuto">
	            	<input type="radio" name="importNum" value="1" <s:if test="importNum==1">checked</s:if> class="input"/>★
	            	<input type="radio" name="importNum" value="2" <s:if test="importNum==2">checked</s:if> class="input"/>★★
	            	<input type="radio" name="importNum" value="3" <s:if test="importNum==3">checked</s:if> class="input"/>★★★
	            </td>
	        </tr>
	        <tr>
	            <td class="columnTitle">要求：</td>
	            <td class="tableContent"><textarea name="crequest" style="height:120px">${crequest}</textarea></td>
	            <td class="columnTitle">说明：</td>
	            <td class="tableContent"><textarea name="remark" style="height:120px">${remark}</textarea></td>
	        </tr>

		</table>
	</div>
</div>

 
</form>
</body>
</html>

