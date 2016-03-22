<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!-- html标识扩展，定义名字空间 -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title></title>
	<link rel="stylesheet" rev="stylesheet" type="text/css" href="../../skin/default/css/default.css" media="all" />
	<script type="text/javascript" src="../../js/common.js"></script>
	<script type="text/javascript" src="../../js/datepicker/WdatePicker.js"></script>

</head>

<body>
<form method="post">
	<input type="hidden" name="id" value="${id}"/>
	<input type="hidden" name="subid" value="${obj.id}"/><!-- 新增修改判断依据 -->
<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
    <div id="navMenubar">
<ul>
<li id="save"><a href="#" onclick="formSubmit('/shippingorder/shippingOrderAction_save','_self');this.blur();">确定</a></li>
<li id="print"><a href="#" onclick="formSubmit('/shippingorder/shippingOrderAction_print','_self');this.blur();">打印</a></li>
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
    	<s:if test="#request.obj==null">新增</s:if>
    	<s:if test="#request.obj.id!=null">修改</s:if>
       	委托书
		<span class="textbox-note">
		<input type="radio" name="orderType" value="SEA" <s:if test="#request.obj.orderType=='SEA'">checked</s:if> class="input">海运
		<input type="radio" name="orderType" value="AIR" <s:if test="#request.obj.orderType=='AIR'">checked</s:if> class="input">空运
		</span>
	</div> 
    </div>
    </div>
<div>

    <div>
		<table class="commonTable" cellspacing="1">
	        <tr>
				<td class="columnTitle">货主：</td>
	            <td colspan="5">
	            	<textarea id="textarea_shipper" name="shipper" dataType="字符串" dispName="货主" maxLength="200" onkeyup="getMaxlength('textarea_shipper');textareasize(this);" onmousemove ="getMaxlength('textarea_shipper');" onmouseout ="getMaxlength('textarea_shipper');" class="textarea" rows="5">${obj.shipper}</textarea>
	            	<div class="textarea_count">
	            	<span>字符：<a id="num_textarea_shipper"><font color=#009900><script>getNownum('textarea_shipper')</script> / <script>getMaxnum('textarea_shipper')</script></font></a></span> | 
	            	<a style="cursor:pointer;" onclick="clearcontent('textarea_shipper')">清空内容</a>
	            	</div>
	            </td>
			</tr>
	        <tr>
				<td class="columnTitle">提单抬头：</td>
	            <td colspan="5">
	            	<textarea id="textarea_consignee" name="consignee" dataType="字符串" dispName="提单抬头" maxLength="200" rows="5" onkeyup="getMaxlength('textarea_consignee');textareasize(this);" onmousemove ="getMaxlength('textarea_consignee');" onmouseout ="getMaxlength('textarea_consignee');" class="textarea" type="_moz">${obj.consignee}</textarea>
	            	<div class="textarea_count">
	            	<span>字符：<a id="num_textarea_consignee"><font color=#009900><script>getNownum('textarea_consignee')</script> / <script>getMaxnum('textarea_consignee')</script></font></a></span> | 
	            	<a style="cursor:pointer;" onclick="clearcontent('textarea_consignee')">清空内容</a>
	            	</div>
	            </td>
			</tr>
	        <tr>
				<td class="columnTitle" nowrap>正本通知人：</td>
	            <td colspan="5">
	            	<textarea id="textarea_notifyParty" name="notifyParty" dataType="字符串" dispName="正本通知人" maxLength="200" rows="5" onkeyup="getMaxlength('textarea_notifyParty');textareasize(this);" onmousemove ="getMaxlength('textarea_notifyParty');" onmouseout ="getMaxlength('textarea_notifyParty');" class="textarea" type="_moz">${obj.notifyParty}</textarea>
	            	<div class="textarea_count">
	            	<span>字符：<a id="num_textarea_notifyParty"><font color=#009900><script>getNownum('textarea_notifyParty')</script> / <script>getMaxnum('textarea_notifyParty')</script></font></a></span> | 
	            	<a style="cursor:pointer;" onclick="clearcontent('textarea_notifyParty')">清空内容</a>
	            	</div>
	            </td>
			</tr>
	        <tr>
	            <td class="columnTitle">信用证：</td>
	            <td class="tableContent"><input type="text" name="lcno" value="${obj.lcno}" dataType="字符串" dispName="信用证" maxLength="30"></td>
	            <td class="columnTitle"><span style="white-space:nowrap">转船港：</span></td>
	            <td class="tableContent"><input type="text" name="portOfTrans" value="${obj.portOfTrans}" dataType="字符串" dispName="转船港" maxLength="30"></td>
	            <td class="columnTitle""><span style="white-space:nowrap">卸货港：</span></td>
	            <td class="tableContent"><input type="text" name="portOfDischarge" value="${obj.portOfDischarge}" dataType="字符串" dispName="卸货港" maxLength="30"></td>
	        </tr>
	        <tr>
	            <td class="columnTitle""><span style="white-space:nowrap">装船港：</span></td>
	            <td class="tableContent"><input type="text" name="portOfLoading" value="${obj.portOfLoading}" dataType="字符串" dispName="装船港" maxLength="30"></td>
	            <td class="columnTitle">装期：</td>
	            <td class="tableContent">
					<input type="text" style="width:90px;" name="loadingDate" dataType="日期" dispName="装期" value="<s:date name="loadingDate" format="yyyy-MM-dd"/>" onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/> 
				</td>
	            <td class="columnTitle">效期：</td>
	            <td class="tableContent">
					<input type="text" style="width:90px;" name="limitDate" dataType="日期" dispName="效期" value="<s:date name="limitDate" format="yyyy-MM-dd"/>" onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/> 
				</td>
	        </tr>
	        <tr>
	            <td class="columnTitle""><span style="white-space:nowrap">运费：</span></td>
	            <td class="tableContent"><input type="text" name="freight" value="${obj.freight}" dataType="字符串" dispName="运费" maxLength="200"></td>
	            <td class="tableContent" colspan="4">
					&nbsp;
					<input type="checkbox" name="isBatch" value="1" <s:if test="isBatch==1">checked</s:if> class="input" style="width:20px;"/>分批
					<input type="checkbox" name="isTrans" value="1" <s:if test="isTrans==1">checked</s:if> class="input" style="width:20px;"/>转船
					&nbsp;&nbsp;份数：<input type="text" name="copyNum" value="${obj.copyNum}" dataType="字符串" dispName="份数" maxLength="20" style="width:60px;">
				</td>
			</tr>
			<tr>
				<td class="columnTitle">运输要求：</td>
	            <td colspan="5">
	            	<textarea id="specialCondition" name="specialCondition" rows="1" dataType="字符串" dispName="运输要求" maxLength="200" onkeyup="getMaxlength('specialCondition');textareasize(this);" onmousemove ="getMaxlength('specialCondition');" onmouseout ="getMaxlength('specialCondition');" class="textarea" type="_moz">${obj.specialCondition}</textarea>
	            	<div class="textarea_count">
	            	<span>字符：<a id="num_specialCondition"><font color=#009900><script>getNownum('specialCondition')</script> / <script>getMaxnum('specialCondition')</script></font></a></span> | 
	            	<a style="cursor:pointer;" onclick="clearcontent('specialCondition')">清空内容</a>
	            	</div>
	            </td>
			</tr>
	        <tr>
	            <td class="columnTitle">复核：</td>
	            <td class="tableContent"><input type="text" name="checkBy" value="${obj.checkBy}" dataType="字符串" dispName="复核" maxLength="30"></td>
	        </tr>
		</table>
	</div>
</div>


</form>
</body>
</html>
