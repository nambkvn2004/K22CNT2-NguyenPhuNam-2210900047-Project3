<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Trang JSP Demo</title>
</head>
<body>
	<div class="header">
		<h1>Chào mừng đến với JSP</h1>
	</div>
	<div class="content">
		<%
			// Viết mã Java ở đây
			String message = "Hello, JSP!";
			out.print("<p>" + message + "</p>");
		%>
	</div>
	
	<a href="menu">Đến Menu chức năng</a>
	<div class="footer">
		<p>&copy; 2024 Trang web của bạn</p>
	</div>
</body>
</html>