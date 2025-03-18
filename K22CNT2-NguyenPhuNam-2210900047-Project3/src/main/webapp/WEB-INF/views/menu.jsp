<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
<title>Hệ Thống</title>
<style>
/* Cấu hình chung */
body {
    font-family: "Poppins", sans-serif;
    background-color: #eef1f7;
    margin: 0;
    padding: 0;
    color: #2c3e50;
}

/* Header */
header {
    background: linear-gradient(135deg, #1e3c72, #2a5298);
    padding: 20px 0;
    text-align: center;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}

.nav-links {
    display: flex;
    justify-content: center;
    gap: 30px;
}

.nav-links a {
    text-decoration: none;
    color: #ffffff;
    font-size: 18px;
    font-weight: bold;
    padding: 10px 20px;
    border-radius: 10px;
    transition: 0.3s;
}

.nav-links a:hover {
    background: rgba(255, 255, 255, 0.2);
    transform: scale(1.1);
}

/* Nội dung chính */
.intro-content {
    margin: 50px auto;
    text-align: center;
    width: 80%;
    max-width: 1000px;
}

h1 {
    font-size: 42px;
    color: #1e3c72;
    margin-bottom: 15px;
}

p {
    font-size: 18px;
    line-height: 1.6;
    color: #555;
}

/* Danh sách menu */
.list-content {
    margin: 40px auto;
    width: 80%;
    max-width: 1200px;
}

ul {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
    gap: 20px;
    padding: 0;
    list-style: none;
}

li {
    background: white;
    border-radius: 15px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    transition: 0.3s;
    text-align: center;
    padding: 20px;
}

li a {
    display: block;
    font-size: 20px;
    font-weight: bold;
    text-decoration: none;
    color: #1e3c72;
    padding: 15px;
    border-radius: 10px;
    transition: 0.3s;
}

li:hover {
    transform: translateY(-5px);
    box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
}

li a:hover {
    background: #1e3c72;
    color: white;
}

/* Footer */
.footer {
    text-align: center;
    font-size: 14px;
    padding: 15px;
    background: #1e3c72;
    color: white;
    position: fixed;
    bottom: 0;
    width: 100%;
}
</style>
</head>
<body>
    <header>
        <div class="nav-links">
            <a href="index.jsp">Trang chủ</a>
            <a href="menu">Quản Lý Hệ Thống</a>
        </div>
    </header>

    <div class="intro-content">
        <h1>Chào Mừng Đến Với Trang Quản Lý</h1>
        <p>Hệ Thống Giúp Bạn Quản Lý Các Thông Tin Sản Phẩm và Khách Hàng.</p>
    </div>

    <div class="list-content">
        <ul>
            <li><a href="${pageContext.request.contextPath}/SanPham/list">Sản Phẩm</a></li>
            <li><a href="${pageContext.request.contextPath}/KhachHang/list">Khách Hàng</a></li>
            <li><a href="${pageContext.request.contextPath}/NhanVien/list">Nhân Viên</a></li>
        </ul>
    </div>

    <div class="footer">
        <p>&copy; 2025 Quản Lý Nhà Hàng Ẩm Thực Hàn Quốc Seoul</p>
    </div>
</body>
</html>
