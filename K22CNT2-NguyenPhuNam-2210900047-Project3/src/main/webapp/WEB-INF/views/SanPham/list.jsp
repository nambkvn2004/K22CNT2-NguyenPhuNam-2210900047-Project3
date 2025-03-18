<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Danh sách sản phẩm</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
        }
        h2 {
            font-size: 30px;
            margin-top: 20px;
            color: #333;
        }
        .product-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            padding: 20px;
            margin-top: 20px;
        }
        .product-card {
            border: 1px solid #ddd;
            padding: 15px;
            text-align: center;
            border-radius: 5px;
            box-shadow: 2px 2px 10px rgba(0, 0, 0, 0.1);
            background-color: #fff;
            width: 300px;
            transition: transform 0.3s ease-in-out;
        }
        .product-card:hover {
            transform: scale(1.05);
        }
        .product-card h3 {
            font-size: 20px;
            margin: 10px 0;
            color: #2c3e50;
        }
        .price {
            color: red;
            font-size: 18px;
            font-weight: bold;
        }
        .btn {
            display: inline-block;
            padding: 10px 20px;
            background-color: #3498db;
            color: white;
            font-size: 16px;
            border-radius: 5px;
            text-decoration: none;
            margin-top: 20px;
            transition: background-color 0.3s ease;
        }
        .btn:hover {
            background-color: #2980b9;
        }
        
    </style>
</head>
<body>
    <h2>Danh sách sản phẩm</h2>
    <div class="product-container">
        <c:forEach var="sp" items="${list}">
            <div class="product-card">
                <h3>${sp.npn_tensp}</h3>
                <p class="price">${sp.npn_gia} VNĐ</p>
                <p><strong>Mô tả:</strong> ${sp.npn_mota}</p>
                <p><strong>Danh mục:</strong> ${sp.npn_danhmuc}</p>
                <div>
                    <a href="${pageContext.request.contextPath}/SanPham/edit/${sp.npn_masp}" class="btn">Edit</a>
                    <a href="${pageContext.request.contextPath}/SanPham/delete/${sp.npn_masp}" class="btn" 
                       onclick="return confirm('Bạn có chắc muốn xóa không?')">Delete</a>
                </div>
            </div>
        </c:forEach>
    </div>
    <a href="${pageContext.request.contextPath}/menu" class="btn">Quay lại</a>
    <a href="${pageContext.request.contextPath}/SanPham/add" class="btn">Thêm mới</a>
</body>
</html>