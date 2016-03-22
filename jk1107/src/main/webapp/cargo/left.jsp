<%@ page language="java" pageEncoding="UTF-8"%>

<!-- 告诉浏览器本网页符合XHTML1.0过渡型DOCTYPE -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
 
<link rel="stylesheet" rev="stylesheet" type="text/css" href="../../css/extreme/extremecomponents.css" />
<link rel="stylesheet" rev="stylesheet" type="text/css" href="../../css/extreme/extremesite.css" />
<script type="text/javascript" src="../../js/common.js"></script>
 
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title></title>
    <link rel="stylesheet" rev="stylesheet" type="text/css" href="../skin/default/css/default.css" media="all"/>
 
	<script language="javascript" src="../js/common.js"></script>
	<script language="javascript" src="../js/ajax/setFastMenu.js"></script>
	<script language="javascript" src="../js/pngfix_map.js"></script>
	<script type="text/javascript" src="../components/jquery-ui/jquery-1.2.6.js"></script>
	<script type="text/javascript" src="../components/jquery-ui/ui/jquery.ui.all.min.js"></script>
	<script type="text/javascript" src="../skin/default/js/toggle.js"></script>	
</head>
 
<body id="left_frame">
<div class="PositionFrame_black" id="PositionFrame"></div>
 
 
<!-- begin1  -->
<div id="sidebar" class="sidebar">
	<div class="sidebar_t">
		<div class="sidebar_t_l"></div>
		<div class="sidebar_t_c"></div>
		<div class="sidebar_t_r"></div>
	</div>
        <div class="panel">
        <div class="panel_icon"><img src="/skin/default/images/icon/document_into.png" /></div>
        <div class="panel-header">
        <div class="panel-title">货运管理</div>
        <div class="panel-content">
			<ul>
				
					<li><a href="/contract/contractAction_list" target="main" id="aa_1">合同管理</a></li>
				
				
					<li><a href="/export/exportAction_contractlist" target="main" id="aa_1">合同查询</a></li>
					<li><a href="/export/exportAction_list" target="main" id="aa_1">报运管理</a></li>
				
				
					<li><a href="/packinglist/packingListAction_list" target="main" id="aa_1">装箱管理</a></li>
					<li><a href="/contracthis/contractHisAction_list" target="main" id="aa_1">历史合同查询</a></li>
				
				
				
			</ul>
        </div>
        </div>
    </div>
    <div class="sidebar_t">
		<div class="sidebar_b_l"></div>
		<div class="sidebar_t_c"></div>
		<div class="sidebar_b_r"></div>
	</div>  
</div>	  
<!-- end1 -->
 

<div id="sidebar" class="sidebar">	
	<div class="sidebar_t">
		<div class="sidebar_t_l"></div>
		<div class="sidebar_t_c"></div>
		<div class="sidebar_t_r"></div>
	</div>
 	    <div class="panel">
	        <div class="panel_icon"><img src="/skin/default/images/icon/cubes.png" /></div>
	        <div class="panel-header">
		        <div class="panel-title">统计报表</div>
		        
		        <div class="panel-content">
					<ul>
						<li>
							<a href="../run/sysStatAction_factorySale" target="main" id="aa_1">厂家销售情况统计</a>
						</li>
						<li>
							<a href="../run/sysStatAction_productSale" target="main" id="aa_1">产品销售排行</a>
						</li>
						<li>
							<a href="../run/sysStatAction_onlineinfo" target="main" id="aa_1">系统访问压力图</a>
						</li>
					</ul>
		        </div>
	        </div>
	    </div>
	 <div class="sidebar_t">
		<div class="sidebar_b_l"></div>
		<div class="sidebar_t_c"></div>
		<div class="sidebar_b_r"></div>
	</div>    
</div>
 
 
	<link rel="stylesheet" rev="stylesheet" type="text/css" href="/plugin/extend_logo/extend_logo.css" media="all"/>
	<script language="javascript" src="/plugin/extend_logo/extend_logo.js"></script>
</body>
</html>
