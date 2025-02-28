create database QuanLyNhaHang_npn;
use QuanLyNhaHang_npn;
CREATE TABLE KhachHang_npn (
    MaKhachHang_npn INT AUTO_INCREMENT PRIMARY KEY,
    TenKhachHang_npn VARCHAR(100) NOT NULL,
    Email_npn VARCHAR(100) UNIQUE NOT NULL,
    SoDienThoai_npn VARCHAR(15),
    MatKhau_npn VARCHAR(255) NOT NULL
);
CREATE TABLE MonAn_npn (
    MaMonAn_npn INT AUTO_INCREMENT PRIMARY KEY,
    TenMonAn_npn VARCHAR(100) NOT NULL,
    MoTa_npn TEXT,
    Gia_npn DECIMAL(10,2) NOT NULL,
    HinhAnh_npn VARCHAR(255)
);
CREATE TABLE DonHang_npn (
    MaDonHang_npn INT AUTO_INCREMENT PRIMARY KEY,
    MaKhachHang_npn INT,
    NgayDat_npn DATE NOT NULL,
    TongTien_npn DECIMAL(10,2) NOT NULL,
    TrangThai_npn ENUM('ChuaXuLy', 'DangXuLy', 'DaXuLy') DEFAULT 'ChuaXuLy',
    FOREIGN KEY (MaKhachHang_npn) REFERENCES KhachHang_npn(MaKhachHang_npn)
);
CREATE TABLE ChiTietDonHang_npn (
    MaChiTiet_npn INT AUTO_INCREMENT PRIMARY KEY,
    MaDonHang_npn INT,
    MaMonAn_npn INT,
    SoLuong_npn INT NOT NULL,
    Gia_npn DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (MaDonHang_npn) REFERENCES DonHang_npn(MaDonHang_npn),
    FOREIGN KEY (MaMonAn_npn) REFERENCES MonAn_npn(MaMonAn_npn)
);
CREATE TABLE DatBan_npn (
    MaDatBan_npn INT AUTO_INCREMENT PRIMARY KEY,
    MaKhachHang_npn INT,
    NgayDat_npn DATE NOT NULL,
    GioDat_npn TIME NOT NULL,
    SoLuongKhach_npn INT NOT NULL,
    TrangThai_npn ENUM('ChuaXacNhan', 'DaXacNhan', 'DaHuy') DEFAULT 'ChuaXacNhan',
    FOREIGN KEY (MaKhachHang_npn) REFERENCES KhachHang_npn(MaKhachHang_npn)
);
