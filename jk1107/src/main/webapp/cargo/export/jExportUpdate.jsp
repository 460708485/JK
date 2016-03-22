<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!-- 告诉浏览器本网页符合XHTML1.0过渡型DOCTYPE -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
 
    <!-- 调用样式表 -->
	<link rel="stylesheet" rev="stylesheet" type="text/css" href="../../skin/default/css/default.css" media="all" />
    <script type="text/javascript" src="../../js/common.js"></script>
    <script type="text/javascript" src="../../js/datepicker/WdatePicker.js"></script>
    <script type="text/javascript" src="/components/jquery-ui/jquery-1.2.6.js"></script>
    <script type="text/javascript" src="../../js/tabledo.js"></script>
	
<script language="JavaScript">
    $().ready(function(){
    	${mrecordData}
    });
    

	/* 实现表格序号列自动调整 created by tony 20081219 */
	function sortnoTR(){
		sortno('resultTable', 2, 1);
	}
		
	function addTRRecord(objId, id, productNo, cnumber, grossWeight, netWeight) {
		
		var _tmpSelect = "";
		var tableObj = document.getElementById(objId);
		var rowLength = tableObj.rows.length;
		
		oTR = tableObj.insertRow();
		
		oTD = oTR.insertCell(0);
		oTD.style.whiteSpace="nowrap";
		oTD.ondragover = function(){this.className="drag_over" };	//动态加事件, 改变样式类
		oTD.ondragleave = function(){this.className="drag_leave" };
		oTD.onmousedown = function(){ clearTRstyle("result"); this.parentNode.style.background = '#0099cc';};	
		//this.style.background="#0099cc url(../images/arroww.gif) 4px 9px no-repeat";
		oTD.innerHTML = "&nbsp;&nbsp;";	
		oTD = oTR.insertCell(1);
		oTD.innerHTML = "<input class=\"input\" type=\"checkbox\" name=\"del\" value=\""+id+"\"><input type=\"hidden\" name=\"mr_id\" value=\""+id+"\"><input class=\"input\" type=\"text\" id=\"mr_changed\" name=\"mr_changed\">";
		oTD = oTR.insertCell(2);
		oTD.innerHTML = "<input class=\"input\" type=\"text\" name=\"orderNo\" readonly size=\"3\" value=\"\">";
		oTD = oTR.insertCell(3);
		oTD.innerHTML = productNo;
		oTD = oTR.insertCell(4);
		oTD.innerHTML = "<input type=\"text\"  name=\"ep_cnumber\" maxLength=\"10\" value=\""+cnumber+"\" onBlur=\"setTRUpdateFlag(this);\">";
		oTD = oTR.insertCell(5);
		oTD.innerHTML = "<input type=\"text\"  name=\"ep_grossWeight\" maxLength=\"10\" value=\""+grossWeight+"\" onBlur=\"setTRUpdateFlag(this);\">";
		oTD = oTR.insertCell(6);
		oTD.innerHTML = "<input type=\"text\"  name=\"ep_netWeight\" maxLength=\"10\" value=\""+netWeight+"\" onBlur=\"setTRUpdateFlag(this);\">";

		dragtableinit();	//拖动表格行
		sortnoTR();			//排序号
		
	}    
	
    
</script> 
</head>
 
<body>
<form method="post">
	<input type="hidden" name="id" value="${id}"/>
 
<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
    <div id="navMenubar">
<ul>
<li id="save"><a href="#" onclick="formSubmit('/export/exportAction_save','_self');">确定</a></li>
<li id="back"><a href="/export/exportAction_list">返回</a></li>
</ul>
    </div>
</div>
</div>
</div>
     
<div class="textbox" id="centerTextbox">
    
    <div class="textbox-header">
    <div class="textbox-inner-header">
    <div class="textbox-title">
        修改报运信息
    </div> 
        	
    </div>
    </div>
