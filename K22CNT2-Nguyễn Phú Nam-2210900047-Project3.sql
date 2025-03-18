create database npn_2210900047;
use npn_2210900047;
create table npn_sanpham(
npn_masp	INT AUTO_INCREMENT	PRIMARY KEY ,
npn_tensp	VARCHAR(255)	NOT NULL,
npn_danhmuc	VARCHAR(255)	NOT NULL,
npn_mota	TEXT	NULL,
npn_gia	DECIMAL(15,2)	NOT NULL
);
create table npn_khachhang(
npn_makh	INT	PRIMARY KEY AUTO_INCREMENT,
npn_hoten	VARCHAR(100)	NOT NULL,
npn_email	VARCHAR(100)	NOT NULL,
npn_sodienthoai	VARCHAR(15)	NOT NULL
);
CREATE TABLE npn_nhanvien (
    npn_manv INT AUTO_INCREMENT PRIMARY KEY,
    npn_hoten VARCHAR(100) NOT NULL,
    npn_sodienthoai VARCHAR(15) NOT NULL,
    npn_chucvu VARCHAR(50) NOT NULL -- VD: Quản lý,Phục vụ,...
);
-- Chèn dữ liệu vào bảng npn_sanpham
INSERT INTO npn_sanpham (npn_tensp, npn_danhmuc, npn_mota, npn_gia)
VALUES 
('Kimchi Jjigae', 'Lẩu', 'Lẩu kimchi với đậu phụ và thịt ba chỉ', 150000),
('Bibimbap', 'Cơm trộn', 'Cơm trộn Hàn Quốc với rau và trứng', 120000);

-- Chèn dữ liệu vào bảng npn_khachhang
INSERT INTO npn_khachhang (npn_hoten, npn_email, npn_sodienthoai)
VALUES 
('Nguyễn Văn An', 'an.nguyen@gmail.com', '0987654321'),
('Trần Thị Bình', 'binh.tran@gmail.com', '0978123456');

-- Chèn dữ liệu vào bảng npn_nhanvien
INSERT INTO npn_nhanvien (npn_hoten, npn_sodienthoai, npn_chucvu)
VALUES 
('Lê Hồng Phúc', '0912345678', 'Quản lý'),
('Phạm Thị Lan', '0909876543', 'Phục vụ');
