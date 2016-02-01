<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
		<title>无标题文档</title>
		<script type="text/javaScript" src="validate/validateupdateuserjsp.js"></script>
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
			<form action="UpdateUserServlet" method="post"
				onsubmit="return validateAll()">
				<ul class="forminfo">
					<li>
						<input name="userId" type="hidden" class="dfinput"
							value="${accountDB.userId}" maxlength="6" />
					</li>
					<li>
						<label>
							登录名称：
						</label>
						<input name="userName" type="hidden" class="dfinput"
							value="${accountDB.userName}" readonly="readonly" />
						<%--用户登录密码 --%>
						<input name="passWord" type="hidden" class="dfinput"
							value="${accountDB.passWord}" readonly="readonly" />
						<span style="position: relative; top: 8px;">${accountDB.userName}</span>
					</li>
					<li>
						<label>
							用户性别：
						</label>
						<c:choose>
							<c:when test="${accountDB.sex=='男'}">
								<cite style="position: relative; top: 0px;"><input
										name="sex" type="radio" value="男" checked="checked" />男&nbsp;&nbsp;&nbsp;&nbsp;<input
										name="sex" type="radio" value="女" />女</cite>
							</c:when>
							<c:otherwise>
								<cite style="position: relative; top: 0px;"><input
										name="sex" type="radio" value="男" />男&nbsp;&nbsp;&nbsp;&nbsp;<input
										name="sex" type="radio" value="女" checked="checked"/>女</cite>
							</c:otherwise>
						</c:choose>

					</li>
					<li>
						<label>
							用户姓名：
						</label>
						<input name="name" type="text" class="dfinput"
							value="${accountDB.name}" maxlength="20" id="name"
							onblur="clearNameMsg()" />
						<i><span id="pleaseInputName"
							style="background: url(images/error.png) no-repeat left center; color: red; display: none; padding-left: 20px; font-size: 12px;">请您输入用户姓名！</span>
						</i>
					</li>
					<li>
						<label>
							教育程度：
						</label>
						<input name="edu" type="text" class="dfinput"
							value="${accountDB.edu}" maxlength="50" id="edu"
							onblur="clearEduMsg()" />
						<i><span id="pleaseInputEdu"
							style="background: url(images/error.png) no-repeat left center; color: red; display: none; padding-left: 20px; font-size: 12px;">请您输入教育程度！</span>
						</i>
					</li>
					<li>
						<label>
							目前工作：
						</label>
						<input name="works" type="text" class="dfinput"
							value="${accountDB.works}" maxlength="50" id="works"
							onblur="clearWorksMsg()" />
						<i><span id="pleaseInputWorks"
							style="background: url(images/error.png) no-repeat left center; color: red; display: none; padding-left: 20px; font-size: 12px;">请您输入目前工作！</span>
						</i>
					</li>
					<li>
						<label>
							常用手机：
						</label>
						<input name="phone" type="text" class="dfinput"
							value="${accountDB.phone}" maxlength="11" id="phone"
							onblur="clearPhoneMsg()" />
						<i><span id="pleaseInputPhone"
							style="background: url(images/error.png) no-repeat left center; color: red; display: none; padding-left: 20px; font-size: 12px;">请您输入常用手机！</span>
						</i>
					</li>
					<li>
						<label>
							电子邮件：
						</label>
						<input name="email" type="text" class="dfinput"
							value="${accountDB.email}" maxlength="50" id="email"
							onblur="clearEmailMsg()" />
						<i><span id="pleaseInputEmail"
							style="background: url(images/error.png) no-repeat left center; color: red; display: none; padding-left: 20px; font-size: 12px;">请您输入电子邮件！</span>
						</i>
					</li>
					<li>
						<label>
							国籍国家：
						</label>
						<input name="nation" type="text" class="dfinput"
							value="${accountDB.nation}" maxlength="50" id="nation"
							onblur="clearNationMsg()" />
						<i><span id="pleaseInputNation"
							style="background: url(images/error.png) no-repeat left center; color: red; display: none; padding-left: 20px; font-size: 12px;">请您输入国籍国家！</span>
						</i>
					</li>
					<li>
						<label>
							出生日期：
						</label>
						<input name="birth" type="text" class="dfinput"
							value="${accountDB.birth}" maxlength="50" id="birth"
							onblur="clearBirthMsg()" />
						<i><span id="pleaseInputBirth"
							style="background: url(images/error.png) no-repeat left center; color: red; display: none; padding-left: 20px; font-size: 12px;">请您输入出生日期！</span>
						</i>
					</li>
					<li>
						<label>
							地址信息：
						</label>
						<textarea name="place" cols="" rows="" class="textinput"
							id="place" onkeydown=
	stoplength();;
>${accountDB.place}</textarea>
						<i><span id="pleaseInputPlace"
							style="background: url(images/error.png) no-repeat left center; color: red; display: none; padding-left: 20px; font-size: 12px;">请您输入地址信息！</span>
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
