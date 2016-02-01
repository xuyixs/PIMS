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
		<title>添加日程信息</title>
		<script type="text/javaScript" src="validate/validateaddschedulejsp.js"></script>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
	</head>

	<body>

		<div class="place">
			<span>位置：</span>
			<ul class="placeul">
				<li>
					<a href="ScheduleServlet">日程管理</a>
				</li>
				<li>
					<a href="addschedule.jsp">添加日程信息</a>
				</li>
			</ul>
		</div>

		<div class="formbody">
			<div class="formtitle">
				<span>日程基本信息</span>
			</div>
			<form action="AddScheduleServlet" method="post" onsubmit="return validateAll()">
				<ul class="forminfo">
					<li>
						<input name="userId" type="hidden" class="dfinput"
							value="${accountDB.userId}" maxlength="6" />
					</li>
					<li>
						<label>
							日程标题：
						</label>
						<input name="userName" type="text" class="dfinput" id="userName" onblur="clearUserNameMsg()" maxlength="10"/>
						<i><span id="pleaseInputUserName"
							style="background: url(images/error.png) no-repeat left center; color: red; display: none; padding-left: 20px; font-size: 12px;">请您输入日程标题！</span>
						</i>
					</li>
					<li>
						<label>
							日程内容：
						</label>
						<textarea name="thing" cols="" rows="" class="textinput" id="thing"></textarea>
						<i><span id="pleaseInputThing"
							style="background: url(images/error.png) no-repeat left center; color: red; display: none; padding-left: 20px; font-size: 12px;">请您输入日程内容！</span>
						</i>
					</li>
					<li>
						<label>
							&nbsp;
						</label>
						<input name="" type="submit" class="btn" value="确认添加" />
					</li>
				</ul>
			</form>
		</div>
	</body>

</html>
