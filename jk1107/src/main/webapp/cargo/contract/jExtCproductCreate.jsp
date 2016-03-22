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
附件列表
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
			<td class="tableHeader">类型</td>
			<td class="tableHeader">厂家</td>
			<td class="tableHeader">货号</td>
			<td class="tableHeader">装率</td>
			<td class="tableHeader">数量</td>
			<td class="tableHeader">包装单位</td>
			<td class="tableHeader">单价</td>
			<td class="tableHeader">箱数</td>
			<td class="tableHeader">操作</td>
		</tr>
		</thead>
		<tbody class="tableBody" >
		
		<s:iterator value="#dataList" var="dl" status="lineNo">
		<tr class="odd"  onmouseover="this.className='highlight'"  onmouseout="this.className='odd'" >
			<td><input type="checkbox" name="id" value="${id}"/></td>
			<td><s:property value="#lineNo.index+1"/></td>
			<td>${typeName}</td>
			<td>${factory.factoryName}</td>
			<td>${productNo}</td>
			<td>${loadingRate}</td>
			<td>${cnumber}</td>
			<td>${packingUnit}</td>
			<td>${price}</td>
			<td>${boxNum}</td>
			<td>
				<a href="extCproductAction_toupdate?contractProduct.id=${contractProduct.id}&id=${id}">[修改]</a>
				<a href="extCproductAction_delete?contractProduct.id=${contractProduct.id}&id=${id}">[删除]</a>
			</td>
		</tr>
		</s:iterator>
		
		</tbody>
	</table>
	</div>

</div>    

<div>
    <div class="textbox-header">
    <div class="textbox-inner-header">
    <div class="textbox-title">
新增附件
    </div> 
    </div>
    </div>
    
<div>
    <div>
		<table class="commonTable" cellspacing="1">
	        <tr>
	            <td class="columnTitle">排序号：</td>
	            <td class="tableContent"><input type="text" name="orderNo"/></td>
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
	            <td class="tableContent"><input type="text" name="productNo"/></td>
	            <td class="columnTitle">装率：</td>
	            <td class="tableContentAuto"><input type="text" name="loadingRate"/></td>
	        </tr>	        
	        <tr>
	            <td class="columnTitle">数量：</td>
	            <td class="tableContent"><input type="text" name="cnumber"/></td>
	            <td class="columnTitle">包装单位：</td>
	            <td class="tableContentAuto">
	            	<input type="radio" name="packingUnit" value="PCS" class="input" checked/>只
	            	<input type="radio" name="packingUnit" value="SETS" class="input"/>套
	            </td>	            
	        </tr>	        
	        <tr>
	            <td class="columnTitle">单价：</td>
	            <td class="tableContent"><input type="text" name="price"/></td>
	            <td class="columnTitle">箱数：</td>
	            <td class="tableContent"><input type="text" name="boxNum"/></td>
	        </tr>

	        <tr>
	            <td class="columnTitle">货物描述：</td>
	            <td class="tableContent" colspan="3"><textarea name="productDesc" style="height:120px"></textarea></td>
	        </tr>

		</table>
	</div>
</div>

 
</form>
</body>
</html>

