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
		<title>添加通讯录好友</title>
		<script type="text/javascript" src="validate/validateaddfriendsjsp.js"></script>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
	</head>

	<body>

		<div class="place">
			<span>位置：</span>
			<ul class="placeul">
				<li>
					<a href="FriendsServlet">通讯录管理</a>
				</li>
				<li>
					<a href="addfriends.jsp">添加通讯录好友</a>
				</li>
			</ul>
		</div>

		<div class="formbody">

			<div class="formtitle">
				<span>通讯录好友基本信息</span>
			</div>
			<form action="AddFriendsServlet" method="post" onsubmit="return validateAll()">
				<ul class="forminfo">
					<li>
						<input name="userId" type="hidden" class="dfinput"
							value="${accountDB.userId}" maxlength="6" />
					</li>
					<li>
						<label>
							好友昵称：
						</label>
						<input name="userName" type="text" class="dfinput" id="userName" onblur="clearUserNameMsg()" maxlength="20"/>
						<i><span id="pleaseInputUserName"
							style="background: url(images/error.png) no-repeat left center; color: red; display:none; padding-left: 20px; font-size: 12px;">请您输入好友昵称！</span>
						</i>
					</li>
					<li>
						<label>
							好友姓名：
						</label>
						<input name="name" type="text" class="dfinput" id="name"
							onblur="clearNameMsg()"
							value="${accountDB.name}" maxlength="12"/>
						<i><span id="pleaseInputName"
							style="background: url(images/error.png) no-repeat left center; color: red; display: none; padding-left: 20px; font-size: 12px;">请您输入好友姓名！</span>
						</i>
					</li>
					<li>
						<label>
							手机号码：
						</label>
						<input name="phone" type="text" class="dfinput" id="phone"
						    onblur="clearPhoneMsg()"
							value="${accountDB.edu}" maxlength="11" />
						<i><span id="pleaseInputPhone"
							style="background: url(images/error.png) no-repeat left center; color: red; display: none; padding-left: 20px; font-size: 12px;">请您输入手机号码！</span>
						</i>
					</li>
					<li>
						<label>
							电子邮件：
						</label>
						<input name="email" type="text" class="dfinput" id="email"
						 	onblur="clearEmailMsg()"
							value="${accountDB.works}" maxlength="20" />
						<i><span id="pleaseInputEmail"
							style="background: url(images/error.png) no-repeat left center; color: red; display: none; padding-left: 20px; font-size: 12px;">请您输入电子邮件！</span>
						</i>
					</li>
					<li>
						<label>
							工作地点：
						</label>
						<input name="workSpace" type="text" class="dfinput" id="workSpace"
							onblur="clearWorkPlaceMsg()"	
							value="${accountDB.phone}" maxlength="50" />
						<i><span id="pleaseInputWorkSpace"
							style="background: url(images/error.png) no-repeat left center; color: red; display: none; padding-left: 20px; font-size: 12px;">请您输入工作地点！</span>
						</i>
					</li>
					<li>
						<label>
							家庭住址：
						</label>
						<input name="place" type="text" class="dfinput" id="place"
							onblur="clearPlaceMsg()"	
							value="${accountDB.email}" maxlength="50"/>
						<i><span id="pleaseInputPlace"
							style="background: url(images/error.png) no-repeat left center; color: red; display: none; padding-left: 20px; font-size: 12px;">请您输入家庭住址！</span>
						</i>
					</li>
					<li>
						<label>
							腾讯QQ：
						</label>
						<input name="qq" type="text" class="dfinput" id="qq"
							onblur="clearQqMsg()"	
							value="${accountDB.nation}" maxlength="10"/>
						<i><span id="pleaseInputQq"
							style="background: url(images/error.png) no-repeat left center; color: red; display: none; padding-left: 20px; font-size: 12px;">请您输入腾讯QQ！</span>
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
