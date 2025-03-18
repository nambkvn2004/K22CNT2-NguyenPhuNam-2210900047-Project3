package com.springmvc.beans;

public class NPNNhanVien {
	private int npn_manv;
	private String npn_hoten;
	private String npn_sodienthoai;
	private String npn_chucvu;
	
	
	
	public NPNNhanVien() {
		super();
	}
	public NPNNhanVien(int npn_manv, String npn_hoten, String npn_sodienthoai, String npn_chucvu) {
		super();
		this.npn_manv = npn_manv;
		this.npn_hoten = npn_hoten;
		this.npn_sodienthoai = npn_sodienthoai;
		this.npn_chucvu = npn_chucvu;
	}
	public int getNpn_manv() {
		return npn_manv;
	}
	public void setNpn_manv(int npn_manv) {
		this.npn_manv = npn_manv;
	}
	public String getNpn_hoten() {
		return npn_hoten;
	}
	public void setNpn_hoten(String npn_hoten) {
		this.npn_hoten = npn_hoten;
	}
	public String getNpn_sodienthoai() {
		return npn_sodienthoai;
	}
	public void setNpn_sodienthoai(String npn_sodienthoai) {
		this.npn_sodienthoai = npn_sodienthoai;
	}
	public String getNpn_chucvu() {
		return npn_chucvu;
	}
	public void setNpn_chucvu(String npn_chucvu) {
		this.npn_chucvu = npn_chucvu;
	}
	
	
}
