<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="vi">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Nhà Hàng Hàn Quốc Seoul</title>
<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
<style>
body {
    font-family: sans-serif;
    background-color: #f3f4f6;
    margin: 0;
    padding: 0;
}
header {
    background-color: white;
    border-bottom: 1px solid #d1d5db;
    padding: 16px 0;
    box-shadow: 0px 2px 4px rgba(0, 0, 0, 0.1);
    text-align: center;
}
.container {
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 24px;
}
.nav-links a {
    text-decoration: none;
    color: #333;
    font-weight: 500;
    font-size: 16px;
    transition: all 0.3s ease-in-out;
}
.nav-links a:hover {
    color: #E63946;
    text-decoration: underline;
    transform: scale(1.1);
}
main {
    padding: 60px 0;
    text-align: center;
}
h2 {
    font-size: 32px;
    font-weight: bold;
    color: #E63946;
    margin-bottom: 20px;
}
p, ul, li {
    font-size: 18px;
    color: #4b5563;
    margin-bottom: 20px;
    max-width: 800px;
    margin-left: auto;
    margin-right: auto;
}
.grid-container {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
    gap: 24px;
    padding: 40px 20px;
}
.card {
    background-color: white;
    box-shadow: 0px 4px 6px rgba(0, 0, 0, 0.1);
    border-radius: 10px;
    overflow: hidden;
    padding: 16px;
    text-align: center;
    transition: transform 0.3s ease-in-out;
}
.card:hover {
    transform: translateY(-5px);
}
.button {
    display: inline-block;
    background-color: #E63946;
    color: white;
    padding: 10px 20px;
    border-radius: 6px;
    text-decoration: none;
    font-size: 16px;
    font-weight: bold;
    transition: background-color 0.3s;
}
.button:hover {
    background-color: #B22222;
}
footer {
    background-color: #1f2937;
    color: white;
    text-align: center;
    padding: 16px 0;
    margin-top: 40px;
}
</style>
</head>
<body>
<header>
    <div class="container flex justify-center items-center">
        <div class="nav-links flex gap-8">
            <a href="index.jsp">Trang chủ</a>
            <a href="menu">Quản lý hệ thống</a>	
        </div>
    </div>
</header>
<main>
    <h2>Nhà Hàng Hàn Quốc Seoul</h2>
    <p>Chào mừng bạn đến với Nhà Hàng Seoul - nơi mang đến những món ăn Hàn Quốc đích thực với hương vị truyền thống và không gian ấm cúng.</p>
    <img src="https://example.com/banner.jpg" alt="Nhà hàng Hàn Quốc" class="banner-img">
    <h3>Món Ăn Nổi Bật</h3>
    <div class="grid-container">
        <div class="card">
            <img src="https://chuphinhmenu.com/wp-content/uploads/2020/09/chup-anh-mon-an-Han-Quoc-kobop-2.jpg" alt="Bibimbap">
            <h4>Bibimbap</h4>
            <p>Cơm trộn Hàn Quốc với nhiều loại rau củ, thịt bò và trứng.</p>
        </div>
        <div class="card">
            <img src="https://seoulkimchi.vn/wp-content/uploads/2024/04/1200-X-1200-56.jpg" alt="Kimchi">
            <h4>Kimchi</h4>
            <p>Món cải thảo lên men cay nồng, đặc sản Hàn Quốc.</p>
        </div>
        <div class="card">
            <img src="https://takestwoeggs.com/wp-content/uploads/2023/08/Tteokbokki-Takestwoeggs-sq.jpg" alt="Tteokbokki">
            <h4>Tteokbokki</h4>
            <p>Bánh gạo cay với nước sốt đậm đà.</p>
        </div>
    </div>
</main>
<footer>
    <p>&copy; 2025 Nhà Hàng Seoul - Hương vị Hàn Quốc</p>
</footer>
</body>
</html>
