<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title></title>
	<link rel="stylesheet" rev="stylesheet" type="text/css" href="../../skin/default/css/default.css" media="all" />
	<link rel="stylesheet" rev="stylesheet" type="text/css" href="../../css/extreme/extremecomponents.css" />
    <link rel="stylesheet" rev="stylesheet" type="text/css" href="../../css/extreme/extremesite.css" />
    
	<script type="text/javascript" src="../../js/datepicker/WdatePicker.js"></script>
	<script type="text/javascript" src="../../js/common.js"></script>
	
</head>
<body>
<form name="icform" method="post">
	<input type="text" name="id" value="${id}"/>
	<input type="text" name="contractProduct.id" value="${contractProduct.id}"/>

<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
    <div id="navMenubar">
<ul>
<li id="save"><a href="#" onclick="formSubmit('/contract/extCproductAction_save','_self');this.blur();">保存</a></li>
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
修改附件
    </div> 
    </div>
    </div>
    
<div>
    <div>
		<table class="commonTable" cellspacing="1">
	        <tr>
	            <td class="columnTitle">排序号：</td>
	            <td class="tableContent"><input type="text" name="orderNo" value="${orderNo}"/></td>
	        </tr>		
	        <tr>
	            <td class="columnTitle">分类：</td>
	            <td class="tableContent">
	            	<s:select name="ctype" list="#ctypeList"
	            		 listKey="orderNo" listValue="name"
	            		 headerKey="" headerValue="--请选择--"/>
	            </td>
	            <td class="columnTitle">厂家：</td>
	            <td class="tableContent">
	            	<s:select name="factory.id" list="#factoryList"
	            		 listKey="id" listValue="factoryName"
	            		 headerKey="" headerValue="--请选择--"/>
	            </td>
	        </tr>		
	        <tr>
	            <td class="columnTitle">货号：</td>
	            <td class="tableContent"><input type="text" name="productNo" value="${productNo}"/></td>
	            <td class="columnTitle">装率：</td>
	            <td class="tableContentAuto"><input type="text" name="loadingRate" value="${loadingRate}"/></td>
	        </tr>	        
	        <tr>
	            <td class="columnTitle">数量：</td>
	            <td class="tableContent"><input type="text" name="cnumber" value="${cnumber}"/></td>
	            <td class="columnTitle">包装单位：</td>
	            <td class="tableContentAuto">
	            	<input type="radio" name="packingUnit" value="PCS" <s:if test="packingUnit=='PCS'">checked</s:if> class="input" />只
	            	<input type="radio" name="packingUnit" value="SETS" <s:if test="packingUnit=='SETS'">checked</s:if> class="input"/>套
	            </td>		            
	        </tr>	        
	        <tr>
	            <td class="columnTitle">单价：</td>
	            <td class="tableContent"><input type="text" name="price" value="${price}"/></td>
	            <td class="columnTitle">箱数：</td>
	            <td class="tableContent"><input type="text" name="boxNum" value="${boxNum}"/></td>
	        </tr>

	        <tr>
	            <td class="columnTitle">货物描述：</td>
	            <td class="tableContent" colspan="3"><textarea name="productDesc" style="height:120px">${productDesc}</textarea></td>
	        </tr>

		</table>
	</div>
</div>

 
</form>
</body>
</html>

