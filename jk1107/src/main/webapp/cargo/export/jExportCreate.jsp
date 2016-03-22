<%@ page language="java" pageEncoding="UTF-8"%>

<!-- 告诉浏览器本网页符合XHTML1.0过渡型DOCTYPE -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
 
	<link rel="stylesheet" rev="stylesheet" type="text/css" href="../../skin/default/css/default.css" media="all" />
    <script type="text/javascript" src="../../js/datepicker/WdatePicker.js"></script>
	<script type="text/javascript" src="../js/ajax/getItems.js"></script>
	<script type="text/javascript" src="../js/tabledo.js"></script>
	
        <link href="/plugin/jquery_upload/css/uploadify.css" rel="stylesheet" type="text/css" />
        <script type="text/javascript" src="/plugin/jquery_upload/js/jquery-1.4.2.min.js"></script>
        <script type="text/javascript" src="/plugin/jquery_upload/js/swfobject.js"></script>
        <script type="text/javascript" src="/plugin/jquery_upload/js/jquery.uploadify.v2.1.4.js"></script>
        
<script language="JavaScript"> 
   		
  	function preSubmit(serviceName) {
        if(serviceName=="返回"){
            return true;
        } else if (serviceName=="确定"||serviceName=="暂存"){
        	var fresult =  _CheckAll(true,serviceName);
        	if(fresult){
            	doLastTR("resultTable");	//如果最后一行为空在删除,这样就不会因_CheckAll监测最后一行为空而提示未填写了
            }
			return fresult;
        }
    }
 
 
</script>
	
</head>
<body>
<form>
<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
    <div id="navMenubar">
<ul>
 
<li id="save"><a href="#">确定</a></li>
<li id="save"><a href="#">暂存</a></li>
 
 
	<li id="back">
		<a href="jExportList.jsp">返回</a>
	</li>
</ul>
    </div>
</div>
</div>
</div>
     
<div class="textbox" id="centerTextbox">
    
    <div class="textbox-header">
    <div class="textbox-inner-header">
    <div class="textbox-title">
        新建报运信息
    </div> 
    </div>
    </div>
<div>
 
 
    <div>
		<table class="commonTable" cellspacing="1">
	        <tr>
	            <td class="columnTitle">制单日期：</td>
	            <td class="tableContent" colspan="3">
					<input type="text" style="width:90px;" name="inputDate" dataType="非空日期" dispName="签单日期" value="2013-03-04" onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM-dd'});"/> 
				</td>
	        </tr>
	        <tr>
	            <td class="columnTitle">L/C No.：</td>
	            <td class="tableContentAuto">
	            	<input type="radio" name="lcno" value="L/C" checked class="input">L/C
					<input type="radio" name="lcno" value="T/T" class="input">T/T
	            </td>
	            <td class="columnTitle">装运港：</td>
	            <td class="tableContent"><input type="text" name="shipmentPort" value="" dataType="字符串" dispName="装运港" maxLength="100"></td>
	        </tr>
	        <tr>
	            <td class="columnTitle_mustbe" style="width:100px;">收货人及地址：</td>
	            <td class="tableContentAuto" colspan="3">
	            	<input type="text" name="consignee" value="" dataType="非空字符串" dispName="收货人及地址" maxLength="100" style="width:100%">
	            </td>
	        </tr>
	        <tr>
	            <td class="columnTitle">运输方式：</td>
	            <td class="tableContentAuto">
	            	<input type="radio" name="transportMode" value="SEA" checked class="input">海运
					<input type="radio" name="transportMode" value="AIR" class="input">空运
	            </td>
	            <td class="columnTitle">价格条件：</td>
	            <td class="tableContent"><input type="text" name="priceCondition" value="" dataType="字符串" dispName="价格条件" maxLength="10"></td>
	        </tr>
	        <tr>
				<td class="columnTitle">唛头：</td>
	            <td colspan="3">
	            	<textarea id="textarea_marks" onkeyup="getMaxlength('textarea_marks');textareasize(this);" onmousemove ="getMaxlength('textarea_marks');" onmouseout ="getMaxlength('textarea_marks');" class="textarea" name="marks" rows="5" dataType="字符串" dispName="唛头" maxLength="1000"></textarea>
	            	<div class="textarea_count">
	            	<span>字符：<a id="num_textarea_marks"><font color=#009900><script>getNownum('textarea_marks')</script> / <script>getMaxnum('textarea_marks')</script></font></a></span> | 
	            	<a style="cursor:pointer;" onclick="clearcontent('textarea_marks')">清空内容</a>
	            	</div>
	            </td>
			</tr>
	        <tr>
				<td class="columnTitle">备注：</td>
	            <td colspan="3">
	            	<textarea id="textarea" onkeyup="getMaxlength('textarea');textareasize(this);" onmousemove ="getMaxlength('textarea');" onmouseout ="getMaxlength('textarea');" class="textarea" name="remark" rows="5" dataType="字符串" dispName="备注" maxLength="100"></textarea>
	            	<div class="textarea_count">
	            	<span>字符：<a id="num_textarea"><font color=#009900><script>getNownum('textarea')</script> / <script>getMaxnum('textarea')</script></font></a></span> | 
	            	<a style="cursor:pointer;" onclick="clearcontent('textarea')">清空内容</a>
	            	</div>
	            </td>
			</tr>
		</table>
	</div>
</div>
 
 
 
</form>
</body>
</html>
 



