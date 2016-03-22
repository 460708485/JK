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
	if(serviceName=="删除" ||serviceName=="查看"||serviceName=="修改"){
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
    	if(serviceName=="删除" || serviceName=="修改"||serviceName=="查看"){
    		return checkIsExist("id");
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
<li id="view"><a href="roleView.jsp">查看</a></li>
<li id="new"><a href="roleCreate.jsp">新建</a></li>
<li id="update"><a href="roleUpdate.jsp">修改</a></li>
<li id="delete"><a href="#">删除</a></li>
<li id="search"><a href="roleSearch.jsp">查询</a></li>
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
        <h2>角色列表</h2> 
    </div> 
    </div>
    </div>
<div>
 
	
		

<div class="eXtremeTable" >
<table id="ec_table"  border="0"  cellspacing="0"  cellpadding="0"  class="tableRegion"  width="98%" >
	<thead>
	<tr style="padding: 0px;" >
		<td colspan="3" >
		<table border="0"  cellpadding="0"  cellspacing="0"  width="100%" >
			<tr>
				<td class="statusBar" >找到12 条记录, 显示 1 到 10 </td>
				<td class="compactToolbar"  align="right" >
				<table border="0"  cellpadding="1"  cellspacing="2" >
					<tr>
					<td><img src="/images/table/firstPageDisabled.gif"  style="border:0"  alt="第一页" /></td>
					<td><img src="/images/table/prevPageDisabled.gif"  style="border:0"  alt="上一页" /></td>
					<td><a href="javascript:document.forms.form2.ec_eti.value='';document.forms.form2.ec_p.value='2';document.forms.form2.setAttribute('action', 'roleListAction.do');document.forms.form2.setAttribute('method', 'post');document.forms.form2.submit()"><img src="/images/table/nextPage.gif"  style="border:0"  title="下一页"  alt="下一页" /></a></td>
					<td><a href="javascript:document.forms.form2.ec_eti.value='';document.forms.form2.ec_p.value='2';document.forms.form2.setAttribute('action', 'roleListAction.do');document.forms.form2.setAttribute('method', 'post');document.forms.form2.submit()"><img src="/images/table/lastPage.gif"  style="border:0"  title="最后页"  alt="最后页" /></a></td>
					<td><img src="/images/table/separator.gif"  style="border:0"  alt="Separator" /></td>
					<td><select name="ec_rd"  onchange="javascript:document.forms.form2.ec_eti.value='';document.forms.form2.ec_crd.value=this.options[this.selectedIndex].value;document.forms.form2.ec_p.value='1';document.forms.form2.setAttribute('action', 'roleListAction.do');document.forms.form2.setAttribute('method', 'post');document.forms.form2.submit()" >
				<option value="10"  selected="selected">10</option><option value="50" >50</option><option value="100" >100</option>
				</select></td>
					<td><img src="/images/table/separator.gif"  style="border:0"  alt="Separator" /></td>
					<td><a href="javascript:document.forms.form2.ec_eti.value='ec';document.forms.form2.ec_ev.value='xls';document.forms.form2.ec_efn.value='presidents.xls';document.forms.form2.setAttribute('action', 'roleListAction.do');document.forms.form2.setAttribute('method', 'post');document.forms.form2.submit()"><img src="/images/table/xls.gif"  style="border:0"  title="Export Excel"  alt="Excel" /></a></td>
					</tr>
				</table></td>
			</tr>
		</table>
		</td>
	</tr>		
 
	<tr>
		<td class="tableHeader" >选择</td>
		<td class="tableHeader" >角色名称</td>
		<td class="tableHeader" >角色描述</td>
	</tr>
	</thead>
	<tbody class="tableBody" >
	<tr class="odd"  onmouseover="this.className='highlight'"  onmouseout="this.className='odd'" >
		<td>  
	 			<input type="checkbox" class="input" name="id" dataType="复选框" dispName="角色管理" minSelect="1"  value="ff808081307f4ffc01307f596f2a0018"/>
	 		</td>
		<td>
				<a href="roleView.jsp">管理员</a>	
			</td>
		<td>主要职责为创建部门,创建角色,创建用户,分配权限</td>
	</tr>
	<tr class="even"  onmouseover="this.className='highlight'"  onmouseout="this.className='even'" >
		<td>  
	 			<input type="checkbox" class="input" name="id" dataType="复选框" dispName="角色管理" minSelect="1"  value="402886473192cf370131939706b70014"/>
	 		</td>
		<td>
				<a href="roleView.jsp">领导察看</a>	
			</td>
		<td>管理层察看各项记录</td>
	</tr>
	<tr class="odd"  onmouseover="this.className='highlight'"  onmouseout="this.className='odd'" >
		<td>  
	 			<input type="checkbox" class="input" name="id" dataType="复选框" dispName="角色管理" minSelect="1"  value="402886473192cf370131939859b40017"/>
	 		</td>
		<td>
				<a href="roleView.jsp">信息维护</a>	
			</td>
		<td>维护基础代码、厂家信息、产品信息</td>
	</tr>
	<tr class="even"  onmouseover="this.className='highlight'"  onmouseout="this.className='even'" >
		<td>  
	 			<input type="checkbox" class="input" name="id" dataType="复选框" dispName="角色管理" minSelect="1"  value="40288647319cc92901319ced2a1500bf"/>
	 		</td>
		<td>
				<a href="roleView.jsp">基础功能</a>	
			</td>
		<td>&#160;</td>
	</tr>
	<tr class="odd"  onmouseover="this.className='highlight'"  onmouseout="this.className='odd'" >
		<td>  
	 			<input type="checkbox" class="input" name="id" dataType="复选框" dispName="角色管理" minSelect="1"  value="ff808081319eb4980131a183d4ae00f3"/>
	 		</td>
		<td>
				<a href="roleView.jsp">综合查询</a>	
			</td>
		<td>&#160;</td>
	</tr>
	<tr class="even"  onmouseover="this.className='highlight'"  onmouseout="this.className='even'" >
		<td>  
	 			<input type="checkbox" class="input" name="id" dataType="复选框" dispName="角色管理" minSelect="1"  value="402886473192cf370131939c11da001a"/>
	 		</td>
		<td>
				<a href="roleView.jsp">合同管理</a>	
			</td>
		<td>&#160;</td>
	</tr>
	<tr class="odd"  onmouseover="this.className='highlight'"  onmouseout="this.className='odd'" >
		<td>  
	 			<input type="checkbox" class="input" name="id" dataType="复选框" dispName="角色管理" minSelect="1"  value="402886473192cf370131939c4379001d"/>
	 		</td>
		<td>
				<a href="roleView.jsp">合同归档</a>	
			</td>
		<td>&#160;</td>
	</tr>
	<tr class="even"  onmouseover="this.className='highlight'"  onmouseout="this.className='even'" >
		<td>  
	 			<input type="checkbox" class="input" name="id" dataType="复选框" dispName="角色管理" minSelect="1"  value="402886473192cf370131939cc4de0020"/>
	 		</td>
		<td>
				<a href="roleView.jsp">报运</a>	
			</td>
		<td>&#160;</td>
	</tr>
	<tr class="odd"  onmouseover="this.className='highlight'"  onmouseout="this.className='odd'" >
		<td>  
	 			<input type="checkbox" class="input" name="id" dataType="复选框" dispName="角色管理" minSelect="1"  value="402886473192cf370131939d5ecd0023"/>
	 		</td>
		<td>
				<a href="roleView.jsp">装箱</a>	
			</td>
		<td>&#160;</td>
	</tr>
	<tr class="even"  onmouseover="this.className='highlight'"  onmouseout="this.className='even'" >
		<td>  
	 			<input type="checkbox" class="input" name="id" dataType="复选框" dispName="角色管理" minSelect="1"  value="402886473192cf370131939daf4e0026"/>
	 		</td>
		<td>
				<a href="roleView.jsp">委托</a>	
			</td>
		<td>&#160;</td>
	</tr>
	</tbody>
</table>
</div>
 
 
			<div style="float:left;left:5px;top:138px;font-size:12px;color:gray;font-weight:normal;padding:12px;text-align:left;">
			       <div style="float:left;"><img style="margin:0 5px 0 0;" src="../../skin/default/images/notice.gif" /></div>
			       <div style="float:left;padding-left:10px;">角色按名称排序, 角色命名规则: 模块名-职务-功能, 例如: 工作日志-部门经理-检查; 工作日志-专责-填写上报。</div>
			</div>
 
 
</div>
</form>
</body>
</html>

