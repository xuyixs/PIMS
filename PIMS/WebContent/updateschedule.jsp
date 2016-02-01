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
		<title>更新日程信息</title>
		<script style="text/javaScript" src="validate/validateupdateschedulejsp.js"></script>
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
					<a href="#">修改日程信息</a>
				</li>
			</ul>
		</div>

		<div class="formbody">

			<div class="formtitle">
				<span>日程基本信息</span>
			</div>
			<form action="UpdateScheduleServlet" method="post" onsubmit="return validateAll()">
				<ul class="forminfo">
					<li>
						<input name="scheduleId" type="hidden" class="dfinput"
							value="${schedule.scheduleId}" />
					</li>
					<li>
						<label>
							日程标题：
						</label>
						<input name="userName" type="text" class="dfinput" id="userName" 
							value="${schedule.userName}" onblur="clearUserNameMsg()" maxlength="10"/>
						<i><span id="pleaseInputUserName"
							style="background: url(images/error.png) no-repeat left center; color: red; display: none; padding-left: 20px; font-size: 12px;">请您输入日程标题！</span>
						</i>
					</li>
					<li>
						<label>
							日程时间：
						</label>
						<input name="date" type="text" class="dfinput" id="date"
							value="${schedule.date}" maxlength="30" onblur="clearDateMsg()" />
						<i><span id="pleaseInputDate"
							style="background: url(images/error.png) no-repeat left center; color: red; display: none; padding-left: 20px; font-size: 12px;">请您输入日程时间！</span>
						</i>
					</li>
					<li>
						<label>
							日程内容：
						</label>
						<textarea name="thing" cols="" rows="" class="textinput" id="thing">${schedule.thing}</textarea>
						<i><span id="pleaseInputThing"
							style="background: url(images/error.png) no-repeat left center; color: red; display: none; padding-left: 20px; font-size: 12px;">请您输入日程内容！</span>
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
