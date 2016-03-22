<%@ page language="java" pageEncoding="UTF-8"%>
 
 
 
 
 
 
 
 
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
    <link rel="stylesheet" rev="stylesheet" type="text/css" href="/skin/default/css/default.css" media="all" title="default" />
    
    <script type="text/javascript" src="../components/jquery-ui/jquery-1.6.1.min.js"></script>
    <link rel="StyleSheet" href="../../js/dtree/tdtree/dtree.css" type="text/css" />
	<script type="text/javascript" src="../../js/dtree/tdtree/dtree.js"></script>
	
	<script language="JavaScript">
	
	    $().ready(function(){
			setSelCheckBox();
    	});
	
		function preSubmit(serviceName) {
	        if(serviceName=="返回"){
	            return true;
	        } else if (serviceName=="确定"){
	        	submitForm();
	            return _CheckAll(true);
	        }
	    }
	     function checkRow(curChecked, checkBoxName) {
			var checkBoxArray = document.getElementsByName(checkBoxName);
			for (var i = 0; i < checkBoxArray.length; i++) {
				if (curChecked.checked == true) {
					checkBoxArray[i].checked = true;
				} else {
					checkBoxArray[i].checked = false;
				}
			}
		}
		
		function setSelCheckBox(){
			var ids = "'0101','010104','01010402','01010403','010107','01010702','01010703','0101070302','0101070303','01010704','0101070402','0101070403','01010705','01010706','0101070602','0101070603','0103','010303','01030301','010304','01030402','0104','010401','01040101','0104010101','0104010102','0104010103','0104010104','0104010105','0104010106','01040102','0104010201','0104010202','0104010203','0104010204','0104010205','0104010207','01040103','0104010301','0104010302','0104010303','0104010304','0104010305',";	//"[_ALL]"
			var form = document.getElementById("dtreeForm");
			for (var i=0; i<form.elements.length; i++) {
				var element = form.elements[i];
				if (element.name == "id" && element.type=='checkbox'){
					if( ids.indexOf("'"+element.value+"',")>-1 ){
						element.checked = true
					}
				}
			}
		}
		
		function submitForm(){
 
			//document.getElementById("dTreeCheckBox").action="";
			//document.getElementById("dTreeCheckBox").submit();
			//alert(document.getElementById("dtreeForm"));
			var allFlag = false;allFlag = true;
			var ids = "";
			var form = document.getElementById("dtreeForm");
			for (var i=0; i<form.elements.length; i++) {
				var element = form.elements[i];
				if (element.name == "id" && element.type=='checkbox'){
					if( element.checked == true ){
						//alert("id=" + element.id +"\r\n" + "name=" + element.name + "\r\n" + "value="+element.value);
						ids = ids + element.value + ",";
					}else{
						allFlag = false;
					}
				}
			}
			if(allFlag){
				ids = "[_ALL]";	//选择所有checkbox,在传此标识,以减轻传送大量数据。要注意的是action中必须单独处理ALL的情况,必须重新查出所有。 created by tony 20090607
			}else{
				if(ids!=""){
					ids = ids.substring(0,ids.length-1);
				}
			}
			document.forms[0].selModules.value = ids;
			//alert("ids = " + ids);
		}
 
   	function showAlldept(elmID){
	   	var DIVS = document.getElementById(elmID);
		if(DIVS.style.overflow == 'auto'){
			DIVS.style.height = 'auto';
			DIVS.style.overflow = 'visible';
		}else{
			DIVS.style.overflow = 'auto';
			DIVS.style.height = '120px';
		}
	}
 
    function treeStyle(obj) {
        var t = obj.innerText;
        if(t == "[展开树]") {
            obj.innerText = "[折叠树]";
            d_tree.oAll(open);
        } else {
            obj.innerText = "[展开树]";
            d_tree.oAll(closed);
        }
        
    }
	</script>
<style> 
#Alldept ul li {
    list-style: none;
    float:left;
    width: 140px;
}
</style>	
</head>
 
<body>
<form name="dtreeForm">
<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
    <div id="navMenubar">
<ul>
	<li id="save">
		<a href="#">确定</a>
	</li>
	<li id="back">
		<a href="#" onclick="history.go(-1);">返回</a>
	</li>
</ul>    
    </div>
