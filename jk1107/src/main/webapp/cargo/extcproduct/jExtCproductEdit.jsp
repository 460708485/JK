<%@ page language="java" pageEncoding="UTF-8"%>

<!-- 告诉浏览器本网页符合XHTML1.0过渡型DOCTYPE -->
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="gbk">

	<head>
		<title></title>

		<!-- 调用样式表 -->
		<link rel="stylesheet" rev="stylesheet" type="text/css" href="../../skin/default/css/default.css" media="all" />
		<script type="text/javascript" src="../../js/tabledo.js"></script>

		<link href="/plugin/jquery_upload/css/uploadify.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="/components/jquery-ui/jquery-1.2.6.js"></script>
		<script type="text/javascript" src="/plugin/jquery_upload/js/swfobject.js"></script>
		<script type="text/javascript" src="/plugin/jquery_upload/js/jquery.uploadify.v2.1.4.js"></script>

		<script language="JavaScript">
   		
  	function preSubmit(serviceName) {
        if(serviceName=="返回"){
            return true;
        } else if (serviceName=="确定"||serviceName=="暂存"){
			doLastTR("resultTable");	//如果最后一行为空在删除,这样就不会因_CheckAll监测最后一行为空而提示未填写了
			return _CheckAll(true,serviceName);
        }
    }
	
    $().ready(function(){
		${mrecordData}
    });
        
        function setBox( id, whichno ){
            $("#"+id).uploadify({
                'auto'           : false,
                'fileDesc':'请选择jpg/jpeg/gif/png文件',
                'fileExt':'*.jpg;*.jpeg;*.gif;*.png',
                'height'         : 16,   
             	'width'          : 16,
                'buttonImg'      : '/images/base-info.gif',
                onComplete       : function (event, queueID, fileObj, response, data){ 
                  setTxtImage( whichno,response  );
                  $('<li></li>').appendTo('.files').text(response); }
            });
        }        
        function setTxtImage( no, fileName ){
			var o = document.getElementsByName("txtImage");
			o[no].value = fileName;
        }


	/* 实现表格序号列自动调整 created by tony 20081219 */
	function sortnoTR(){
		sortno('resultTable', 2, 1);
	}
	function sortTypeTable(){
		sortno('typeTable', 2, 1);
	}
	
	/* 根据下拉框选择的值，制定对应类型的默认文字 */
	function setProductRequest( obj ){
		var _productRequest = obj.parentNode.nextSibling.nextSibling.firstChild.firstChild;
		${utProductRequest}
	}
	
	/* 根据下拉框选择的值，制定对应类型的默认文字 */
	function setTypeProductRequest( obj ){
		var _productRequest = obj.parentNode.nextSibling.firstChild.firstChild;
		${utProductRequest}
	}
	
	function addTRRecord(objId, id, contractProductNo, ctype, itemNo, description, productRequest, factory, packingUnit, cnumber, price, productImage) {
		description = description.replaceAll('<br>','\r\n');
		productRequest = productRequest.replaceAll('<br>','\r\n');
		
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
		oTD.innerHTML = "<input class=\"input\" type=\"checkbox\" name=\"del\" value=\""+id+"\"><input type=\"hidden\" name=\"mr_id\" value=\""+id+"\"><input class=\"input\" type=\"hidden\" id=\"mr_changed\" name=\"mr_changed\">";
		oTD = oTR.insertCell(2);
		oTD.innerHTML = "<input class=\"input\" type=\"text\" name=\"orderNo\" readonly size=\"3\" value=\"\">";
		oTD = oTR.insertCell(3);
		oTD.style.width="10%";
			_tmpSelect  = "";
			_tmpSelect += "<select size=\"1\" name=\"contractProductNo\" dataType=\"非空下拉列表\" dispName=\"货号\">";
			_tmpSelect += "<option value=''>--请选择--</option>";
			_tmpSelect += "${contractProductComboList}";
			_tmpSelect += "</select>";
		oTD.innerHTML = _tmpSelect;			
		oTD = oTR.insertCell(4);
		oTD.style.width="10%";
			_tmpSelect  = "";
			_tmpSelect += "<select size=\"1\" name=\"ctype\" onchange=\"setProductRequest(this);\" dataType=\"非空下拉列表\" dispName=\"附件类型\">";
			_tmpSelect += "${extProductTypeComboList}";
			_tmpSelect += "</select>";
		oTD.innerHTML = _tmpSelect;			
		oTD = oTR.insertCell(5);
		oTD.style.width="20%";
		oTD.innerHTML = "<span style=\"float:left;\"><textarea id=\"textarea\" name=\"productDesc\" dataType=\"非空字符串\" dispName=\"货物描述\" maxLength=\"600\" onclick=\"interceptTextarea(this,document.body.offsetWidth / 3.6)\" onblur=\"interceptTextarea_blur(this);setTRUpdateFlag(this);\" class=\"textarea_normal\">"+description+"</textarea></span>";
		oTD = oTR.insertCell(6);
		oTD.style.width="20%";
		oTD.innerHTML = "<span style=\"float:left;\"><textarea id=\"textarea\" name=\"productRequest\" dataType=\"非空字符串\" dispName=\"要求\" maxLength=\"2000\" onclick=\"interceptTextarea(this,document.body.offsetWidth / 3.6)\" onblur=\"interceptTextarea_blur(this);setTRUpdateFlag(this);\" class=\"textarea_normal\">"+productRequest+"</textarea></span>";
		oTD = oTR.insertCell(7);
		oTD.style.width="10%";
			_tmpSelect  = "";
			_tmpSelect += "<select size=\"1\" name=\"factory\" dataType=\"非空下拉列表\" dispName=\"生产厂家\" style=\"width:80px;\">";
			_tmpSelect += "<option value=''>--请选择--</option>";
			_tmpSelect += "${factoryBoxComboList}";
			_tmpSelect += "</select>";
		oTD.innerHTML = _tmpSelect;
		oTD = oTR.insertCell(8);
		oTD.style.width="10%";
			_tmpSelect  = "";
			_tmpSelect += "<select size=\"1\" name=\"packingUnit\" dataType=\"非空下拉列表\" dispName=\"包装单位\">";
			_tmpSelect += "<option value=''>--请选择--</option>";
			_tmpSelect += "${clPackingUnit}";
			_tmpSelect += "</select>";
		oTD.innerHTML = _tmpSelect;		
		oTD = oTR.insertCell(9);
		oTD.style.width="10%";
		oTD.innerHTML = "<input type=\"text\"  name=\"cnumber\" dataType=\"非空数字\" dispName=\"数量\" size=\"5\" maxLength=\"10\" value=\""+cnumber+"\" onBlur=\"setTRUpdateFlag(this);\">";
		oTD = oTR.insertCell(10);
		oTD.style.width="10%";
		oTD.innerHTML = "<input type=\"text\"  name=\"price\" dataType=\"非空数字\" dispName=\"单价\" size=\"5\" maxLength=\"10\" value=\""+price+"\" onBlur=\"setTRUpdateFlag(this);\">";
		oTD.style.whiteSpace="nowrap";
		oTD = oTR.insertCell(11);
		oTD.innerHTML = "<span><input type=\"file\" name=\"uploadify"+rowLength+"\" id=\"uploadify"+rowLength+"\"/></span><input type=\"hidden\" name=\"txtImage\" id=\"txtImage\" value=\""+productImage+"\"/>&nbsp;<span  style=\"margin-top:-39px;\"><a href=\"javascript:jQuery('#uploadify"+rowLength+"').uploadifyUpload()\">上传</a></span>";
		oTD.style.whiteSpace="nowrap";
		
		tableObj.rows[tableObj.rows.length-1].cells[3].all.contractProductNo.selectedIndex = getComboListIndex("contractProductNo",contractProductNo);
		tableObj.rows[tableObj.rows.length-1].cells[4].all.ctype.selectedIndex = getComboListIndex("ctype",ctype);
		tableObj.rows[tableObj.rows.length-1].cells[7].all.factory.selectedIndex = getComboListIndex("factory",factory);
		tableObj.rows[tableObj.rows.length-1].cells[8].all.packingUnit.selectedIndex = getComboListIndex("packingUnit",packingUnit);

		dragtableinit();	//拖动表格行
		sortnoTR();			//排序号

		setBox( "uploadify"+rowLength, rowLength-1 );
	}
	
	function addTypeRecord(objId, id, ctype, productRequest) {
		productRequest = productRequest.replaceAll('<br>','\r\n');
		
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
		oTD.innerHTML = "<input class=\"input\" type=\"checkbox\" name=\"del\" value=\""+id+"\"><input type=\"hidden\" name=\"mr_id\" value=\""+id+"\"><input class=\"input\" type=\"hidden\" id=\"mr_changed\" name=\"mr_changed\">";
		oTD = oTR.insertCell(2);
		oTD.innerHTML = "<input class=\"input\" type=\"text\" name=\"orderNo\" readonly size=\"3\" value=\"\">";
		oTD = oTR.insertCell(3);
		oTD.style.whiteSpace="nowrap";
			_tmpSelect  = "";
			_tmpSelect += "<select size=\"1\" name=\"ctype\" onchange=\"setTypeProductRequest(this);\" dataType=\"非空下拉列表\" dispName=\"附件类型\">";
			_tmpSelect += "${extProductTypeComboList}";
			_tmpSelect += "</select>";
		oTD.innerHTML = _tmpSelect;			
		oTD = oTR.insertCell(4);
		oTD.style.width="80%";
		oTD.innerHTML = "<span style=\"float:left;\"><textarea id=\"textarea\" name=\"productRequest\" dataType=\"非空字符串\" dispName=\"要求\" maxLength=\"2000\" onclick=\"interceptTextarea(this,document.body.offsetWidth / 3.6)\" onblur=\"interceptTextarea_blur(this);setTRUpdateFlag(this);\" class=\"textarea_normal\">"+productRequest+"</textarea></span>";
		
		tableObj.rows[tableObj.rows.length-1].cells[3].all.ctype.selectedIndex = getComboListIndex("ctype",ctype);

		sortTypeTable();			//排序号
	}

