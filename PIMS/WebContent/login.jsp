<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<title>欢迎登录信息管理系统</title>
				<script type="text/javaScript" src="validate/validateloginjsp.js"></script>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script language="JavaScript" src="js/jquery.js"></script>
		<script src="js/cloud.js" type="text/javascript"></script>
		<script language="javascript">
	$( function() {
		$('.loginbox').css( {
			'position' :'absolute',
			'left' :($(window).width() - 692) / 2
		});
		$(window).resize( function() {
			$('.loginbox').css( {
				'position' :'absolute',
				'left' :($(window).width() - 692) / 2
			});
		})
	});

</script>
	</head>
	<body
		style="background-color: #1c77ac; background-image: url(images/light.png); background-repeat: no-repeat; background-position: center top; overflow: hidden;">


		<div id="mainBody">
			<div id="cloud1" class="cloud"></div>
			<div id="cloud2" class="cloud"></div>
		</div>


		<div class="logintop">
			<span>欢迎登录信息管理系统</span>
			<ul>
				<li>
					<a href="regedit.jsp">注册</a>
				</li>
			
			</ul>
		</div>

		<div class="loginbody">

			<span class="systemlogo"></span>
			<div class="loginbox">
				<form action="LoginServlet" method="post"
					onsubmit="return validateAll();">
					<ul>
						<li>
							<input name="userName" type="text" class="loginuser"
								id="userName" 
								onblur="clearUserNameMsg()" />
						</li>
						<li>
							<input name="passWord" type="password" class="loginpwd"
								id="passWord"
								onblur="clearPassWordMsg()" />
						</li>
						<li>
							<input name="" type="submit" class="loginbtn" value="登录" />
							
							<label>
								<a href="regedit.jsp">注册用户</a>
							</label>
						</li>
					</ul>
				</form>
				<span id="pleaseInputUserName"
					style="background: url(images/error.png) no-repeat left center; color: red; display: none; padding-left: 20px; font-size: 12px; position: relative; left: 300px; top: -10px;">请您输入用户名！</span>
				<span id="pleaseInputPassWord"
					style="background: url(images/error.png) no-repeat left center; color: red; display: none; padding-left: 20px; font-size: 12px; position: relative; left: 300px; top: -10px;">请您输入密码！</span>
					<span id="error"
					style="color: red; display: inline; padding-left: 20px; font-size: 12px; position: relative; left: 300px; top: -10px;">${error}</span>
			</div>
		</div>

		<div class="loginbm">
			版权所有 2014.06.11  仅供学习交流，勿用于任何商业用途
		</div>

	</body>
</html>
