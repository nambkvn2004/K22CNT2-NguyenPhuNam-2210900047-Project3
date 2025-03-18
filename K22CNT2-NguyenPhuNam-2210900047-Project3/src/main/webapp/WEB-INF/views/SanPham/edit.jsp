<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Chỉnh Sửa Sản Phẩm</title>
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

        input[type="text"], input[type="number"], textarea {
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
        <h2>Chỉnh Sửa Sản Phẩm</h2>
        <!-- Form để chỉnh sửa sản phẩm -->
        <form action="${pageContext.request.contextPath}/SanPham/editsave" method="post">
            <!-- Ẩn mã sản phẩm -->
            <input type="hidden" name="npn_masp" value="${command.npn_masp}"/>
            
            <!-- Các trường của sản phẩm -->
            Tên Sản Phẩm: <input type="text" name="npn_tensp" value="${command.npn_tensp}" required/><br/>
            Mô Tả: <textarea name="npn_mota">${command.npn_mota}</textarea><br/>
            Danh Mục: <input type="text" name="npn_danhmuc" value="${command.npn_danhmuc}" required/><br/>
            Giá: <input type="number" name="npn_gia" value="${command.npn_gia}" required/><br/>
            
            <input type="submit" value="Cập Nhật"/>
        </form>
        
        <br/>
        <!-- Liên kết quay lại danh sách sản phẩm -->
        <a href="${pageContext.request.contextPath}/SanPham/list">Quay lại danh sách</a>
    </div>
</body>
</html>