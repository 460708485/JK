<%@ page language="java" pageEncoding="UTF-8"%>
<!-- html标识扩展，定义名字空间 -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title></title>
	<link rel="stylesheet" rev="stylesheet" type="text/css" href="../../skin/default/css/default.css" media="all" />
	
 	<link rel="stylesheet" rev="stylesheet" type="text/css" href="../../css/extreme/extremecomponents.css" />
    <link rel="stylesheet" rev="stylesheet" type="text/css" href="../../css/extreme/extremesite.css" />
</head>
<script language="javascript"> 
	function preSubmit(serviceName){
		if(serviceName=="删除"||serviceName=="查看"||serviceName=="修改"||serviceName=="启用"||serviceName=="禁止"||serviceName=="排序"||serviceName=="重置密码"){
			if(serviceName=="排序"){
				showBuilding();
				return false;
			}
			if(serviceName=="删除"){
				if(_CheckAll(true,serviceName) == false){
	            	return false;
	 			}
				return confirm(operationNote(serviceName));
			}
			if(_CheckAll(true,serviceName) == false){
				return false;
	 		}
		}
	}
	
	function preCheck(serviceName) {
	 	if(serviceName=="修改"||serviceName=="查看"){
				return onlySelect(serviceName,"id",1);
		}	
	}
	
	function onlineUser(serviceName) {
	 	//formSubmit("system_admin/userListAction.do?online=1","_self");	
	}
</script>
 
<body>
<form name="form2">
<!-- 工具栏部分 ToolBar -->
<div id="menubar">
<div id="middleMenubar">
<div id="innerMenubar">
    <div id="navMenubar">
<ul>
<li id="view"><a href="#">查看</a></li>
<li id="new"><a href="#">新建</a></li>
<li id="update"><a href="#">修改</a></li>
<li id="delete"><a href="#">删除</a></li>
<li id="search"><a href="#">查询</a></li>
<li id="dosearch"><a href="#">重置密码</a></li>
 
</ul>
    </div>
</div>
</div>
</div>
     
<!-- 页面主体部分（列表等） -->    
<div class="textbox" id="centerTextbox">
    
    <div class="textbox-header">
    <div class="textbox-inner-header">
    <div class="textbox-title">
        <h2 style="float:left">用户管理 </h2> 
        <div style="text-align:right;font-weight:normal;font-size:11px;color:gray;padding-top:6px;">
		</div>
    </div> 
    </div>
    </div>
<div>
	
		
		 
