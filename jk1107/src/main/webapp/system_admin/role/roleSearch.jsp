<%@ page language="java" pageEncoding="UTF-8"%>
 
 
<!--script language="javascript" src="/js/tree.jsxx"></script>  -->
<script language="javascript" src="/validator/CheckErrControl.js"></script>
<script language="javascript" src="/validator/CheckFrame.js"></script>
<script language="javascript" src="/validator/CheckImp.js"></script>
<script language="javascript" src="/js/common.js"></script>
<script type="text/javascript" src="/components/jquery-ui/jquery-1.2.6.js"></script>
<script type="text/javascript" src="/components/jquery-ui/ui/jquery.ui.all.min.js"></script>
	
 
 
 
 
		<script language="javascript">
			window.status = "";
 
			// stop mouse right click
			function stopRightClick(){ 
				return false; 
			} 
			//document.oncontextmenu=stopRightClick; 
			
			
		   function killErrors() {
			  return true;
		   }
		   //window.onerror = killErrors;		// ????ie?í?ó?á??	
		</script>
 
	<!-- avoid save as  -->
 
	<noscript> 
		<iframe src="*.htm"></iframe> 
	</noscript>
 
 
<script type="text/javascript"> 
<!--
// ????ec±í???????????????ó,????form?á????±?????????
	function exportedReset() {
		try {
			if(document.forms[0].ec_eti) {
				document.forms[0].ec_eti.value="";
			}
		} catch (e) {
		}
	}
	function beforeSubmit(actionUrl, formName, btnName) {
 
		if (btnName == "?ò??") {
 
			if (typeof(window.formTarget) == 'undefined') {
				window.formTarget = document.forms[0].target;
			}
			document.forms[0].target='_blank';
			PageLoading = false;
		} else { 
			if (typeof(window.formTarget) != 'undefined') {
//					alert(window.formTarget);		
 
				document.forms[0].target = window.formTarget;
			}
//			alert(document.forms[0].target);
		}
	}
	
//	window.onbeforeunload = function(){
//		return "?ú?·?¨?????????????";
//	}
//-->
</script>
 
 
 
 
 
 
 
 
<!-- 告诉浏览器本网页符合XHTML1.0过渡型DOCTYPE -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 
<!-- html标识扩展，定义名字空间 -->
<html xmlns="http://www.w3.org/1999/xhtml" lang="gbk">
 
<head>
    <title></title>
 
    <!-- 调用样式表 -->
    <link rel="stylesheet" rev="stylesheet" type="text/css" href="/skin/default/css/default.css" />
 
    <!-- 调用外部 JavaScript 脚本语言 -->   
    <script type="text/javascript" src="../js/common.js"></script>
 
    <!-- 页面中的JavaScript片断 -->
	<script language="JavaScript">	
	    function preSubmit(serviceName) {
	        if (serviceName=="执行查询"){
	            return _CheckAll(true);
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
	<li id="dosearch">
		<a href="#">执行查询</a>
	</li>
	<li id="back">
		<a href="#" onclick="history.go(-1);">返回</a>
	</li>
</ul>
    </div>
</div>
</div>
</div>
 
<!--  -->
<div class="textbox">
    <div class="textbox-header">
    <div class="textbox-inner-header">
    <div class="textbox-title">
        <h2>角色查询</h2>
    </div> 
    </div>
    </div>
 
    <div>
        <table class="commonTable" cellspacing="1">
	        <tr>
	            <td class="columnTitle">角色名称</td>
	            <td class="tableContent"><input type="text" name="f_name"/></td>
	        </tr>
	        <tr>
	            <td class="columnTitle">角色描述</td>
	            <td class="tableContent"><input type="text" name="f_roleDesc"/></td>
			</tr>
			        	                                     
		</table>
    </div>
 
    <div class="textbox-bottom">
    <div class="textbox-inner-bottom">
    <div class="textbox-go-top"></div>
    </div>
    </div>
</div>
 
</form>
</body>
 
</html>
