<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Thêm Nhân Viên</title>
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

        input[type="text"], input[type="email"], input[type="tel"], select {
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
        <h2>Thêm Nhân Viên</h2>
        <!-- Form để thêm nhân viên -->
        <form action="${pageContext.request.contextPath}/NhanVien/save" method="post">
            <!-- Các trường của nhân viên -->
            Họ Tên: <input type="text" name="npn_hoten" value="${command.npn_hoten}" required /><br />
            Số Điện Thoại: <input type="tel" name="npn_sodienthoai" value="${command.npn_sodienthoai}" required /><br />
            
            Chức Vụ: 
            <select name="npn_chucvu" required>
                <option value="PhucVu">Nhân viên Phục Vụ</option>
                <option value="Bep">Nhân viên Bếp</option>
                <option value="QuanLy">Quản Lý</option>
            </select><br />
            
            <input type="submit" value="Lưu" />
        </form>

        <br />
        <!-- Liên kết quay lại danh sách nhân viên -->
        <a href="${pageContext.request.contextPath}/NhanVien/list">Quay lại danh sách</a>
    </div>
</body>
</html>