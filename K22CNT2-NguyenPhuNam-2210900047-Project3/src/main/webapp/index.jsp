<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="vi">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Nhà Hàng Hàn Quốc</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
    <style>
        .navbar {
            background-color: #ff6600;
        }
        .banner {
            background: url('images/banner.jpg') no-repeat center;
            background-size: cover;
            height: 400px;
        }
        .menu-item img {
            width: 100%;
            height: 200px;
            object-fit: cover;
            border-radius: 10px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark">
        <div class="container">
            <a class="navbar-brand" href="index.jsp">Nhà Hàng Hàn Quốc</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item"><a class="nav-link" href="#menu">Thực Đơn</a></li>
                    <li class="nav-item"><a class="nav-link" href="#contact">Liên Hệ</a></li>
                    <li class="nav-item"><a class="nav-link" href="login.jsp">Đăng Nhập</a></li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="banner d-flex align-items-center justify-content-center">
        <h1 class="text-white text-center">Chào Mừng Đến Với Nhà Hàng Hàn Quốc</h1>
    </div>

    <div class="container my-5" id="menu">
        <h2 class="text-center mb-4">Thực Đơn Hôm Nay</h2>
        <div class="row">
            <%-- Ví dụ dữ liệu động lấy từ Servlet hoặc cơ sở dữ liệu --%>
            <div class="col-md-4 menu-item">
                <img src="images/bibimbap.jpg" alt="Bibimbap">
                <h4>Bibimbap</h4>
                <p>Giá: 150,000 VND</p>
                <button class="btn btn-primary">Đặt Món</button>
            </div>
            <div class="col-md-4 menu-item">
                <img src="images/tteokbokki.jpg" alt="Tteokbokki">
                <h4>Tteokbokki</h4>
                <p>Giá: 100,000 VND</p>
                <button class="btn btn-primary">Đặt Món</button>
            </div>
            <div class="col-md-4 menu-item">
                <img src="images/kimchi.jpg" alt="Kimchi">
                <h4>Kimchi</h4>
                <p>Giá: 50,000 VND</p>
                <button class="btn btn-primary">Đặt Món</button>
            </div>
        </div>
    </div>

    <div class="container my-5" id="contact">
        <h2 class="text-center">Liên Hệ</h2>
        <p class="text-center">Địa chỉ: 123 Đường ABC, Quận 1, TP.HCM</p>
        <p class="text-center">Điện thoại: 0123 456 789</p>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>