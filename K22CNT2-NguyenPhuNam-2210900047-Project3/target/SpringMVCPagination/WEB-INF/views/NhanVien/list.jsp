<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Chỉnh Sửa Nhân Viên</title>
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

        input[type="text"], input[type="email"], input[type="tel"], textarea, select {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ddd;
            border-radius: 4px;
            box-sizing: border-box;
        }

        select {
            background-color: #fff;
            color: #333;
            font-size: 16px;
            cursor: pointer;
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
        <h2>Chỉnh Sửa Nhân Viên</h2>
        <form action="${pageContext.request.contextPath}/NhanVien/editsave" method="post">
            <input type="hidden" name="npn_manv" value="${command.npn_manv}" />
            Họ Tên: <input type="text" name="npn_hoten" value="${command.npn_hoten}" required /><br />
            Số Điện Thoại: <input type="tel" name="npn_sodienthoai" value="${command.npn_sodienthoai}" required /><br />
            
            Chức Vụ: 
            <select name="npn_chucvu" required>
                <option value="Nhan Vien Telesales" ${command.npn_chucvu == 'Telesales' ? 'selected' : ''}>Nhân viên Telesales</option>
                <option value="Nhan Vien Kho" ${command.npn_chucvu == 'Kho' ? 'selected' : ''}>Nhân viên Kho</option>
                <option value="Quan Ly" ${command.npn_chucvu == 'QuanLy' ? 'selected' : ''}>Quản lý</option>
            </select><br />
            
            <input type="submit" value="Cập Nhật" />
        </form>

        <br />
        <a href="${pageContext.request.contextPath}/NhanVien/list">Quay lại</a>
    </div>
</body>
</html>