<div>
 
 
    <div>
		<table class="commonTable" cellspacing="1">
	        <tr>
	            <td class="columnTitle">客户号：</td>
	            <td class="tableContent">
					<s:textfield name="customerContract"/>
				</td>
	            <td class="columnTitle">制单日期：</td>
	            <td class="tableContent">
					<input type="text" style="width: 90px;" name="inputDate"
						value="<s:date name="inputDate" format="yyyy-MM-dd"/>"
						onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});" />
				</td>
	        </tr>
	        <tr>
	            <td class="columnTitle">L/C No.：</td>
	            <td class="tableContentAuto">
	            	<input type="radio" name="lcno" value="L/C" <s:if test="lcno=='L/C'">checked</s:if> class="input">L/C
					<input type="radio" name="lcno" value="T/T" <s:if test="lcno=='T/T'">checked</s:if> class="input">T/T
	            </td>	            
	            <td class="columnTitle">装运港：</td>
	            <td class="tableContent"><input type="text" name="shipmentPort" value="${shipmentPort}" dataType="字符串" dispName="装运港" maxLength="100"></td>
	        </tr>
	        <tr>
	            <td class="columnTitle">收货人及地址：</td>
	            <td class="tableContentAuto" colspan="3"><input type="text" name="consignee" value="${consignee}" dataType="非空字符串" dispName="收货人及地址" maxLength="100" style="width:100%"></td>
	        </tr>
	        <tr>
	            <td class="columnTitle">运输方式：</td>
	            <td class="tableContentAuto">
	            	<input type="radio" name="transportMode" value="SEA" <s:if test="transportMode=='SEA'">checked</s:if> class="input">海运
					<input type="radio" name="transportMode" value="AIR" <s:if test="transportMode=='AIR'">checked</s:if> class="input">空运
	            </td>
	            <td class="columnTitle">价格条件：</td>
	            <td class="tableContent"><input type="text" name="priceCondition" value="${priceCondition}" dataType="字符串" dispName="价格条件" maxLength="10"></td>
	        </tr>
	        <tr>
				<td class="columnTitle">唛头：</td>
	            <td colspan="3">
	            	<textarea id="textarea_marks" onkeyup="getMaxlength('textarea_marks');textareasize(this);" onmousemove ="getMaxlength('textarea_marks');" onmouseout ="getMaxlength('textarea_marks');" class="textarea" name="marks" rows="5" dataType="字符串" dispName="唛头" maxLength="1000">${marks}</textarea>
	            	<div class="textarea_count">
	            	<span>字符：<a id="num_textarea_marks"><font color=#009900><script>getNownum('textarea_marks')</script> / <script>getMaxnum('textarea_marks')</script></font></a></span> | 
	            	<a style="cursor:pointer;" onclick="clearcontent('textarea_marks')">清空内容</a>
	            	</div>
	            </td>
			</tr>
	        <tr>
				<td class="columnTitle">备注：</td>
	            <td colspan="3">
	            	<textarea id="textarea" onkeyup="getMaxlength('textarea');textareasize(this);" onmousemove ="getMaxlength('textarea');" onmouseout ="getMaxlength('textarea');" class="textarea" name="remark" rows="5" dataType="字符串" dispName="备注" maxLength="100">${remark}</textarea>
	            	<div class="textarea_count">
	            	<span>字符：<a id="num_textarea"><font color=#009900><script>getNownum('textarea')</script> / <script>getMaxnum('textarea')</script></font></a></span> | 
	            	<a style="cursor:pointer;" onclick="clearcontent('textarea')">清空内容</a>
	            	</div>
	            </td>
			</tr>
		</table>
	</div>
</div>
 
 
						<div class="listTablew">
							<table class="commonTable_main" cellSpacing="1" id="resultTable">
								<tr class="rowTitle" align="middle">
									<td width="25" title="可以拖动下面行首,实现记录的位置移动.">
										<img src="../images/drag.gif">
									</td>
									<td width="20">
										<input class="input" type="checkbox" name="ck_del" onclick="checkGroupBox(this);" />
									</td>
									<td width="33">序号</td>
									<td>货号</td>
									<td>数量</td>
									<td>毛重</td>
									<td>净重</td>
								</tr>
							</table>
						</div>


						</div>
						<div class="textbox-bottom">
							<div class="textbox-inner-bottom">
								<div class="textbox-go-top">
								</div>
							</div>
						</div>
					</div>

<input type="button" name="btnAdd" value="新增" onclick="addTRRecord('resultTable', '', '', '', '', '');">
 
</form>
</body>
</html>

