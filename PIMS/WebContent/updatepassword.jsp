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
		<title>修改密码</title>
		<script type="text/javaScript"
			src="validate/validateupdatepasswordjsp.js"></script>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
	</head>

	<body>

		<div class="place">
			<span>位置：</span>
			<ul class="placeul">
				<li>
					<a href="ScheduleServlet">管理信息</a>
				</li>
				<li>
					<a href="addschedule.jsp">密码修改</a>
				</li>
			</ul>
		</div>

		<div class="formbody">
			<div class="formtitle">
				<span>基本信息</span>
			</div>
			<form action="DoPassWordUpdate" method="post"
				onsubmit="return validateAll()">
				<ul class="forminfo">
					<li>
						<input name="userId" type="hidden" value="${accountUpdate.userId}" />
						<input type="hidden" id="hiddenPwd"
							value="${accountUpdate.passWord }" />
					</li>
					<li>
						<label>
							用户名：
						</label>
						<input name="userName" type="hidden"
							value="${accountUpdate.userName}" />
						<i style="position: relative; top: 10px;">
							${accountUpdate.userName} </i>
					</li>
					<li>
						<label>
							新密码：
						</label>
						<input name="passWord2" type="password" class="dfinput" id="passWord2"
							onblur="clearPassWord2Msg()" maxlength="20" />
						<i><span id="pleaseInputPassWord2"
							style="background: url(images/error.png) no-repeat left center; color: red; display: none; padding-left: 20px; font-size: 12px;">请您输入新密码！</span>
						</i>
					</li>
					<li>
						<label>
							重复密码：
						</label>
						<input name="passWordRepeat" type="password" class="dfinput" id="passWordRepeat"
							onblur="clearPassWordRepeatMsg()" maxlength="20" />
						<i><span id="pleaseInputPassWordRepeat"
							style="background: url(images/error.png) no-repeat left center; color: red; display: none; padding-left: 20px; font-size: 12px;">请您重新输入新密码！</span>
						</i>
						<i><span id="PassWordRepeat"
							style="background: url(images/error.png) no-repeat left center; color: red; display: none; padding-left: 20px; font-size: 12px;">两次输入不一致！</span>
						</i>
					</li>
					<li>
						<label>
							&nbsp;
						</label>
						<input name="" type="submit" class="btn" value="确认修改" />
					</li>
				</ul>
			</form>
		</div>
	</body>

</html>