</script>

	</head>

	<body>
		<form>
			<input type="hidden" name="id" value="${id}" />
			<input type="hidden" name="delIds" value="">
			<input type="hidden" name="delTypeIds" value="">

			<div id="menubar">
				<div id="middleMenubar">
					<div id="innerMenubar">
						<div id="navMenubar">
							<ul>
								${pageButton}
								<li id="back"><a href="doContractListAction.do">返回</a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>

			<div class="textbox" id="centerTextbox">
				<div class="textbox-header">
					<div class="textbox-inner-header">
						<div class="textbox-title">
							编辑附件&nbsp;&nbsp; <span style="font-size:12px;color:blue">[ 打印时, 不选择则打印所有附件, 选择将只打印选择的附件。]</span>
								
							<div style="padding: 10px; text-align: left; font-size: 12px;">
								打印样式：
								<input type="radio" name="printStyle" value="1" checked class="input">一个货物
								<input type="radio" name="printStyle" value="2" checked class="input">两个货物
							<div>

						</div>
					</div>
				</div>
			<div>

							<div id="fileQueue"></div>


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
										<td>类型</td>
										<td>货物描述</td>
										<td>要求</td>
										<td>厂家</td>
										<td>单位</td>
										<td>数量</td>
										<td>单价</td>
										<td>照片</td>
									</tr>
								</table>
							</div>

							<div
								style="float: left; left: 5px; top: 138px; font-size: 12px; color: gray; font-weight: normal; padding: 12px; text-align: left;">
								<div style="float: left;">
									<img style="margin: 0 5px 0 0;" src="../skin/default/images/notice.gif" />
								</div>
								<div style="float: left; padding-left: 10px;">
									可以拖动行首,实现记录的位置移动。或者上移、下移按钮,实现记录的位置的上下移动。
								</div>
							</div>

							<div style="float: right; padding: 10px; white-space: nowrap;">
								<button class="b_button" style="MARGIN-RIGHT: 10px"
									onclick="addTRRecord('resultTable','','','','','','','','','','');dragtableinit();sortnoTR();"
									name="add" value="add">
									增加一条
								</button>
								<button class="b_button" style="MARGIN-RIGHT: 10px"
									onclick="delIdsRecord('del');delTRRecord('del','resultTable',1);sortnoTR();"
									name="delone" value="delone">
									删除
								</button>
								<button class="b_button" style="MARGIN-RIGHT: 10px"
									onclick="swapTRRecord('del','resultTable',1,'up');sortnoTR();"
									name="btnSwapUp">
									上移
								</button>
								<button class="b_button" style="MARGIN-RIGHT: 10px"
									onclick="swapTRRecord('del','resultTable',1,'dn');sortnoTR();"
									name="btnSwapDown">
									下移
								</button>
							</div>
						</div>
						<div class="textbox-bottom">
							<div class="textbox-inner-bottom">
								<div class="textbox-go-top">
								</div>
							</div>
						</div>
					</div>
