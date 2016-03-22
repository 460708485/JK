<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ taglib uri="/WEB-INF/tlds/selffn.tld" prefix="selffn"%>

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
<form method="post">
	<input type="hidden" name="id" id="id" value="${id}"/>
 
<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
    <div id="navMenubar">
<ul>
<li id="back"><a href="/packinglist/packingListAction_list">返回</a></li>
</ul>
    </div>
</div>
</div>
</div>
     
<div class="textbox" id="centerTextbox">
    
    <div class="textbox-header">
    <div class="textbox-inner-header">
    <div class="textbox-title">
        浏览装箱单信息
       &nbsp;&nbsp;&nbsp;
 
	</div> 
    </div>
    </div>
<div>
 
    <div>
		<table class="commonTable" cellspacing="1">
	        <tr>
	            <td class="columnTitle" nowrap>发票号：</td>
	            <td class="tableContent">${invoiceNo}</td>
	            <td class="columnTitle">发票时间：</td>
				<td class="tableContent"><s:date name="invoiceDate" format="yyyy-MM-dd"/></td>
	        </tr>
	        <tr>
				<td class="columnTitle">卖家：</td>
	            <td class="tableContent" colspan="3">${seller}</td>
			</tr>
	        <tr>
				<td class="columnTitle">买家：</td>
	            <td class="tableContent" colspan="3">${buyer}</td>
			</tr>
	        <tr>
				<td class="columnTitle">唛头：</td>
	            <td class="tableContent" colspan="3">${marks}</td>
			</tr>
	        <tr>
				<td class="columnTitle">描述：</td>
	            <td class="tableContent" colspan="3">${descriptions}</td>
			</tr>
		</table>
	</div>
</div>
 
<!-- 货物列表 -->
<div class="textbox" id="centerTextbox">
    
    <div class="textbox-header">
    <div class="textbox-inner-header">
    <div class="textbox-title">
        货物信息
    </div> 
    </div>
    </div>
</div>
 
<div class="listTablew">
	<div id="contractList" style="float:left;margin:8px;">
	${mrecordData}
	</div>
</div>
 
 
 
</form>
</body>
</html>


