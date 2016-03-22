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
<li id="back"><a href="#" onclick="history.go(-1);">返回</a></li>
</ul>
    </div>
</div>
</div>
</div>
     
<div>
    <div class="textbox-header">
    <div class="textbox-inner-header">
    <div class="textbox-title">
浏览购销合同历史
    </div> 
    </div>
    </div>

    <div>
		<table class="commonTable" cellspacing="1">
	        <tr>
	            <td class="columnTitle">客户名称：</td>
	            <td class="tableContent" colspan="3">${customName}</td>
	        </tr>	        
	        <tr>
	            <td class="columnTitle">收购方：</td>
	            <td class="tableContent">${offeror}</td>
	            <td class="columnTitle">合同号：</td>
	            <td class="tableContent">${contractNo}</td>
	        </tr>	        
	        <tr>
	            <td class="columnTitle">制单人：</td>
	            <td class="tableContent">${inputBy}</td>
	            <td class="columnTitle">签单日期：</td>
	            <td class="tableContent"><s:date name="signingDate" format="yyyy-MM-dd"/></td>
	        </tr>
	        <tr>
	            <td class="columnTitle">审单人：</td>
	            <td class="tableContent">${checkBy}</td>
	            <td class="columnTitle">验货员：</td>
	            <td class="tableContent">${inspector}</td>
	        </tr>
	        <tr>
	            <td class="columnTitle">船期：</td>
	            <td class="tableContent"><s:date name="shipTime" format="yyyy-MM-dd"/></td>	            
	            <td class="columnTitle">交货期限：</td>
	            <td class="tableContent"><s:date name="deliveryPeriod" format="yyyy-MM-dd"/></td>		            
	        </tr>
	        <tr>
	            <td class="columnTitle">贸易条款：</td>
	            <td class="tableContent">${tradeTerms}</td>
	            <td class="columnTitle">重要程度：</td>
	            <td class="tableContentAuto">
	            	<s:if test="importNum==1">★</s:if>
	            	<s:if test="importNum==2">★★</s:if>
	            	<s:if test="importNum==3">★★★</s:if>
	            </td>
	        </tr>
	        <tr>
	            <td class="columnTitle">要求：</td>
	            <td class="tableContent"><pre>${crequest}</pre></td>
	            <td class="columnTitle">说明：</td>
	            <td class="tableContent"><pre>${remark}</pre></td>
	        </tr>

		</table>
	</div>
</div>


<div>
    <div class="textbox-header">
    <div class="textbox-inner-header">
    <div class="textbox-title">
货物列表
    </div> 
    </div>
    </div>
    
<div>

	<div class="eXtremeTable" >
	<table id="ec_table"  border="0"  cellspacing="0"  cellpadding="0"  class="tableRegion"  width="98%" >
		<thead>
		<tr>
			<td class="tableHeader"><input type="checkbox" name="selid" onclick="checkAll('id', this)"/></td>
			<td class="tableHeader">序号</td>
			<td class="tableHeader">厂家</td>
			<td class="tableHeader">货号</td>
			<td class="tableHeader">装率</td>
			<td class="tableHeader">数量</td>
			<td class="tableHeader">包装单位</td>
			<td class="tableHeader">单价</td>
			<td class="tableHeader">箱数</td>
		</tr>
		</thead>
		<tbody class="tableBody" >
		
		<s:iterator value="contractProducts" var="cp" status="lineNo">
		<tr class="odd"  onmouseover="this.className='highlight'"  onmouseout="this.className='odd'" >
			<td><input type="checkbox" name="id" value="${id}"/></td>
			<td><s:property value="#lineNo.index+1"/></td>
			<td>${factory.factoryName}</td>
			<td>${productNo}</td>
			<td>${loadingRate}</td>
			<td>${cnumber}</td>
			<td>${packingUnit}</td>
			<td>${price}</td>
			<td>${boxNum}</td>
		</tr>
			<s:iterator value="extCproducts" var="ep" status="lineNo">
			<tr class="odd"  onmouseover="this.className='highlight'"  onmouseout="this.className='odd'" >
				<td><input type="checkbox" name="id" value="${id}"/></td>
				<td>[附件：<s:property value="#lineNo.index+1"/>]</td>
				<td>${factory.factoryName}</td>
				<td>${productNo}</td>
				<td>${loadingRate}</td>
				<td>${cnumber}</td>
				<td>${packingUnit}</td>
				<td>${price}</td>
				<td>${boxNum}</td>
			</tr>
			</s:iterator>		
		</s:iterator>
		
		</tbody>
	</table>
	</div>

</div>    
 
</form>
</body>
</html>

