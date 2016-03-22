<%@page contentType="text/html; charset=utf-8" language="java" errorPage="" %>
 
 
<div id="ErrDIV" style="overflow:hidden;FILTER: alpha(opacity=99);position:absolute;width:300;height:150;z-index:15;margin:0;display:none;" ondragstart="start(event.x, event.y)" ondrag="move(event.x, event.y)" ondragend="end()">
	<IFrame id="ErrFrame" frameborder="0" src="../validator/ErrMsg.html" style="overflow:hidden"></IFrame>
</div>
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
    <script type="text/javascript" src="../js/select.js"></script>
<style> 
	.text_gray{color:gray;"}
</style>    
</head>
 
<body>
<form>
 
<!-- 工具栏部分 ToolBar -->
<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
    <div id="navMenubar">
   		<ul>
	<li id="back">
		<a href="#" onclick="history.go(-1);">返回</a>
	</li>
		</ul>
    </div>
</div>
</div>
</div>
 
<!-- 页面主体部分（列表等） -->
<div class="textbox">
    <div class="textbox-header">
    <div class="textbox-inner-header">
    <div class="textbox-title">
       
        <h2>角色详细信息</h2>
    </div> 
    </div>
    </div>
 
    <div>
       
       
       <table class="commonTable" cellspacing="1">
	        <input type="hidden" name="id" value="402886473192cf370131939c11da001a"/>
	        <tr>
	            <td class="columnTitle">角色名称</td>
	            <td class="tableContentAuto">合同管理</td>
	        </tr>
	        <tr>
	            <td class="columnTitle">角色描述</td>
	            <td class="tableContentAuto"></td>
			</tr>
		</table>
		
		<div class="listTablew">
		<table id="listTable" class="commonTable" cellspacing="1" style="width:100%">
			 <thead>
				<tr class="rowTitle">
					<td><div class="textbox-title"><h2>角色已分配的用户</h2></div></td>
				</tr>
				<tr class="rowTitle">
					<td style="text-align:left;color:#333333;">
						<ul style="text-height:50px;">
							
								<img src='../../images/li.gif'/> 张玉
								<span class='text_gray'>(船务部)</span>
								&nbsp;&nbsp;
							
								<img src='../../images/li.gif'/> 演示
								<span class='text_gray'>(杰信商贸)</span>
								&nbsp;&nbsp;
							
								<img src='../../images/li.gif'/> 王丽
								<span class='text_gray'>(销售部)</span>
								&nbsp;&nbsp;
							
								<img src='../../images/li.gif'/> 刘晓
								<span class='text_gray'>(开发部)</span>
								&nbsp;&nbsp;
							
						</ul>
					</td>
				</tr>				
					
			 </thead>
			 <tbody>
 
	        </tbody>
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
 
</form>
</body>
<script type="text/javascript"> 
listTableColor('listTable');
</script>
</html>
