package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.springmvc.beans.NPNNhanVien;

public class NPNNhanVienDao {
    private JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    // Thêm nhân viên
    public int save(NPNNhanVien nv) {
        String sql = "INSERT INTO npn_nhanvien (npn_hoten, npn_sodienthoai, npn_chucvu) VALUES (?, ?, ?)";
        return template.update(sql, nv.getNpn_hoten(), nv.getNpn_sodienthoai(), nv.getNpn_chucvu());
    }

    // Cập nhật nhân viên
    public int update(NPNNhanVien nv) {
        String sql = "UPDATE npn_nhanvien SET npn_hoten = ?, npn_sodienthoai = ?, npn_chucvu = ? WHERE npn_manv = ?";
        return template.update(sql, nv.getNpn_hoten(), nv.getNpn_sodienthoai(), nv.getNpn_chucvu(), nv.getNpn_manv());
    }

    // Xóa nhân viên
    public int delete(int id) {
        String sql = "DELETE FROM npn_nhanvien WHERE npn_manv=?";
        return template.update(sql, id);
    }

    // Lấy danh sách nhân viên
    public List<NPNNhanVien> getAllNhanVien() {
        return template.query("SELECT * FROM npn_nhanvien", new RowMapper<NPNNhanVien>() {
            public NPNNhanVien mapRow(ResultSet rs, int rowNum) throws SQLException {
                NPNNhanVien nv = new NPNNhanVien();
                nv.setNpn_manv(rs.getInt("npn_manv"));
                nv.setNpn_hoten(rs.getString("npn_hoten"));
                nv.setNpn_sodienthoai(rs.getString("npn_sodienthoai"));
                nv.setNpn_chucvu(rs.getString("npn_chucvu"));
                return nv;
            }
        });
    }

    // Lấy nhân viên theo ID
    public NPNNhanVien getNhanVienById(int id) {
        String sql = "SELECT * FROM npn_nhanvien WHERE npn_manv=?";
        return template.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<>(NPNNhanVien.class));
    }
}