<div class="eXtremeTable" >
<table id="ec_table"  border="0"  cellspacing="0"  cellpadding="0"  class="tableRegion"  width="98%" >
	<thead>
	<tr style="padding: 0px;" >
		<td colspan="10" >
		<table border="0"  cellpadding="0"  cellspacing="0"  width="100%" >
			<tr>
				<td class="statusBar" >找到13 条记录, 显示 1 到 10 </td>
				<td class="compactToolbar"  align="right" >
				<table border="0"  cellpadding="1"  cellspacing="2" >
					<tr>
					<td><img src="/images/table/firstPageDisabled.gif"  style="border:0"  alt="第一页" /></td>
					<td><img src="/images/table/prevPageDisabled.gif"  style="border:0"  alt="上一页" /></td>
					<td><a><img src="/images/table/nextPage.gif"  style="border:0"  title="下一页"  alt="下一页" /></a></td>
					<td><a><img src="/images/table/lastPage.gif"  style="border:0"  title="最后页"  alt="最后页" /></a></td>
					<td><img src="/images/table/separator.gif"  style="border:0"  alt="Separator" /></td>
					<td><select name="ec_rd"  onchange="javascript:document.forms.form2.ec_eti.value='';document.forms.form2.ec_crd.value=this.options[this.selectedIndex].value;document.forms.form2.ec_p.value='1';document.forms.form2.setAttribute('action', 'userListAction.do');document.forms.form2.setAttribute('method', 'post');document.forms.form2.submit()" >
				<option value="10"  selected="selected">10</option><option value="50" >50</option><option value="100" >100</option>
				</select></td>
					<td><img src="/images/table/separator.gif"  style="border:0"  alt="Separator" /></td>
					<td><a href="javascript:document.forms.form2.ec_eti.value='ec';document.forms.form2.ec_ev.value='xls';document.forms.form2.ec_efn.value='presidents.xls';document.forms.form2.setAttribute('action', 'userListAction.do');document.forms.form2.setAttribute('method', 'post');document.forms.form2.submit()"><img src="/images/table/xls.gif"  style="border:0"  title="Export Excel"  alt="Excel" /></a></td>
					</tr>
				</table></td>
			</tr>
		</table>
		</td>
	</tr>		
 
	<tr>
		<td class="tableHeader" >选择</td>
		<td class="tableHeader" >姓名</td>
		<td class="tableHeader" >登录名</td>
		<td class="tableHeader" >部门名称</td>
		<td class="tableHeader" >职务</td>
		<td class="tableHeader" >归属等级</td>
		<td class="tableHeader"  style="text-align: center" >状态</td>
		<td class="tableHeader" >修改密码</td>
		<td class="tableHeader" >当前位置</td>
		<td class="tableHeader"  style="text-align: center" >在线</td>
	</tr>
	</thead>
	<tbody class="tableBody" >
	<tr class="odd"  onmouseover="this.className='highlight'"  onmouseout="this.className='odd'" >
		<td>  
	 			<input type="checkbox" name="id" dataType="单选按钮" dispName="用户管理" minSelect="1"  value="ff808081307f4ffc01307f5ce342001f"/>
	 		</td>
		<td style="white-space:nowrap" >
				<a href="#">管理员</a>
			</td>
		<td style="white-space:nowrap" >admin</td>
		<td>杰信商贸</td>
		<td>管理员</td>
		<td>0001</td>
		<td><img title='启用' src='../../images/state/1.gif'></td>
		<td>&#160;</td>
		<td>&#160;</td>
		<td><img title='不在线' src='../../images/state/0.gif'></td>
	</tr>
	<tr class="even"  onmouseover="this.className='highlight'"  onmouseout="this.className='even'" >
		<td>  
	 			<input type="checkbox" name="id" dataType="单选按钮" dispName="用户管理" minSelect="1"  value="ff80808131301abf0131303ceab20031"/>
	 		</td>
		<td style="white-space:nowrap" >
				<a href="#">吴贸</a>
			</td>
		<td style="white-space:nowrap" >wujie</td>
		<td>杰信商贸</td>
		<td>&#160;</td>
		<td>0001</td>
		<td><img title='启用' src='../../images/state/1.gif'></td>
		<td>&#160;</td>
		<td>&#160;</td>
		<td><img title='不在线' src='../../images/state/0.gif'></td>
	</tr>
	<tr class="odd"  onmouseover="this.className='highlight'"  onmouseout="this.className='odd'" >
		<td>  
	 			<input type="checkbox" name="id" dataType="单选按钮" dispName="用户管理" minSelect="1"  value="ff80808131301abf0131303ed30a0035"/>
	 		</td>
		<td style="white-space:nowrap" >
				<a href="#">刘山</a>
			</td>
		<td style="white-space:nowrap" >Leon</td>
		<td>开发部</td>
		<td>&#160;</td>
		<td>0001001</td>
		<td><img title='启用' src='../../images/state/1.gif'></td>
		<td>&#160;</td>
		<td>&#160;</td>
		<td><img title='不在线' src='../../images/state/0.gif'></td>
	</tr>
	<tr class="even"  onmouseover="this.className='highlight'"  onmouseout="this.className='even'" >
		<td>  
	 			<input type="checkbox" name="id" dataType="单选按钮" dispName="用户管理" minSelect="1"  value="ff80808131301abf0131303fe2e40038"/>
	 		</td>
		<td style="white-space:nowrap" >
				<a href="#">杨销</a>
			</td>
		<td style="white-space:nowrap" >yangli</td>
		<td>销售部</td>
		<td>单证</td>
		<td>0001002</td>
		<td><img title='启用' src='../../images/state/1.gif'></td>
		<td>&#160;</td>
		<td>&#160;</td>
		<td><img title='不在线' src='../../images/state/0.gif'></td>
	</tr>
	<tr class="odd"  onmouseover="this.className='highlight'"  onmouseout="this.className='odd'" >
		<td>  
	 			<input type="checkbox" name="id" dataType="单选按钮" dispName="用户管理" minSelect="1"  value="ff80808131301abf01313040e6b7003b"/>
	 		</td>
		<td style="white-space:nowrap" >
				<a href="#">张杰</a>
			</td>
		<td style="white-space:nowrap" >zhengjie</td>
		<td>船务部</td>
		<td>船务经理</td>
		<td>0001003</td>
		<td><img title='启用' src='../../images/state/1.gif'></td>
		<td>&#160;</td>
		<td>&#160;</td>
		<td><img title='不在线' src='../../images/state/0.gif'></td>
	</tr>
	<tr class="even"  onmouseover="this.className='highlight'"  onmouseout="this.className='even'" >
		<td>  
	 			<input type="checkbox" name="id" dataType="单选按钮" dispName="用户管理" minSelect="1"  value="ff80808131301abf01313041a034003e"/>
	 		</td>
		<td style="white-space:nowrap" >
				<a href="#">席丽</a>
			</td>
		<td style="white-space:nowrap" >xili</td>
		<td>财务部</td>
		<td>财务经理</td>
		<td>0001004</td>
		<td><img title='启用' src='../../images/state/1.gif'></td>
		<td>&#160;</td>
		<td>&#160;</td>
		<td><img title='不在线' src='../../images/state/0.gif'></td>
	</tr>
	<tr class="odd"  onmouseover="this.className='highlight'"  onmouseout="this.className='odd'" >
		<td>  
	 			<input type="checkbox" name="id" dataType="单选按钮" dispName="用户管理" minSelect="1"  value="ff80808131301abf0131304334410041"/>
	 		</td>
		<td style="white-space:nowrap" >
				<a href="#">殷茹</a>
			</td>
		<td style="white-space:nowrap" >yinru</td>
		<td>杰信商贸</td>
		<td>&#160;</td>
		<td>0001</td>
		<td><img title='启用' src='../../images/state/1.gif'></td>
		<td>&#160;</td>
		<td>&#160;</td>
		<td><img title='不在线' src='../../images/state/0.gif'></td>
	</tr>
	<tr class="even"  onmouseover="this.className='highlight'"  onmouseout="this.className='even'" >
		<td>  
	 			<input type="checkbox" name="id" dataType="单选按钮" dispName="用户管理" minSelect="1"  value="ff80808131301abf01313043fd3e0044"/>
	 		</td>
		<td style="white-space:nowrap" >
				<a href="#">杜信</a>
			</td>
		<td style="white-space:nowrap" >duxin</td>
		<td>杰信商贸</td>
		<td>总经理</td>
		<td>0001</td>
		<td><img title='启用' src='../../images/state/1.gif'></td>
		<td>&#160;</td>
		<td>&#160;</td>
		<td><img title='不在线' src='../../images/state/0.gif'></td>
	</tr>
	<tr class="odd"  onmouseover="this.className='highlight'"  onmouseout="this.className='odd'" >
		<td>  
	 			<input type="checkbox" name="id" dataType="单选按钮" dispName="用户管理" minSelect="1"  value="ff80808131301abf01313044c2d00047"/>
	 		</td>
		<td style="white-space:nowrap" >
				<a href="#">田经燕</a>
			</td>
		<td style="white-space:nowrap" >tianjingyan</td>
		<td>销售部</td>
		<td>外销经理</td>
		<td>0001002</td>
		<td><img title='启用' src='../../images/state/1.gif'></td>
		<td>&#160;</td>
		<td>&#160;</td>
		<td><img title='不在线' src='../../images/state/0.gif'></td>
	</tr>
	<tr class="even"  onmouseover="this.className='highlight'"  onmouseout="this.className='even'" >
		<td>  
	 			<input type="checkbox" name="id" dataType="单选按钮" dispName="用户管理" minSelect="1"  value="ff80808131301abf013130455a7c004a"/>
	 		</td>
		<td style="white-space:nowrap" >
				<a href="#">吴熙</a>
			</td>
		<td style="white-space:nowrap" >wuxi</td>
		<td>销售部</td>
		<td>外销员</td>
		<td>0001002</td>
		<td><img title='启用' src='../../images/state/1.gif'></td>
		<td>&#160;</td>
		<td>&#160;</td>
		<td><img title='不在线' src='../../images/state/0.gif'></td>
	</tr>
	</tbody>
</table>
</div>
 
 
</form>
</body>
</html>

