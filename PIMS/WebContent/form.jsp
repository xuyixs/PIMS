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
		<title>无标题文档</title>
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
			<form action="UpdateUserServlet" method="post">
				<ul class="forminfo">
					<li>
						<input name="userId" type="hidden" class="dfinput"
							value="${userDB.userId}" maxlength="6" />
					</li>
					<li>
						<label>
							登录名称：
						</label>
						<input name="userName" type="hidden" class="dfinput"
							value="${userDB.userName}" readonly="readonly" />
						<span style="position: relative; top: -5px;">${userDB.userName}</span>
					</li>
					<li>
						<label>
							用户性别：
						</label>
						<cite style="position: relative; top: -20px;"><input
								name="sex" type="radio" value="男" checked="checked" />男&nbsp;&nbsp;&nbsp;&nbsp;<input
								name="sex" type="radio" value="女" />女</cite>
					</li>
					<li>
						<label>
							用户名称：
						</label>
						<input name="name" type="text" class="dfinput"
							value="${userDB.name}" maxlength="50" />
						<i>多个关键字用,隔开</i>
					</li>
					<li>
						<label>
							教育程度：
						</label>
						<input name="edu" type="text" class="dfinput"
							value="${userDB.edu}" maxlength="50" />
						<i>多个关键字用,隔开</i>
					</li>
					<li>
						<label>
							目前工作：
						</label>
						<input name="works" type="text" class="dfinput"
							value="${userDB.works}" maxlength="50" />
						<i>多个关键字用,隔开</i>
					</li>
					<li>
						<label>
							常用手机：
						</label>
						<input name="phone" type="text" class="dfinput"
							value="${userDB.phone}" maxlength="11" />
						<i>多个关键字用,隔开</i>
					</li>
					<li>
						<label>
							电子邮件：
						</label>
						<input name="email" type="text" class="dfinput"
							value="${userDB.email}" maxlength="50" />
						<i>多个关键字用,隔开</i>
					</li>
					<li>
						<label>
							国籍国家：
						</label>
						<input name="nation" type="text" class="dfinput"
							value="${userDB.nation}" maxlength="50" />
						<i>多个关键字用,隔开</i>
					</li>
					<li>
						<label>
							出生日期：
						</label>
						<input name="birth" type="text" class="dfinput"
							value="${userDB.birth}" maxlength="50" />
					</li>
					<li>
						<label>
							地址信息：
						</label>
						<textarea name="place" cols="" rows="" class="textinput"
							onkeydown="stoplength();">${userDB.place}</textarea>
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
