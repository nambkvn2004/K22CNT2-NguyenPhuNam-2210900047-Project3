package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.springmvc.beans.NPNKhachHang;

public class NPNKhachHangDao {

    private JdbcTemplate template;

    // Setters và getters cho template (cần thiết cho Spring để tự động inject JdbcTemplate)
    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    // Thêm khách hàng
    public int save(NPNKhachHang kh) {
        System.out.println("Saving KhachHang: " + kh);  // In ra thông tin khách hàng
        String sql = "INSERT INTO npn_khachhang (npn_hoten, npn_email, npn_sodienthoai) VALUES (?, ?, ?)";
        return template.update(sql, kh.getNpn_hoten(), kh.getNpn_email(), kh.getNpn_sodienthoai());
    }

    // Cập nhật khách hàng
    public int update(NPNKhachHang kh) {
        String sql = "UPDATE npn_khachhang SET "
                + "npn_hoten = ?, "
                + "npn_email = ?, "
                + "npn_sodienthoai = ? "
                + "WHERE npn_makh = ?";  // Xóa dấu phẩy thừa ở cuối

        return template.update(sql, kh.getNpn_hoten(), kh.getNpn_email(), kh.getNpn_sodienthoai(), kh.getNpn_makh());
    }

    // Xóa khách hàng
    public int delete(int id) {
        String sql = "DELETE FROM npn_khachhang WHERE npn_makh=?";
        return template.update(sql, id);
    }

    // Lấy danh sách khách hàng
    public List<NPNKhachHang> getAllKhachHang() {
        return template.query("SELECT * FROM npn_khachhang", new RowMapper<NPNKhachHang>() {
            public NPNKhachHang mapRow(ResultSet rs, int rowNum) throws SQLException {
                NPNKhachHang kh = new NPNKhachHang();
                kh.setNpn_makh(rs.getInt("npn_makh"));
                kh.setNpn_hoten(rs.getString("npn_hoten"));
                kh.setNpn_email(rs.getString("npn_email"));
                kh.setNpn_sodienthoai(rs.getString("npn_sodienthoai"));
                return kh;
            }
        });
    }

    // Lấy khách hàng theo ID
    public NPNKhachHang getKhachHangById(int id) {
        String sql = "SELECT * FROM npn_khachhang WHERE npn_makh=?";
        return template.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<>(NPNKhachHang.class));
    }
}
