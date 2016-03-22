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

<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
    <div id="navMenubar">
<ul>
<li id="save"><a href="#" onclick="formSubmit('/outproduct/outProductAction_print','_self');this.blur();">打印</a></li>
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
出货表月统计
    </div> 
    </div>
    </div>

    <div>
		<table class="commonTable" cellspacing="1">
	        <tr>
	            <td class="columnTitle">船期：</td>
	            <td class="tableContent">
					<input type="text" style="width:90px;" name="inputDate"
					 onclick="WdatePicker({el:this,isShowOthers:true,dateFmt:'yyyy-MM'});"/> 	            
	            </td>
	        </tr>
		</table>
	</div>
</div>

 
</form>
</body>
</html>

