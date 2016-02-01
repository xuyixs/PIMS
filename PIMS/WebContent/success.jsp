<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ path + "/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<base href="<%=basePath%>" />
		<title>success</title>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="shortcut icon" href="<%=basePath%>favicon.ico" type="image/x-icon" />
		<link href="successCss/style.css" rel="stylesheet" type="text/css" />
		<script language="javascript" >
			function go(){ 
				window.location.href='<%=request.getAttribute("url")%>';
			}
		</script>
	</head>
	<body>

		<dl class="H_return">
			<dt></dt>
			<dd>
				<p class="Color1 F16 B">
					操作成功
				</p>
				<span id="tiao" class="Color1 F16 B">3</span>
				<a href="javascript:countDown"></a> 秒后页面将自动跳转 <a href="javascript:go()">立即跳转</a>	
				<script language="javascript" >
					function countDown(secs){ 
						tiao.innerText=secs;
						if(--secs>0){ 
							setTimeout("countDown("+secs+")",1000);
						}else{ 
							window.location.href='<%=request.getAttribute("url")%>';
						}
					}
					countDown(3);
				</script>	
			</dd>
		</dl>
	</body>
</html>
