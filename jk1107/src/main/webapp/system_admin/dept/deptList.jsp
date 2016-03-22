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
	if(serviceName=="删除" ||serviceName=="查看"||serviceName=="修改"||serviceName=="排序"){
		if(serviceName=="排序"){
			showMsg("正在建设...");
			return false;
		}
		if(serviceName=="删除")
		{
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
	if(serviceName=="删除"||serviceName=="查看"){
		return onlySelect(serviceName,"id",1);
	}
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
<li id="search"><a href="#">排序</a></li>
 
</ul>
    </div>
</div>
</div>
</div>
     
<!-- 页面主体部分（列表等） -->    
<div class="textbox" id="centerTextbox">
    <div class="textbox-title">
        组织机构管理
    </div>
<div>
<div style="width:100%;text-align:center;margin:8px 0;">
 
		 
		
		
			
		
 
<div>
<input type="hidden"  name="ec_i"  value="ec" />
<input type="hidden"  name="ec_eti" />
<input type="hidden"  name="ec_ev" />
<input type="hidden"  name="ec_efn" />
<input type="hidden"  name="ec_crd"  value="10" />
<input type="hidden"  name="ec_p"  value="1" />
<input type="hidden"  name="ec_a_选择"  value="id" />
</div>
<div class="eXtremeTable" >
<table id="ec_table"  border="0"  cellspacing="0"  cellpadding="0"  class="tableRegion"  width="98%" >
	<thead>
	<tr style="padding: 0px;" >
		<td colspan="7" >
		<table border="0"  cellpadding="0"  cellspacing="0"  width="100%" >
			<tr>
				<td class="statusBar" >找到6 条记录, 显示 1 到 6 </td>
				<td class="compactToolbar"  align="right" >
				<table border="0"  cellpadding="1"  cellspacing="2" >
					<tr>
					<td><img src="/images/table/firstPageDisabled.gif"  style="border:0"  alt="第一页" /></td>
					<td><img src="/images/table/prevPageDisabled.gif"  style="border:0"  alt="上一页" /></td>
					<td><img src="/images/table/nextPageDisabled.gif"  style="border:0"  alt="下一页" /></td>
					<td><img src="/images/table/lastPageDisabled.gif"  style="border:0"  alt="最后页" /></td>
					<td><img src="/images/table/separator.gif"  style="border:0"  alt="Separator" /></td>
					<td><select name="ec_rd"  onchange="javascript:document.forms.form2.ec_eti.value='';document.forms.form2.ec_crd.value=this.options[this.selectedIndex].value;document.forms.form2.ec_p.value='1';document.forms.form2.setAttribute('action', 'deptListAction.do');document.forms.form2.setAttribute('method', 'post');document.forms.form2.submit()" >
				<option value="10"  selected="selected">10</option><option value="50" >50</option><option value="100" >100</option>
				</select></td>
					<td><img src="/images/table/separator.gif"  style="border:0"  alt="Separator" /></td>
					<td><a href="javascript:document.forms.form2.ec_eti.value='ec';document.forms.form2.ec_ev.value='xls';document.forms.form2.ec_efn.value='deptList.xls';document.forms.form2.setAttribute('action', 'deptListAction.do');document.forms.form2.setAttribute('method', 'post');document.forms.form2.submit()"><img src="/images/table/xls.gif"  style="border:0"  title="Export Excel"  alt="Excel" /></a></td>
					</tr>
				</table></td>
			</tr>
		</table>
		</td>
	</tr>		
 
	<tr>
		<td class="tableHeader" >选择</td>
		<td class="tableHeader" >部门编号</td>
		<td class="tableHeader" >部门全称</td>
		<td class="tableHeader" >上级部门</td>
		<td class="tableHeader" >部门描述</td>
		<td class="tableHeader" >部门级别</td>
		<td class="tableHeader" >状态</td>
	</tr>
	</thead>
	<tbody class="tableBody" >
	<tr class="odd"  onmouseover="this.className='highlight'"  onmouseout="this.className='odd'" >
		<td>  
	 			<input type="checkbox" name="id" dataType="单选按钮" dispName="组织机构" minSelect="1"  value="0"/>
	 		</td>
		<td>
				<a href="#">0</a>
			</td>
		<td>组织机构</td>
		<td>&#160;</td>
		<td>root</td>
		<td>&#160;</td>
		<td>启用</td>
	</tr>
	<tr class="even"  onmouseover="this.className='highlight'"  onmouseout="this.className='even'" >
		<td>  
	 			<input type="checkbox" name="id" dataType="单选按钮" dispName="组织机构" minSelect="1"  value="0001"/>
	 		</td>
		<td>
				<a href="#">0001</a>
			</td>
		<td>杰信商贸</td>
		<td>&#160;</td>
		<td>组织机构</td>
		<td>&#160;</td>
		<td>启用</td>
	</tr>
	<tr class="odd"  onmouseover="this.className='highlight'"  onmouseout="this.className='odd'" >
		<td>  
	 			<input type="checkbox" name="id" dataType="单选按钮" dispName="组织机构" minSelect="1"  value="0001001"/>
	 		</td>
		<td>
				<a href="#">0001001</a>
			</td>
		<td>开发部</td>
		<td>杰信商贸</td>
		<td>&#160;</td>
		<td>&#160;</td>
		<td>启用</td>
	</tr>
	<tr class="even"  onmouseover="this.className='highlight'"  onmouseout="this.className='even'" >
		<td>  
	 			<input type="checkbox" name="id" dataType="单选按钮" dispName="组织机构" minSelect="1"  value="0001002"/>
	 		</td>
		<td>
				<a href="#">0001002</a>
			</td>
		<td>销售部</td>
		<td>杰信商贸</td>
		<td>&#160;</td>
		<td>&#160;</td>
		<td>启用</td>
	</tr>
	<tr class="odd"  onmouseover="this.className='highlight'"  onmouseout="this.className='odd'" >
		<td>  
	 			<input type="checkbox" name="id" dataType="单选按钮" dispName="组织机构" minSelect="1"  value="0001003"/>
	 		</td>
		<td>
				<a href="#">0001003</a>
			</td>
		<td>船务部</td>
		<td>杰信商贸</td>
		<td>&#160;</td>
		<td>&#160;</td>
		<td>启用</td>
	</tr>
	<tr class="even"  onmouseover="this.className='highlight'"  onmouseout="this.className='even'" >
		<td>  
	 			<input type="checkbox" name="id" dataType="单选按钮" dispName="组织机构" minSelect="1"  value="0001004"/>
	 		</td>
		<td>
				<a href="#">0001004</a>
			</td>
		<td>财务部</td>
		<td>杰信商贸</td>
		<td>&#160;</td>
		<td>&#160;</td>
		<td>启用</td>
	</tr>
	</tbody>
</table>
</div>
 
</div>
</form>
</body>
</html>

