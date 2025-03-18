package com.springmvc.beans;

public class NPNSanPham {
    private int npn_masp;
    private String npn_tensp;
    private String npn_danhmuc;
    private String npn_mota;
    private int npn_gia;

    public NPNSanPham(int npn_masp, String npn_tensp, String npn_danhmuc, String npn_mota, int npn_gia) {
        super();
        this.npn_masp = npn_masp;
        this.npn_tensp = npn_tensp;
        this.npn_danhmuc = npn_danhmuc;
        this.npn_mota = npn_mota;
        this.npn_gia = npn_gia;
    }

    public NPNSanPham() {
        super();
    }

    // Getter and Setter
    public int getNpn_masp() {
        return npn_masp;
    }

    public void setNpn_masp(int npn_masp) {
        this.npn_masp = npn_masp;
    }

    public String getNpn_tensp() {
        return npn_tensp;
    }

    public void setNpn_tensp(String npn_tensp) {
        this.npn_tensp = npn_tensp;
    }

    public String getNpn_danhmuc() {
        return npn_danhmuc;
    }

    public void setNpn_danhmuc(String npn_danhmuc) {
        this.npn_danhmuc = npn_danhmuc;
    }

    public String getNpn_mota() {
        return npn_mota;
    }

    public void setNpn_mota(String npn_mota) {
        this.npn_mota = npn_mota;
    }

    public int getNpn_gia() {
        return npn_gia;
    }

    public void setNpn_gia(int npn_gia) {
        this.npn_gia = npn_gia;
    }
}