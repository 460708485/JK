   
	//建立xmlHttp对象,先判断是什么浏览器;使其支持ie,等浏览器
	function createRequestObject() {
		var ro;
		var browser = navigator.appName;
		if(browser == "Microsoft Internet Explorer"){
			ro = new ActiveXObject("Microsoft.XMLHTTP");
		}else{
			ro = new XMLHttpRequest();
		}

		return ro;
	}

	var http = createRequestObject();

	/* 调用查询 action -start */
	function sndReqFind( p_mainId ) {
		//发送数据
		var paras = "mainId="+p_mainId;
		document.getElementById("mainId").value = p_mainId;		//设置隐藏域传递选择的mainId
			
		//alert(paras);
		http.open('post', 'sysCodeAction_ajaxget?'+paras);
		http.onreadystatechange = handleResponseFind;			//回调函数
		http.send(null);
	}

	function handleResponseFind() {
		if(http.readyState == 4){
			var response = http.responseText;
			//document.getElementById("div_Info").innerHTML = response;
			
			clearTRRecord('del','resultTable',1);		//先清除之前的数据
			eval(response);								//动态执行js脚本
		}
	}

	/* 调用查询 action -end */