</div>	
</div>				




<div style="padding-top:10px;padding-bottom:30px;width:97%;display:none;">
							<div class="listTablew">
								<table class="commonTable_main" cellSpacing="1" id="typeTable">
									<tr class="rowTitle" align="middle">
										<td width="25" title="可以拖动下面行首,实现记录的位置移动.">
											<img src="../images/drag.gif">
										</td>
										<td width="20">
											<input class="input" type="checkbox" name="ck_delType" onclick="checkGroupBox(this);" />
										</td>
										<td width="33">序号</td>
										<td>类 型</td>
										<td>要 求</td>
									</tr>
								</table>
							</div>	

							<div style="float: right; padding: 10px; white-space: nowrap;">
								<button class="b_button" style="MARGIN-RIGHT: 10px"
									onclick="addTypeRecord('typeTable','','','');sortTypeTable();"
									name="add" value="add">
									增加一条
								</button>
								<button class="b_button" style="MARGIN-RIGHT: 10px"
									onclick="delIdsRecord('delType','typeTable');delTRRecord('del','typeTable',1);sortTypeTable();"
									name="delone" value="delone">
									删除
								</button>
								<button class="b_button" style="MARGIN-RIGHT: 10px"
									onclick="swapTRRecord('delType','typeTable',1,'up');sortTypeTable();"
									name="btnSwapUp">
									上移
								</button>
								<button class="b_button" style="MARGIN-RIGHT: 10px"
									onclick="swapTRRecord('delType','typeTable',1,'dn');sortTypeTable();"
									name="btnSwapDown">
									下移
								</button>
							</div>
</div>
		</form>
	</body>
</html>

