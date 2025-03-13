create database quanlynhahang_npn;
use quanlynhahang_npn;
CREATE TABLE NpnAdmin (
    npn_admin_id INT PRIMARY KEY AUTO_INCREMENT,
    npn_username VARCHAR(255) NOT NULL UNIQUE,
    npn_password VARCHAR(255) NOT NULL,
    npn_role VARCHAR(50)
);
CREATE TABLE NpnUser (
    npn_user_id INT PRIMARY KEY AUTO_INCREMENT,
    npn_username VARCHAR(255) NOT NULL UNIQUE,
    npn_password VARCHAR(255) NOT NULL,
    npn_full_name VARCHAR(255),
    npn_address VARCHAR(255)
);
CREATE TABLE NpnMenu (
    npn_menu_id INT PRIMARY KEY AUTO_INCREMENT,
    npn_dish_name VARCHAR(255) NOT NULL,
    npn_unit_price DECIMAL(10, 2) NOT NULL,
    npn_category VARCHAR(100),
    npn_description TEXT
);
INSERT INTO NpnAdmin (npn_username, npn_password) VALUES
('admin', '123');
INSERT INTO NpnUser (npn_username, npn_password, npn_fullname, npn_address) VALUES
('nguyenvana', 'matkhau3', 'Nguyen Van A', '123 Duong ABC, Ha Noi'),
('tranthib', 'matkhau4', 'Tran Thi B', '456 Duong DEF, Ha Noi');
INSERT INTO NpnMenu (npn_name, npn_description, npn_price) VALUES
('Bibimbap', 'Com tron Han Quoc', 150000),
('Kimchi', 'Dua cai muoi chua cay', 50000);

