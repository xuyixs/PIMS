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
		<script language="JavaScript" src="js/jquery.js"></script>
		<script type="text/javascript">
	$(function() {
		//顶部导航切换
		$(".nav li a").click(function() {
			$(".nav li a.selected").removeClass("selected")
			$(this).addClass("selected");
		})
	})
	function go() {
		window.top.location = "login.jsp";
	}
</script>


	</head>

	<body style="background: url(images/topbg.gif) repeat-x;">

		<div class="topleft">
			<a href="main.jsp" target="_parent"><img src="images/logo.png"
					title="系统首页" /> </a>
		</div>

		<ul class="nav">
			<li>
				<a href="FriendsServlet" target="rightFrame" class="selected"><img
						src="images/icon01.png" title="通讯录管理" />
					<h2>
						通讯录管理
					</h2> </a>
			</li>
			<li>
				<a href="ScheduleServlet" target="rightFrame"><img
						src="images/icon02.png" title="日程管理" />
					<h2>
						日程管理
					</h2> </a>
			</li>
			<li>
				<a href="FindUserServlet" target="rightFrame"><img
						src="images/icon03.png" title="信息修改" />
					<h2>
						信息修改
					</h2> </a>
			</li>
		
			<li>
				<a href="UpdatePassWord" target="rightFrame"><img
						src="images/icon06.png" title="系统设置" />
					<h2>
						修改密码
					</h2> </a>
			</li>
			<li>
				<a href="javascript:go()" target="rightFrame"><img
						src="images/icon05.png" title="修改密码" />
					<h2>
						退出登录
					</h2> </a>
			</li>
		</ul>

		<div class="topright">
			<ul>
				
				<li>
					<a href="login.jsp" target="_parent">退出</a>
				</li>
			</ul>


			<%--用户登录显示名称 --%>
			<div class="user">
				<span>${account.userName}</span>
				
			</div>

		</div>

	</body>
</html>
