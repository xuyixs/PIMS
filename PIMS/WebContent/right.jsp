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
		<title>通讯录列表</title>
		<link href="css/style.css" rel="stylesheet" type="text/css" />
		<script type="text/javascript" src="js/jquery.js"></script>

		<script type="text/javascript">
	$(document).ready(function() {
		$(".click").click(function() {
			window.location.href = "addfriends.jsp"
		});
		$(".tiptop a").click(function() {
			$(".tip").fadeOut(200);
		});

		$(".sure").click(function() {
			$(".tip").fadeOut(100);
		});

		$(".cancel").click(function() {
			$(".tip").fadeOut(100);
		});
	});
</script>


	</head>


	<body>

		<div class="place">
			<span>位置：</span>
			<ul class="placeul">
				<li>
					<a href="FriendsServlet">通讯录管理</a>
				</li>
				<li>
					<a href="#">查看通讯录信息</a>
				</li>
			</ul>
		</div>

		<div class="rightinfo">

			<div class="tools">

				<ul class="toolbar">
					<li class="click">
						<span><img src="images/t01.png" /> </span>添加
					</li>
					
				</ul>


				

			</div>
			<table class="tablelist">
				<thead>
					<tr>
						
						<th>
							编号
							<i class="sort"><img src="images/px.gif" /> </i>
						</th>
						<th>
							用户昵称
						</th>
						<th>
							真实姓名
						</th>
						<th>
							手机号码
						</th>
						<th>
							电子邮件
						</th>
						<th>
							工作地址
						</th>
						<th>
							家庭住址
						</th>
						<th>
							QQ号码
						</th>
						<th>
							操作
						</th>
					</tr>
				</thead>
				<tbody id="parent">
					<c:forEach items="${friends}" var="friend">
						<tr>
							<td>
								${friend.friendsId}
							</td>
							<td>
								${friend.userName}
							</td>
							<td>
								${friend.name}
							</td>
							<td>
								${friend.phone}
							</td>
							<td>
								${friend.email}
							</td>
							<td>
								${friend.workSpace}
							</td>
							<td>
								${friend.place}
							</td>
							<td>
								${friend.qq}
							</td>
							<td>
								<a href="FindFriendsByIdServlet?friendsId=${friend.friendsId}" class="tablelink" name="">查看</a>
								<a href="DeleteFriendsServlet?friendsId=${friend.friendsId}" class="tablelink">
									删除</a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
			
			<div class="tip">
				<div class="tiptop">
					<span>提示信息</span><a></a>
				</div>

				<div class="tipinfo">
					<span><img src="images/ticon.png" /> </span>
					<div class="tipright">
						<p>
							是否确认对信息的修改 ？
						</p>
						<cite>如果是请点击确定按钮 ，否则请点取消。</cite>
					</div>
				</div>

				<div class="tipbtn">
					<input name="" type="button" class="sure" value="确定" />
					&nbsp;
					<input name="" type="button" class="cancel" value="取消" />
				</div>

			</div>




		</div>

		<script type="text/javascript">
	$('.tablelist tbody tr:odd').addClass('odd');
</script>

	</body>

</html>
