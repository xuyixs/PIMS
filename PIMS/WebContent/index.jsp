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
		<title>首页</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jquery.js"></script>

	</head>


	<body>

		<div class="place">
			<span>位置：</span>
			<ul class="placeul">
				<li>
					<a href="#">首页</a>
				</li>
			</ul>
		</div>

		<div class="mainindex">


			<div class="welinfo">
				<span><img src="images/sun.png" alt="天气" /> </span>
				<b>${account.userName}&nbsp;&nbsp;您好，欢迎使用信息管理系统</b>
				<a href="FindUserServlet">帐号设置</a>
			</div>

			<div class="welinfo">
				<span><img src="images/time.png" alt="" /> </span>
				<i>PIMS是“个人信息管理体系”(Personal Information Management
					System)的缩写，是一套对个人信息进行保护的管理方法论，主要针对管理或使用个人信息的企业或组织，目的是保护个人隐私。</i>
			</div>

			<div class="xline"></div>

			<ul class="iconlist">
						<br/><br/>
						<p>功能实现：用户登录、用户注册</p>
						<p>通讯录管理、日程管理、密码修改、个人信息修改</p>
						<br/><br/>
			</ul>

			<div class="xline"></div>
			<div class="box"></div>

			<div class="welinfo">
				<span><img src="images/dp.png" alt="" /> </span>
				<b>系统开发环境及架构</b>
			</div>

			<ul class="infolist">
				<li>
					<span>IDE:Myeclipse 8.5</span>
				</li>
				<li>
					<span>Server:Tomcat 6.0</span>
				</li>
				<li>
					<span>JDK:jdk 1.6</span>
				</li>
				<li>
					<span>DataBase:MySQL 5.0</span>
				</li>
				<li>
					<span>JavaBean+Servlet+Jsp</span>
				</li>
			</ul>

			<div class="xline"></div>
		</div>
	</body>

</html>
