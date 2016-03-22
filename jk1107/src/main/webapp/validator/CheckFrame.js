var PageLoading = false;
//正常的提交

function _nuSubmit(url, btnName){
	_Submit(url, null, btnName);			//by tony 2013-12-29 默认form[0]，方便调用
}

function _Submit(target, formName, btnName) {
	
	if (PageLoading) {
		alert("页面正在加载中，请等待...");
		return ;
	} else {
		try {
			if (target && target=="exportAction.do") {
				//下载页面，下载的同时可以进行其它的提交操作
				PageLoading = false;
			} else {
				PageLoading = true;
			}
		} catch (e) {
			PageLoading = true;
		}
	}
	//alert("target="+target);
	try {
		if (!target || target == "") {
			alert("没有定义要执行的内容");
			PageLoading = false;
			return ;
		}
		var aForm;
		if (formName && formName != "") {
			aForm = eval(formName);
		} else {
			aForm = document.forms[0];
		}
		if (!btnName) {
			btnName = "";
		}			
		if (aForm) {
			aForm.action = target;
			aForm.method = "post";
			try {
				
				if (preSubmit(btnName)==false) {
					PageLoading = false;
					return ;
				}
				
				exportedReset();
			} catch (e) {
				//alert(e);
			}
			if(beforeSubmit){
				
				beforeSubmit(target, formName, btnName);	
			}
			aForm.submit();
			if(afterSubmit){
				afterSubmit(target, formName, btnName);	
			}			
		} else {
			if (formName && formName != "") {
				alert("页面中缺少Form：" + formName);
			} else {
				alert("页面中缺少Form：");
			}
			PageLoading = false;
		}
	} catch (e) {
		PageLoading = false;
//		alert(e);
	}
}

//检验数据类型是否正确
function _CheckValidate(CheckElement) {
	try {
		if (parent.Func) {
			parent.Func.checkValidate(CheckElement);
		} else if (parent.checkValidate) {
			parent.checkValidate(CheckElement);
		} else if (checkValidate) {
			checkValidate(CheckElement);
		}
	} catch (e){}
}
//检验整个表单数据类型是否正确（目前限制document只能够有一个表单）
function _CheckAll(ifCheckNull,serviceName, formId) {

	try {
		var ErrMessage = "";		
		var op_form	= document.forms[0].elements;
		//alert(formId);
		if(formId){
			op_form = document.getElementById(formId);
		}
		ErrMessage = CheckAll(ifCheckNull, op_form.elements);

		try {			
			var userErr = user_check(ifCheckNull);			
			if (userErr) {
				if (ErrMessage) {
					ErrMessage += "</br>";
				}
				ErrMessage += userErr;
			}			
		} catch (e){}
		try {		
			var tempErr = preCheck(serviceName);
			if(tempErr){
				
				ErrMessage += "</br>" + tempErr;			
			}	
		} catch (e) {}	
		if (ErrMessage != "") {
			showError(ErrMessage);
			return false;
		} else {
			closeError();
			return true;
		}
	} catch (e){}
}

//检验整个表单数据类型是否正确（目前限制document只能够有一个表单）
function _CheckAllType(typeName,ifCheckNull) {
	try {
		var ErrMessage = "";

		ErrMessage = CheckAllType(typeName,ifCheckNull);		
		try {			
			var userErr = user_check(ifCheckNull);			
			if (userErr) {
				if (ErrMessage) {
					ErrMessage += "</br>";
				}
				ErrMessage += userErr;
			}			
		} catch (e){}
		try {		
			var tempErr = preCheck(serviceName);
			if(tempErr){
				
				ErrMessage += "</br>" + tempErr;			
			}	
		} catch (e) {}	
		if (ErrMessage != "") {
			showError(ErrMessage);
			return false;
		} else {
			closeError();
			return true;
		}
	} catch (e){}
}