</div>
</div>
</div>
 
<div class="textbox">
    <div class="textbox-header">
    <div class="textbox-inner-header">
    <div class="textbox-title">
        <h2>修改角色</h2>
    </div> 
    </div>
    </div>
 
    <div>
        <table class="commonTable" cellspacing="1">
	        <input type="hidden" name="id" value="ff808081307f4ffc01307f596f2a0018"/>
	        <tr>
	            <td class="columnTitle_mustbe">角色名称</td>
	            <td class="tableContentAuto"><input type="text" name="name" value="管理员" dataType="非空字符串" dispName="角色名称" maxLength="40" onchange="_CheckValidate(this)"/></td>
	            <td class="columnTitle">排序号</td>
	            <td class="tableContentAuto"><input type="text" name="orderNo" value="10" dataType="整数" dispName="排序号" maxLength="40"/></td>
	        </tr>
	        <tr>
	            <td class="columnTitle">&nbsp;&nbsp;角色描述</td>
	            <td class="tableContentAuto" colspan="3">
	            	<textarea id="textarea" onkeyup="getMaxlength('textarea');textareasize(this);" onmousemove ="getMaxlength('textarea');" onmouseout ="getMaxlength('textarea');" class="textarea" name="roleDesc" rows="3" dataType="字符串" dispName="角色描述" maxLength="100" onkeyup="textareasize(this)">主要职责为创建部门,创建角色,创建用户,分配权限</textarea>
	            	<div class="textarea_count">
	            	<span>字符：<a id="num_textarea"><font color=#009900><script>getNownum('textarea')</script> / <script>getMaxnum('textarea')</script></font></a></span> | 
	            	<a style="cursor:pointer;" onclick="clearcontent('textarea')">清空内容</a>
	            	</div>
	            </td>
			</tr>                                        
			<tr>
                <td class="columnTitle">
                <div id="plat_arrow" onclick ="showAlldept('Alldept');platArrow();" style="width:120px;">
					<div id="text_arrow">分配用户</div>
                	<div id="parrow" class="show_arrow"></div>
                </div>
                </td>
	        	<td class="tableContentAuto" colspan="3">
					<div id="Alldept" style="overflow:auto;height:120px;clear:both;">
						<ul>
							<li><input minSelect="0" class="input" type="checkbox" name="userId" checked value="ff808081307f4ffc01307f5ce342001f"/>杰信商贸 / <font color='orange'>管理员</font></li><li><input minSelect="0" class="input" type="checkbox" name="userId" value="ff80808131301abf0131303ceab20031"/>杰信商贸 / <font color='orange'>吴杰</font></li><li><input minSelect="0" class="input" type="checkbox" name="userId" checked value="ff80808131301abf0131303ed30a0035"/>开发部 / <font color='orange'>刘晓</font></li><li><input minSelect="0" class="input" type="checkbox" name="userId" value="ff80808131301abf0131303fe2e40038"/>销售部 / <font color='orange'>王丽</font></li><li><input minSelect="0" class="input" type="checkbox" name="userId" value="ff80808131301abf01313040e6b7003b"/>船务部 / <font color='orange'>张玉</font></li><li><input minSelect="0" class="input" type="checkbox" name="userId" value="ff80808131301abf01313041a034003e"/>财务部 / <font color='orange'>席军</font></li><li><input minSelect="0" class="input" type="checkbox" name="userId" value="ff80808131301abf0131304334410041"/>杰信商贸 / <font color='orange'>殷丽茹</font></li><li><input minSelect="0" class="input" type="checkbox" name="userId" value="ff80808131301abf01313043fd3e0044"/>杰信商贸 / <font color='orange'>杜勇</font></li><li><input minSelect="0" class="input" type="checkbox" name="userId" value="ff80808131301abf01313044c2d00047"/>销售部 / <font color='orange'>田燕</font></li><li><input minSelect="0" class="input" type="checkbox" name="userId" value="ff80808131301abf013130455a7c004a"/>销售部 / <font color='orange'>吴梦熙</font></li><li><input minSelect="0" class="input" type="checkbox" name="userId" value="ff80808131301abf013130492d100053"/>销售部 / <font color='orange'>石宇秀</font></li><li><input minSelect="0" class="input" type="checkbox" name="userId" value="ff80808131301abf0131304ac5060058"/>船务部 / <font color='orange'>杜娟丽</font></li><li><input minSelect="0" class="input" type="checkbox" name="userId" checked value="ff8080813d00613e013d006644a60003"/>杰信商贸 / <font color='orange'>演示</font></li>
						</ul>
					</div>
	        	</td>
        	</tr>
	        <tr>
	            <td class="columnTitle">
		        分配模块权限
	            </td>
	            <td class="tableContentAuto" colspan="3">
	        	    <a href="#" onclick="treeStyle(this);">[展开树]</a>
					<input type="hidden" name="selModules" value=""/>
	            </td>
	        </tr>
	        
	        <tr>
	            <td class="columnTitle">
	            </td>
	            <td class="tableContentAuto">
				    <div id ='tdTree' class="textbox-title" style="FONT: 8pt 宋体;height:50px;padding:20px;">
							<script type="text/javascript"> 
