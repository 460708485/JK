<%@ page language="java" pageEncoding="UTF-8"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>陕西杰信商务综合管理平台</title>
	<link href="skin/default/css/login.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript" src="js/common.js"></script>
</head>

<body>
<form id="login_main" method="post">
<div id="warpbox">
	<div class="main">
		 <div class="zck">
		  <div class="zc">
				<div class="zc_line">用户名：
				<input type="text" value="" name="userName" id="userName"
				 onkeyup="showGs(event)"
				 onFocus="this.select();"
				 autocomplete="off" title="请您输入用户名"/><div id="ts" style="z-index:1;"></div></div>
			    <div class="zc_line">密　码：
				<input type="password" value="" name="password" id="password"
				 onfocus="$('#ts').css('display','none');this.select();"
				 onKeyDown="javascript:if(event.keyCode==13){ submitFind(); }"
				 title="请您输入密码"/></div>
		  </div>
			<div class="dl">
				<input  class="dl_img" value="" type="button" onclick="formSubmit('/home/fmain.jsp','_self');"
				  onmouseover="this.style.background='url(skin/default/images/login/dl_h.jpg) no-repeat'" 
				  onmouseout="this.style.background='url(skin/default/images/login/dl_a.jpg) no-repeat'"
				/>
				<input class="reset_img" value="" type="reset"   
				  onmouseover="this.style.background='url(skin/default/images/login/reset_h.jpg) no-repeat'" 
				  onmouseout="this.style.background='url(skin/default/images/login/reset_a.jpg) no-repeat'"
				/>
			</div>
		</div>
		<div class="bqxx" style="text-align:right;margin-top:0px;">
		<a href="#">系统帮助</a> | <a href="#" onclick="bookmarkit();">加入收藏</a>
	    </div>

	  	<div class="mirro"></div>
			<logic:notEmpty name="loginFailed">
				<c:if test="${loginFailed==1}">
					<c:set var="errorInfo" value="用户名或密码错误, 请重新输入!"/>
				</c:if>
				<c:if test="${loginFailed==2}">
					<c:set var="errorInfo" value="用户名不存在, 请重新输入!"/>
				</c:if>
				<div class="erro" id="erro">
					<div class="erro_intro">
					${errorInfo}
					</div>
				</div>
			</logic:notEmpty>
		</div>
</div>
</form>
<script type="text/JavaScript">
	document.getElementById('login_main').userName.focus();
</script>

</body>
</html>


