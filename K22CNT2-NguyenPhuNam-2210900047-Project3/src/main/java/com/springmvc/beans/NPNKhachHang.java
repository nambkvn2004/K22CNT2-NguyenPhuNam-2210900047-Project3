package com.springmvc.beans;

public class NPNKhachHang {
    private int npn_makh;
    private String npn_hoten;
    private String npn_email;
    private String npn_sodienthoai;
    private String npn_matkhau;
    
    
	public NPNKhachHang(int npn_makh, String npn_hoten, String npn_email, String npn_sodienthoai) {
		super();
		this.npn_makh = npn_makh;
		this.npn_hoten = npn_hoten;
		this.npn_email = npn_email;
		this.npn_sodienthoai = npn_sodienthoai;
	}
	
	public NPNKhachHang() {
		super();
	}

	public int getNpn_makh() {
		return npn_makh;
	}
	public void setNpn_makh(int npn_makh) {
		this.npn_makh = npn_makh;
	}
	public String getNpn_hoten() {
		return npn_hoten;
	}
	public void setNpn_hoten(String npn_hoten) {
		this.npn_hoten = npn_hoten;
	}
	public String getNpn_email() {
		return npn_email;
	}
	public void setNpn_email(String npn_email) {
		this.npn_email = npn_email;
	}
	public String getNpn_sodienthoai() {
		return npn_sodienthoai;
	}
	public void setNpn_sodienthoai(String npn_sodienthoai) {
		this.npn_sodienthoai = npn_sodienthoai;
	}

	public String getNpn_matkhau() {
		return npn_matkhau;
	}

	public void setNpn_matkhau(String npn_matkhau) {
		this.npn_matkhau = npn_matkhau;
	}
	
}
