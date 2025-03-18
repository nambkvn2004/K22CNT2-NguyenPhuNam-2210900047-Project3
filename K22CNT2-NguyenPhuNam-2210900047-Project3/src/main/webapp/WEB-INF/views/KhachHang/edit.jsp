<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<title>Chỉnh Sửa Khách Hàng</title>
<style>
body {
	font-family: Arial, sans-serif;
	margin: 0;
	padding: 0;
	background-color: #f4f4f4;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

h2 {
	text-align: center;
	color: #333;
}

form {
	background-color: #fff;
	padding: 20px;
	border-radius: 8px;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	width: 400px;
}

input[type="text"], input[type="email"], input[type="tel"], textarea {
	width: 100%;
	padding: 10px;
	margin: 10px 0;
	border: 1px solid #ddd;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type="submit"] {
	background-color: #007BFF;
	color: white;
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	width: 100%;
}

input[type="submit"]:hover {
	background-color: #0056b3;
}

a {
	text-decoration: none;
	color: #007BFF;
	display: inline-block;
	margin-top: 15px;
	text-align: center;
}

a:hover {
	color: #0056b3;
}
</style>
</head>
<body>
	<div>
		<h2>Chỉnh Sửa Khách Hàng</h2>
		<!-- Form để chỉnh sửa khách hàng -->
		<form action="${pageContext.request.contextPath}/KhachHang/editsave"
			method="post">
			<input type="hidden" name="npn_makh" value="${command.npn_makh}" /> <label
				for="npn_hoten">Họ Tên:</label> <input type="text" name="npn_hoten"
				value="${command.npn_hoten}" required /><br /> <label
				for="npn_email">Email:</label> <input type="email" name="npn_email"
				value="${command.npn_email}" required /><br /> <label
				for="npn_sodienthoai">Số Điện Thoại:</label> <input type="text"
				name="npn_sodienthoai" value="${command.npn_sodienthoai}" required /><br />

			<input type="submit" value="Cập Nhật" />
		</form>


		<br />
		<!-- Liên kết quay lại danh sách khách hàng -->
		<a href="${pageContext.request.contextPath}/KhachHang/list">Quay
			Lại Danh Sách</a>
	</div>
</body>
</html>