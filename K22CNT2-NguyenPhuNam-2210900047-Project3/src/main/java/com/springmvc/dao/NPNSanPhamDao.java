package com.springmvc.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import com.springmvc.beans.NPNSanPham;

public class NPNSanPhamDao {
	private JdbcTemplate template;

    public void setTemplate(JdbcTemplate template) {
        this.template = template;
    }

    // Thêm sản phẩm
    public int save(NPNSanPham sp) {
    	String sql = "INSERT INTO npn_sanpham (npn_tensp, npn_danhmuc, npn_mota, npn_gia) VALUES (?, ?, ?, ?)";
	    return template.update(sql, sp.getNpn_tensp(), sp.getNpn_danhmuc(), sp.getNpn_mota(), sp.getNpn_gia());
    }

    // Cập nhật sản phẩm
    public int update(NPNSanPham sp) {
    	String sql = "UPDATE npn_sanpham SET "
		        + "npn_tensp = ?, "
		        + "npn_danhmuc = ?, "
		        + "npn_mota = ?, "
		        + "npn_gia = ? "
		        + "WHERE npn_masp = ?";

	    return template.update(sql, sp.getNpn_tensp(), sp.getNpn_danhmuc(), sp.getNpn_mota(), sp.getNpn_gia(), sp.getNpn_masp());
    }

    // Xóa sản phẩm
    public int delete(int id) {
        String sql = "DELETE FROM npn_sanpham WHERE npn_masp=?";
        return template.update(sql, id);
    }

    // Lấy danh sách sản phẩm
    public List<NPNSanPham> getAllSanPham() {
        return template.query("SELECT * FROM npn_sanpham", new RowMapper<NPNSanPham>() {
            public NPNSanPham mapRow(ResultSet rs, int rowNum) throws SQLException {
            	NPNSanPham sp = new NPNSanPham();
	            sp.setNpn_masp(rs.getInt("npn_masp")); 
	            sp.setNpn_tensp(rs.getString("npn_tensp"));
	            sp.setNpn_danhmuc(rs.getString("npn_danhmuc"));
	            sp.setNpn_mota(rs.getString("npn_mota"));
	            sp.setNpn_gia(rs.getInt("npn_gia"));  
	            return sp;
            }
        });
    }

    // Lấy sản phẩm theo ID
    public NPNSanPham getSanPhamById(int id) {
        String sql = "SELECT * FROM npn_sanpham WHERE npn_masp=?";
        return template.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<>(NPNSanPham.class));
    }
}
