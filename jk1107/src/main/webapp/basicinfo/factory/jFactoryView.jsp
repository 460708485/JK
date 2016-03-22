<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title></title>
	<link rel="stylesheet" rev="stylesheet" type="text/css" href="../../skin/default/css/default.css" media="all" />
	<script type="text/javascript" src="../../js/common.js"></script>
	
</head>
<body>
<form name="icform" method="post">

<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
    <div id="navMenubar">
<ul>
<li id="back"><a href="#" onclick="history.go(-1);this.blur();">返回</a></li>
</ul>
    </div>
</div>
</div>
</div>
     
<div>
    <div class="textbox-header">
    <div class="textbox-inner-header">
    <div class="textbox-title">
浏览生产厂家
    </div> 
    </div>
    </div>

    <div>
		<table class="commonTable" cellspacing="1">
	        <tr>
	            <td class="columnTitle">类型：</td>
	            <td class="tableContent">${ctype}</td>
	            <td class="columnTitle">排序号：</td>
	            <td class="tableContent">${orderNo}</td>
	        </tr>	        
	        <tr>
	            <td class="columnTitle">全称：</td>
	            <td class="tableContent">${fullName}</td>
	            <td class="columnTitle">简称：</td>
	            <td class="tableContent">${factoryName}</td>
	        </tr>
	        <tr>
	            <td class="columnTitle">联系人：</td>
	            <td class="tableContent">${contractor}</td>
	            <td class="columnTitle">电话：</td>
	            <td class="tableContent">${phone}</td>
	        </tr>
	        <tr>
	            <td class="columnTitle">手机：</td>
	            <td class="tableContent">${mobile}</td>
	            <td class="columnTitle">传真：</td>
	            <td class="tableContent">${fax}</td>
	        </tr>
	        <tr>
	            <td class="columnTitle">验货员：</td>
	            <td class="tableContent" colspan="3">${inspector}</td>
	        </tr>
	        <tr>
	            <td class="columnTitle">备注：</td>
	            <td class="tableContent" colspan="3"><pre>${cnote}</pre></td>
	        </tr>

		</table>
	</div>
</div>

 
</form>
</body>
</html>

