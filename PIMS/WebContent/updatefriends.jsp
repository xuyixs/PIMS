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
		<title>更新通讯录信息</title>
		<script type="text/javascript" src="validate/validateaddfriendsjsp.js"></script>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
	</head>

	<body>

		<div class="place">
			<span>位置：</span>
			<ul class="placeul">
				<li>
					<a href="#">首页</a>
				</li>
				<li>
					<a href="#">表单</a>
				</li>
			</ul>
		</div>

		<div class="formbody">

			<div class="formtitle">
				<span>用户基本信息</span>
			</div>
			<form action="UpdateFriendsServlet" method="post" onsubmit="return validateAll()">
				<ul class="forminfo">
					<li>
						<input name="friendsId" type="hidden" class="dfinput"
							value="${friends.friendsId}" maxlength="6" />
					</li>
					<li>
						<label>
							好友昵称：
						</label>
						<input name="userName" type="text" class="dfinput"
							value="${friends.userName}"  id="userName" onblur="clearUserNameMsg()" maxlength="20"/>
							<i><span id="pleaseInputUserName"
							style="background: url(images/error.png) no-repeat left center; color: red; display: none; padding-left: 20px; font-size: 12px;">请您输入好友昵称！</span></i>
					</li>
					<li>
						<label>
							用户姓名：
						</label>
						<input name="name" type="text" class="dfinput"
							value="${friends.name}" id="name" onblur="clearNameMsg()" maxlength="20"/>
						<i><span id="pleaseInputName"
							style="background: url(images/error.png) no-repeat left center; color: red; display: none; padding-left: 20px; font-size: 12px;">请您输入用户姓名！</span></i>
					</li>
					<li>
						<label>
							手机号码：
						</label>
						<input name="phone" type="text" class="dfinput"
							value="${friends.phone}" maxlength="11" id="phone"
							onblur="clearPhoneMsg()"/>
						<i><span id="pleaseInputPhone"
							style="background: url(images/error.png) no-repeat left center; color: red; display: none; padding-left: 20px; font-size: 12px;">请您输入手机号码！</span></i>
					</li>
					<li>
						<label>
							电子邮件：
						</label>
						<input name="email" type="text" class="dfinput"
							value="${friends.email}" maxlength="20" id="email"
							onblur="clearEmailMsg()"/>
						<i><span id="pleaseInputEmail"
							style="background: url(images/error.png) no-repeat left center; color: red; display: none; padding-left: 20px; font-size: 12px;">请您输入电子邮件！</span></i>
					</li>
					<li>
						<label>
							工作地点：
						</label>
						<input name="workSpace" type="text" class="dfinput"
							value="${friends.workSpace}" maxlength="50" id="workSpace"
							onblur="clearWorkPlaceMsg()"/>
						<i><span id="pleaseInputWorkPlace"
							style="background: url(images/error.png) no-repeat left center; color: red; display: none; padding-left: 20px; font-size: 12px;">请您输入工作地点！</span></i>
					</li>
					<li>
						<label>
							家庭住址：
						</label>
						<input name="place" type="text" class="dfinput"
							value="${friends.place}" maxlength="50" id="place"
							onblur="clearPlaceMsg()"/>
						<i><span id="pleaseInputPlace"
							style="background: url(images/error.png) no-repeat left center; color: red; display: none; padding-left: 20px; font-size: 12px;">请您输入家庭住址！</span></i>
					</li>
					<li>
						<label>
							腾讯QQ：
						</label>
						<input name="qq" type="text" class="dfinput"
							value="${friends.qq}" maxlength="15" id="qq" onblur="clearQqMsg()"/>
						<i><span id="pleaseInputQq"
							style="background: url(images/error.png) no-repeat left center; color: red; display: none; padding-left: 20px; font-size: 12px;">请您输入QQ！</span></i>
					
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
