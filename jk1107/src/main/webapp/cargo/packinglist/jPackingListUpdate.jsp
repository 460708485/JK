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
    <script type="text/javascript" src="../../js/datepicker/WdatePicker.js"></script>
	<script type="text/javascript" src="../../js/common.js"></script>
<style> 
	#ts{
    position:absolute;
	display:none;
	top:130px;
	left:150px;
 
		width:450px;
		background:#dbfbf9;
		border:1px solid #cae9e7;
		text-align:left;
		color:#000000;
		padding:10px;
	}
	#ts a{
		display:block;
		height:25px;
		line-height:25px;
		cursor:pointer;
	}
	#ts a:hover, #ts a.selected{
		display:block;	
		background:#dbfbf9;
		height:25px;
		line-height:25px;
		color:#000000;
	}
</style>
</head>
 
<body>
<form method="post">
	<input type="hidden" name="id" id="id" value="${id}"/>
 
<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
    <div id="navMenubar">
<ul>
<li id="save"><a href="#" onclick="formSubmit('/packinglist/packingListAction_save','_self');">确定</a></li>
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
        修改装箱单信息
       &nbsp;&nbsp;&nbsp;
 
	</div> 
    </div>
    </div>
<div>
 
    <div>
		<table class="commonTable" cellspacing="1">
	        <tr>
	            <td class="columnTitle_mustbe" nowrap>发票号：</td>
	            <td class="tableContent">
					<input type="text" style="text-transform:uppercase;" name="invoiceNo" id="invoiceNo"
					 	value="${invoiceNo}"
					 	dispName="发票号" maxLength="30">
				</td>
	            <td class="columnTitle" nowrap>发票时间：</td>
	            <td class="tableContent">
					<input type="text" style="width:90px;" name="invoiceDate" value="<s:date name="invoiceDate" format="yyyy-MM-dd"/>" onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/> 
				</td>
			</tr>
	        <tr>
				<td class="columnTitle_mustbe">卖家：</td>
	            <td colspan="3">
	            	<textarea id="seller" name="seller" dataType="非空字符串" dispName="卖家" maxLength="200" rows="5" onkeyup="getMaxlength('seller');textareasize(this);" onmousemove ="getMaxlength('seller');" onmouseout ="getMaxlength('seller');" class="textarea">${seller}</textarea>
	            	<div class="textarea_count">
	            	<span>字符：<a id="num_seller"><font color=#009900><script>getNownum('seller')</script> / <script>getMaxnum('seller')</script></font></a></span> | 
	            	<a style="cursor:pointer;" onclick="clearcontent('seller')">清空内容</a>
	            	</div>
	            </td>
			</tr>
	        <tr>
				<td class="columnTitle_mustbe">买家：</td>
	            <td colspan="3">
	            	<textarea id="buyer" name="buyer" dataType="非空字符串" dispName="买家" maxLength="200" rows="5" onkeyup="getMaxlength('buyer');textareasize(this);" onmousemove ="getMaxlength('buyer');" onmouseout ="getMaxlength('buyer');" class="textarea">${buyer}</textarea>
	            	<div class="textarea_count">
	            	<span>字符：<a id="num_buyer"><font color=#009900><script>getNownum('buyer')</script> / <script>getMaxnum('buyer')</script></font></a></span> | 
	            	<a style="cursor:pointer;" onclick="clearcontent('buyer')">清空内容</a>
	            	</div>
	            </td>
			</tr>
	        <tr>
				<td class="columnTitle">唛头：</td>
	            <td colspan="3">
	            	<textarea id="marks" name="marks" rows="5" dataType="字符串" dispName="唛头" maxLength="1000" onkeyup="getMaxlength('marks');textareasize(this);" onmousemove ="getMaxlength('marks');" onmouseout ="getMaxlength('marks');" class="textarea">${marks}</textarea>
	            	<div class="textarea_count">
	            	<span>字符：<a id="num_marks"><font color=#009900><script>getNownum('marks')</script> / <script>getMaxnum('marks')</script></font></a></span> | 
	            	<a style="cursor:pointer;" onclick="clearcontent('marks')">清空内容</a>
	            	</div>
	            </td>
			</tr>
	        <tr>
				<td class="columnTitle">描述：</td>
	            <td colspan="3">
	            	<textarea id="descriptions" name="descriptions" rows="5" dataType="字符串" dispName="描述" maxLength="200" onkeyup="getMaxlength('descriptions');textareasize(this);" onmousemove ="getMaxlength('descriptions');" onmouseout ="getMaxlength('descriptions');" class="textarea">${descriptions}</textarea>
	            	<div class="textarea_count">
	            	<span>字符：<a id="num_descriptions"><font color=#009900><script>getNownum('descriptions')</script> / <script>getMaxnum('descriptions')</script></font></a></span> | 
	            	<a style="cursor:pointer;" onclick="clearcontent('descriptions')">清空内容</a>
	            	</div>
	            </td>
			</tr>
		</table>
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