d_tree = new dTree("d_tree","../../js/dtree/tdtree","dtreeForm","id",true,'relationck');
d_tree.add('01','-1',"系统功能模块",'','','',"");
d_tree.add('0101','01',"系统首页",'','','',"");
d_tree.add('010104','0101',"我的留言板",'','','',"");
d_tree.add('01010402','010104',"新建",'','','',"new");
d_tree.add('01010403','010104',"位置(保存留言窗口的位置信息)",'','','',"save");
d_tree.add('010107','0101',"系统使用反馈",'','','',"");
d_tree.add('01010702','010107',"查看",'','','',"view");
d_tree.add('01010703','010107',"新建",'','','',"new");
d_tree.add('0101070302','01010703',"确定",'','','',"save");
d_tree.add('0101070303','01010703',"暂存",'','','',"save");
d_tree.add('01010704','010107',"修改",'','','',"update");
d_tree.add('0101070402','01010704',"确定",'','','',"save");
d_tree.add('0101070403','01010704',"暂存",'','','',"save");
d_tree.add('01010705','010107',"删除",'','','',"delete");
d_tree.add('01010706','010107',"处理",'','','',"new");
d_tree.add('0101070602','01010706',"确定",'','','',"save");
d_tree.add('0101070603','01010706',"暂存",'','','',"save");
d_tree.add('0103','01',"基础信息",'','','',"");
d_tree.add('010301','0103',"问题反馈与处理",'','','',"view");
d_tree.add('01030101','010301',"查看",'','','',"view");
d_tree.add('01030102','010301',"新建",'','','',"new");
d_tree.add('0103010201','01030102',"确定",'','','',"save");
d_tree.add('01030103','010301',"修改",'','','',"update");
d_tree.add('0103010301','01030103',"确定",'','','',"save");
d_tree.add('01030104','010301',"删除",'','','',"delete");
d_tree.add('01030105','010301',"查询",'','','',"search");
d_tree.add('0103010501','01030105',"执行查询",'','','',"dosearch");
d_tree.add('010303','0103',"基础代码",'','','',"view");
d_tree.add('01030301','010303',"确定",'','','',"save");
d_tree.add('010304','0103',"系统代码",'','','',"view");
d_tree.add('01030402','010304',"确定",'','','',"save");
d_tree.add('010305','0103',"控制面板配置",'','','',"view");
d_tree.add('01030502','010305',"确定",'','','',"save");
d_tree.add('01030503','010305',"生成(生成【控制面板】页面)",'','','',"accept");
d_tree.add('010306','0103',"厂家信息",'','','',"view");
d_tree.add('01030602','010306',"查看",'','','',"view");
d_tree.add('01030603','010306',"新建",'','','',"new");
d_tree.add('0103060302','01030603',"确定",'','','',"save");
d_tree.add('0103060303','01030603',"暂存",'','','',"save");
d_tree.add('01030604','010306',"修改",'','','',"update");
d_tree.add('0103060402','01030604',"确定",'','','',"save");
d_tree.add('0103060403','01030604',"暂存",'','','',"save");
d_tree.add('01030605','010306',"删除",'','','',"delete");
d_tree.add('01030606','010306',"启用",'','','',"new");
d_tree.add('01030607','010306',"停止",'','','',"new");
d_tree.add('010307','0103',"产品信息",'','','',"view");
d_tree.add('01030702','010307',"查看",'','','',"view");
d_tree.add('01030703','010307',"新建",'','','',"new");
d_tree.add('0103070302','01030703',"确定",'','','',"save");
d_tree.add('0103070303','01030703',"暂存",'','','',"save");
d_tree.add('01030704','010307',"修改",'','','',"update");
d_tree.add('0103070402','01030704',"确定",'','','',"save");
d_tree.add('0103070403','01030704',"暂存",'','','',"save");
d_tree.add('01030705','010307',"删除",'','','',"delete");
d_tree.add('0104','01',"系统管理",'','','',"");
d_tree.add('010401','0104',"权限管理",'','','',"users_family.png");
d_tree.add('01040101','010401',"部门管理",'','','',"");
d_tree.add('0104010101','01040101',"查看",'','','',"view");
d_tree.add('0104010102','01040101',"新建",'','','',"new");
d_tree.add('0104010103','01040101',"修改",'','','',"update");
d_tree.add('0104010104','01040101',"删除",'','','',"delete");
d_tree.add('0104010105','01040101',"查询",'','','',"search");
d_tree.add('0104010106','01040101',"排序",'','','',"search");
d_tree.add('01040102','010401',"用户管理",'','','',"");
d_tree.add('0104010201','01040102',"查看",'','','',"view");
d_tree.add('0104010202','01040102',"新建",'','','',"new");
d_tree.add('0104010203','01040102',"修改",'','','',"update");
d_tree.add('0104010204','01040102',"删除",'','','',"delete");
d_tree.add('0104010205','01040102',"查询",'','','',"search");
d_tree.add('0104010206','01040102',"排序",'','','',"search");
d_tree.add('0104010207','01040102',"重置密码",'','','',"dosearch");
d_tree.add('0104010208','01040102',"启用",'','','',"accept");
d_tree.add('0104010209','01040102',"停用",'','','',"delete");
d_tree.add('01040103','010401',"角色管理",'','','',"");
d_tree.add('0104010301','01040103',"查看",'','','',"view");
d_tree.add('0104010302','01040103',"新建",'','','',"new");
d_tree.add('0104010303','01040103',"修改",'','','',"update");
d_tree.add('0104010304','01040103',"删除",'','','',"delete");
d_tree.add('0104010305','01040103',"查询",'','','',"search");
d_tree.add('01040104','010401',"操作日志",'','','',"");
d_tree.add('0104010401','01040104',"查看",'','','',"view");
d_tree.add('0104010402','01040104',"删除",'','','',"delete");
d_tree.add('0104010403','01040104',"查询",'','','',"search");
d_tree.add('010401040301','0104010403',"执行查询",'','','',"dosearch");
d_tree.add('0104010404','01040104',"清空",'','','',"search");
d_tree.add('01040105','010401',"登陆日志",'','','',"");
d_tree.add('0104010501','01040105',"查看",'','','',"view");
d_tree.add('0104010502','01040105',"删除",'','','',"delete");
d_tree.add('0104010503','01040105',"查询",'','','',"search");
d_tree.add('010401050301','0104010503',"执行查询",'','','',"dosearch");
d_tree.add('0104010504','01040105',"清空",'','','',"search");
d_tree.add('01040106','010401',"模块访问",'','','',"");
d_tree.add('0104010602','01040106',"查看",'','','',"view");
d_tree.add('0104010603','01040106',"删除",'','','',"delete");
d_tree.add('0104010604','01040106',"查询",'','','',"search");
d_tree.add('0104010605','01040106',"清空",'','','',"search");
d_tree.add('01040107','010401',"模块管理",'','','',"");
d_tree.add('0104010702','01040107',"确定",'','','',"save");
d_tree.add('010402','0104',"系统工具",'','','',"data_gear.png");
d_tree.add('01040201','010402',"系统管理",'','','',"");
d_tree.add('01040202','010402',"数据管理",'','','',"");
d_tree.add('010403','0104',"控制面板",'','','',"");
d_tree.add('0119','01',"内容管理",'','','',"");
d_tree.add('011902','0119',"工作动态",'','','',"");
d_tree.add('01190202','011902',"查看",'','','',"view");
d_tree.add('01190203','011902',"新建",'','','',"new");
d_tree.add('0119020302','01190203',"确定",'','','',"save");
d_tree.add('0119020303','01190203',"暂存",'','','',"save");
d_tree.add('01190204','011902',"修改",'','','',"update");
d_tree.add('0119020402','01190204',"确定",'','','',"save");
d_tree.add('0119020403','01190204',"暂存",'','','',"save");
d_tree.add('01190205','011902',"删除",'','','',"delete");
d_tree.add('01190206','011902',"生成",'','','',"accept");
d_tree.add('01190207','011902',"发布",'','','',"new");
d_tree.add('01190208','011902',"取消(取消发布)",'','','',"delete");
d_tree.add('011903','0119',"通知公告",'','','',"");
d_tree.add('01190302','011903',"查看",'','','',"view");
d_tree.add('01190303','011903',"新建",'','','',"new");
d_tree.add('0119030302','01190303',"确定",'','','',"save");
d_tree.add('0119030303','01190303',"暂存",'','','',"save");
d_tree.add('01190304','011903',"修改",'','','',"update");
d_tree.add('0119030402','01190304',"确定",'','','',"save");
d_tree.add('0119030403','01190304',"暂存",'','','',"save");
d_tree.add('01190305','011903',"删除",'','','',"delete");
d_tree.add('01190306','011903',"生成",'','','',"accept");
d_tree.add('01190307','011903',"发布",'','','',"new");
d_tree.add('01190308','011903',"取消(取消发布)",'','','',"delete");
d_tree.add('011904','0119',"系统公告",'','','',"");
d_tree.add('01190402','011904',"查看",'','','',"view");
d_tree.add('01190403','011904',"新建",'','','',"new");
d_tree.add('0119040302','01190403',"确定",'','','',"save");
d_tree.add('0119040303','01190403',"暂存",'','','',"save");
d_tree.add('01190404','011904',"修改",'','','',"update");
d_tree.add('0119040402','01190404',"确定",'','','',"save");
d_tree.add('0119040403','01190404',"暂存",'','','',"save");
d_tree.add('01190405','011904',"删除",'','','',"delete");
d_tree.add('01190406','011904',"生成",'','','',"accept");
d_tree.add('01190407','011904',"发布",'','','',"new");
d_tree.add('01190408','011904',"取消",'','','',"delete");
d_tree.add('011905','0119',"工作动态审核",'','','',"");
d_tree.add('01190502','011905',"发布",'','','',"new");
d_tree.add('011906','0119',"通知公告审核",'','','',"");
d_tree.add('01190602','011906',"发布",'','','',"new");
d_tree.add('011907','0119',"大事记",'','','',"");
d_tree.add('01190702','011907',"查看",'','','',"view");
d_tree.add('01190703','011907',"新建",'','','',"new");
d_tree.add('0119070302','01190703',"确定",'','','',"save");
d_tree.add('0119070303','01190703',"暂存",'','','',"save");
d_tree.add('01190704','011907',"修改",'','','',"update");
d_tree.add('0119070402','01190704',"确定",'','','',"save");
d_tree.add('0119070403','01190704',"暂存",'','','',"save");
d_tree.add('01190705','011907',"删除",'','','',"delete");
d_tree.add('01190706','011907',"生成",'','','',"accept");
d_tree.add('0129','01',"运行情况",'','','',"");
d_tree.add('0130','01',"货运管理",'','','',"");
d_tree.add('013002','0130',"货运管理",'','','',"view");
d_tree.add('01300202','013002',"查看",'','','',"view");
d_tree.add('01300203','013002',"新建",'','','',"new");
d_tree.add('01300204','013002',"删除",'','','',"delete");
d_tree.add('013003','0130',"合同管理",'','','',"view");
d_tree.add('01300302','013003',"查看",'','','',"view");
d_tree.add('01300303','013003',"新建",'','','',"new");
d_tree.add('0130030302','01300303',"确定",'','','',"save");
d_tree.add('0130030303','01300303',"暂存",'','','',"save");
d_tree.add('01300304','013003',"修改",'','','',"update");
d_tree.add('0130030402','01300304',"确定",'','','',"save");
d_tree.add('0130030403','01300304',"暂存",'','','',"save");
d_tree.add('01300305','013003',"删除",'','','',"delete");
d_tree.add('01300307','013003',"打印",'','','',"print");
d_tree.add('01300312','013003',"附件",'','','',"new");
d_tree.add('0130031202','01300312',"确定",'','','',"save");
d_tree.add('0130031203','01300312',"打印",'','','',"print");
d_tree.add('01300313','013003',"归档",'','','',"new");
d_tree.add('01300314','013003',"撤消(撤消归档)",'','','',"new");
d_tree.add('01300315','013003',"出货表",'','','',"stat");
d_tree.add('0130031502','01300315',"打印",'','','',"print");
d_tree.add('01300316','013003',"上报",'','','',"new");
d_tree.add('01300317','013003',"取消(取消上报)",'','','',"new");
d_tree.add('01300318','013003',"复制",'','','',"back");
d_tree.add('013004','0130',"报运管理",'','','',"view");
d_tree.add('01300402','013004',"查看",'','','',"view");
d_tree.add('01300403','013004',"新建",'','','',"new");
d_tree.add('0130040302','01300403',"确定",'','','',"save");
d_tree.add('0130040303','01300403',"暂存",'','','',"save");
d_tree.add('01300404','013004',"修改",'','','',"update");
d_tree.add('0130040402','01300404',"确定",'','','',"save");
d_tree.add('0130040403','01300404',"暂存",'','','',"save");
d_tree.add('0130040404','01300404',"货物",'','','',"new");
d_tree.add('01300405','013004',"删除",'','','',"delete");
d_tree.add('01300406','013004',"打印",'','','',"print");
d_tree.add('01300410','013004',"复制",'','','',"back");
d_tree.add('01300411','013004',"上报",'','','',"new");
d_tree.add('01300412','013004',"取消(取消上报)",'','','',"new");
d_tree.add('01300413','013004',"H装箱",'','','',"back");
d_tree.add('01300414','013004',"装箱",'','','',"back");
d_tree.add('013006','0130',"综合查询",'','','',"view");
d_tree.add('013007','0130',"HOME装箱",'','','',"view");
d_tree.add('01300701','013007',"查看",'','','',"view");
d_tree.add('01300702','013007',"新建",'','','',"new");
d_tree.add('0130070201','01300702',"保存",'','','',"save");
d_tree.add('0130070202','01300702',"暂存",'','','',"save");
d_tree.add('01300703','013007',"修改",'','','',"update");
d_tree.add('0130070301','01300703',"保存",'','','',"save");
d_tree.add('0130070302','01300703',"暂存",'','','',"save");
d_tree.add('01300704','013007',"删除",'','','',"delete");
d_tree.add('01300705','013007',"打印",'','','',"print");
d_tree.add('013008','0130',"装箱管理",'','','',"view");
d_tree.add('01300801','013008',"查看",'','','',"view");
d_tree.add('01300802','013008',"新建",'','','',"new");
d_tree.add('0130080201','01300802',"保存",'','','',"save");
d_tree.add('0130080202','01300802',"暂存",'','','',"save");
d_tree.add('01300803','013008',"修改",'','','',"update");
d_tree.add('0130080301','01300803',"保存",'','','',"save");
d_tree.add('0130080302','01300803',"暂存",'','','',"save");
d_tree.add('01300804','013008',"删除",'','','',"delete");
d_tree.add('01300805','013008',"打印",'','','',"print");
d_tree.add('01300806','013008',"委托",'','','',"accept");
d_tree.add('0130080601','01300806',"确定",'','','',"save");
d_tree.add('0130080602','01300806',"打印",'','','',"print");
d_tree.add('01300807','013008',"发票",'','','',"new");
d_tree.add('0130080701','01300807',"确定",'','','',"save");
d_tree.add('0130080702','01300807',"打印",'','','',"print");
d_tree.add('01300808','013008',"财务",'','','',"stat");
d_tree.add('0130080801','01300808',"确定",'','','',"save");
d_tree.add('0130080802','01300808',"打印",'','','',"print");
document.write(d_tree);
</script>
	 
					</div>  
	            </td>
	        </tr>  	
		</table>
	
        </div>
 
    <div class="textbox-bottom">
    <div class="textbox-inner-bottom">
    <div class="textbox-go-top"></div>
    </div>
    </div>
    
 
</form>
</body>
 
</html>
